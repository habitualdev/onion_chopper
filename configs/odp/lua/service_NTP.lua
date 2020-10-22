--[[
# Copyright 2001-2014 Cisco Systems, Inc. and/or its affiliates. All rights
# reserved.
#
# This file contains proprietary Detector Content created by Cisco Systems,
# Inc. or its affiliates ("Cisco") and is distributed under the GNU General
# Public License, v2 (the "GPL").  This file may also include Detector Content
# contributed by third parties. Third party contributors are identified in the
# "authors" file.  The Detector Content created by Cisco is owned by, and
# remains the property of, Cisco.  Detector Content from third party
# contributors is owned by, and remains the property of, such third parties and
# is distributed under the GPL.  The term "Detector Content" means specifically
# formulated patterns and logic to identify applications based on network
# traffic characteristics, comprised of instructions in source code or object
# code form (including the structure, sequence, organization, and syntax
# thereof), and all documentation related thereto that have been officially
# approved by Cisco.  Modifications are considered part of the Detector
# Content.
--]]
--[[
detection_name: NTP
version: 1
description: NTP (Network Time Protocol) is used for synchronizing the clocks of computer systems over a network.
--]]

require "DetectorCommon"



local DC = DetectorCommon
local FT = flowTrackerModule

gServiceId = 19
gServiceName = 'NTP'
gDetector = nil

DetectorPackageInfo = {
    name =  "NTP",
    proto =  DC.ipproto.tcp,
    server = {
        init =  'DetectorInit',
        validate =  'DetectorValidator',
    }
}


gSfAppIdNTP = 767


gPorts = {
    {DC.ipproto.udp, 123},
    {DC.ipproto.tcp, 123}
}


gAppRegistry = {
	--AppIdValue          Extracts Info
	---------------------------------------
	{gSfAppIdNTP,		         1}
}

function serviceInProcess(context)

    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)

    if ((not flowFlag) or (flowFlag == 0)) then
        gDetector:inProcessService()
    end

    DC.printf('%s: Inprocess, packetCount: %d\n', gServiceName, context.packetCount);
    return DC.serviceStatus.inProcess
end

function serviceSuccess(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)

    if ((not flowFlag) or (flowFlag == 0)) then
        gDetector:addService(gServiceId, "", "", gSfAppIdNTP)
    end

    DC.printf('%s: Detected, packetCount: %d\n', gServiceName, context.packetCount);
    return DC.serviceStatus.success
end

function serviceFail(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)

    if ((not flowFlag) or (flowFlag == 0)) then
        gDetector:failService()
    end

    context.detectorFlow:clearFlowFlag(DC.flowFlags.continue)
    DC.printf('%s: Failed, packetCount: %d\n', gServiceName, context.packetCount);
    return DC.serviceStatus.nomatch
end

function registerPortsPatterns()

    --register port based detection
    for i,v in ipairs(gPorts) do
        gDetector:addPort(v[1], v[2])
        DC.printf('%s: registering port %d\n',gServiceName,v[2])
    end


	for i,v in ipairs(gAppRegistry) do
		pcall(function () gDetector:registerAppId(v[1],v[2]) end)
	end

end

--[[ Core engine calls DetectorInit() to initialize a detector.
--]]
function DetectorInit( detectorInstance)

    gDetector = detectorInstance
    DC.printf ('%s:DetectorInit()\n', gServiceName);
    gDetector:init(gServiceName, 'DetectorValidator', 'DetectorFini')
    registerPortsPatterns()

    return gDetector
end


--[[Validator function registered in DetectorInit()
--]]
function DetectorValidator()
    local context = {}
    context.detectorFlow = gDetector:getFlow()
    context.packetDataLen = gDetector:getPacketSize()
    context.packetDir = gDetector:getPacketDir()
    context.srcIp = gDetector:getPktSrcAddr()
    context.dstIp = gDetector:getPktDstAddr()
    context.srcPort = gDetector:getPktSrcPort()
    context.dstPort = gDetector:getPktDstPort()
    context.flowKey = context.detectorFlow:getFlowKey()
    context.packetCount = gDetector:getPktCount()
    local size = context.packetDataLen
    local dir = context.packetDir
    local srcPort = context.srcPort
    local dstPort = context.dstPort
    local flowKey = context.flowKey

    DC.printf ('%s:DetectorValidator(): packetCount %d, dir %d, size %d\n', gServiceName,
               context.packetCount, dir, size);
    if (size == 0 or dir == 0) then
        return serviceInProcess(context)
    end

    if (dir == 1 and size >=4 ) 
    then
        matched, raw_flags   = gDetector:getPcreGroups("(.)", 0)
        if(matched) then 
            flags = DC.binaryStringToNumber(raw_flags, 1)
            DC.printf ('%s:DetectorValidator(): FLAGS %d \n', gServiceName,flags )
        end
        matched, raw_stratum = gDetector:getPcreGroups(".(.)", 0)
        if(matched) then 
            stratum = DC.binaryStringToNumber(raw_stratum , 1)
            DC.printf ('%s:DetectorValidator(): STRATUM %d \n', gServiceName,stratum )
        end
        matched, raw_poll = gDetector:getPcreGroups("..(.)", 0)
        if(matched) then 
            poll = DC.binaryStringToNumber(raw_poll , 1)
            DC.printf ('%s:DetectorValidator(): POLL %d \n', gServiceName,poll )
        end
       -- matched, raw_precision = gDetector:getPcreGroups("...(.)", 0)
        
        --if(matched) then 
         --   precision = DC.binaryStringToNumber(raw_precision , 1)
          --  DC.printf ('%s:DetectorValidator(): PERCISION %d \n', gServiceName,precesion )
        --end


        mode = bit.band(flags, 07)
        version = bit.band(flags, 56)
        DC.printf ('%s:DetectorValidator():raw_flags %s flags %d , stratum %d, poll %d, mode %d, version %d\n', gServiceName, raw_flags,flags, stratum, poll, mode, version)
        
        if((mode == 0) or ( mode == 7) or (mode == 3)) then 
            DC.printf ('%s:DetectorValidator(): mode  %d \n', gServiceName,mode )
            return serviceFail(context)
        end
        if((version <0x08) and ( version > 0x20) ) then 
            DC.printf ('%s:DetectorValidator(): version %d \n', gServiceName,version )
            return serviceFail(context)
        end
        if (mode ~= 6 )then
            if (version < 0x18) then
                if(size~=48)then
                    DC.printf ('%s:DetectorValidator(): size %d \n', gServiceName,size    )
                    return serviceFail(context)
                end
            elseif ((size < 48) or (size> 68) ) then 
                    DC.printf ('%s:DetectorValidator(): size %d \n', gServiceName,size    )
                return serviceFail(context)
            end 
            if (stratum > 15 ) then 
                    DC.printf ('%s:DetectorValidator(): stratum %d \n', gServiceName,stratum )
                return serviceFail(context)
            end

            if( poll and ((poll< 4) or (poll>14 ))) then
                    DC.printf ('%s:DetectorValidator(): poll %d \n', gServiceName,poll    )
                return serviceFail(context)
            end
        else
            if (size < 2 )then
                    DC.printf ('%s:DetectorValidator(): size %d \n', gServiceName,size    )
                return serviceFail(context)
            end
            if not (bit.band(stratum, 0x80)) then
                    DC.printf ('%s:DetectorValidator(): stratum %d \n', gServiceName,stratum )
                return serviceFail(context)
            end
            if not (bit.band(stratum, 0x1F)) then
                    DC.printf ('%s:DetectorValidator(): stratum %d \n', gServiceName,stratum )
                return serviceFail(context)
            end

        end
            return serviceSuccess(context)
    end

    return serviceFail(context)
end

--[[Required DetectorFini function
--]]
function DetectorFini()
    --print (gServiceName .. ': DetectorFini()')
end

