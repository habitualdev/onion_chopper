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
detection_name: IEC 60870-5-104
version: 7
description: A SCADA type of protocol, also known as IEC 104. One of the IEC 60870 set of standards which define systems used for telecontrol (supervisory control and data acquisition) in electrical engineering and power system automation applications.
bundle_description: $VAR1 = {
          'IEC 104 Setpoint Command Normalized' => 'An IEC 104 Type ID, C_SE_NA_1. Process information in control direction of Setpoint command, normalized value.',
          'IEC 104 Single Point Info' => 'An IEC 104 Type ID, M_SP_NA_1. Process information in monitor direction of Single point information.',
          'IEC 104 Setpoint Command Short Float' => 'An IEC 104 Type ID, C_SE_NC_1. Process information in control direction of Setpoint command, short floating point value.',
          'IEC 104 Regulating Step Command' => 'An IEC 104 Type ID, C_RC_NA_1. Process information in control direction of Regulating step command.',
          'IEC 104 Step Position Info' => 'An IEC 104 Type ID, M_ST_NA_1. Process information in monitor direction of Step position information.',
          'IEC 104 End of Initialization' => 'An IEC 104 Type ID, ME_EI_NA_1. System information in monitor direction of End of initialization.',
          'IEC 104 Measured Normalized with Long Time' => 'An IEC 104 Type ID, M_ME_TD_1. Process telegrams of Measured value, normalized value with time tag CP56Time2a.',
          'IEC 104 Interrogation Command' => 'An IEC 104 Type ID, C_IC_NA_1. System Information in control direction of General Interrogation command.',
          'IEC 60870-5-104' => 'A SCADA type of protocol, also known as IEC 104. One of the IEC 60870 set of standards which define systems used for telecontrol (supervisory control and data acquisition) in electrical engineering and power system automation applications.',
          'IEC 104 Single Point Info with Long Time' => 'An IEC 104 Type ID, M_SP_TB_1. Process telegrams of Single point information with time tag CP56Time2a.',
          'IEC 104 Double Command' => 'An IEC 104 Type ID, C_DC_NA_1. Process Information in control direction of Double command.',
          'IEC 104 Setpoint Command Scaled' => 'An IEC 104 Type ID, C_SE_NB_1. Process information in control direction of Setpoint command, scaled value.',
          'IEC 104 Single Command' => 'An IEC 104 Type ID, C_SC_NA_1. Process information in control direction of Single command.',
          'IEC 104 Measured Short Float' => 'An IEC 104 Type ID, M_ME_NC_1. Process information in monitor direction of Measured value, short floating point value.',
          'IEC 104 Control Bitstring 32 bits' => 'An IEC 104 Type ID, C_BO_NA_1. Process Information in control direction of Bit string 32 bit.'
        };

--]]

require "DetectorCommon"

local DC = DetectorCommon
local HT = hostServiceTrackerModule
local FT = flowTrackerModule

DetectorPackageInfo = {
    name =  "IEC 60870-5-104",
    proto =  DC.ipproto.tcp,
    server = {
        init =  'DetectorInit',
        validate =  'DetectorValidator',
    }
}

gServiceIdIEC104 = 20191
gServiceName = 'IEC 60870-5-104'

gSfAppIdIEC104 = 3778
gSfAppIDIEC104CSCNA1 = 5020
gSfAppIdIEC104CBONA1 = 5022
gSfAppIdIEC104CDCNA1 = 5023
gSfAppIdIEC104CICNA1 = 5024
gSfAppIdIEC104CRCNA1 = 5025
gSfAppIdIEC104CSENA1 = 5026
gSfAppIdIEC104CSENB1 = 5027
gSfAppIdIEC104CSENC1 = 5028
gSfAppIdIEC104MEINA1 = 5029
gSfAppIdIEC104MMETD1 = 5030
gSfAppIdIEC104MSPTB1 = 5031
gSfAppIdIEC104MSTNA1 = 5032
gSfAppIDIEC104MMENC1 = 5045
gSfAppIDIEC104MSPNA1 = 5046

gPorts = {
    {DC.ipproto.tcp, 2404},
}

gAppRegistry = {
    {gSfAppIdIEC104, 0},
    {gSfAppIdIEC104CBONA1, 0},
    {gSfAppIdIEC104CDCNA1, 0},
    {gSfAppIdIEC104CICNA1, 0},
    {gSfAppIdIEC104CRCNA1, 0},
    {gSfAppIdIEC104CSENA1, 0},
    {gSfAppIdIEC104CSENB1, 0},
    {gSfAppIdIEC104CSENC1, 0},
    {gSfAppIdIEC104MEINA1, 0},
    {gSfAppIdIEC104MMETD1, 0},
    {gSfAppIdIEC104MSPTB1, 0},
    {gSfAppIdIEC104MSTNA1, 0},
    {gSfAppIDIEC104CSCNA1, 0},
    {gSfAppIDIEC104MMENC1, 0},
    {gSfAppIDIEC104MSPNA1, 0},
}


TIDPatterns = {
    {"\051", gSfAppIdIEC104CBONA1}, -- C_BO_NA_1 0x33
    {"\046", gSfAppIdIEC104CDCNA1}, -- C_DC_NA_1 0x2E
    {"\100", gSfAppIdIEC104CICNA1}, -- C_IC_NA_1 0x64
    {"\047", gSfAppIdIEC104CRCNA1}, -- C_RC_NA_1 0x2F
    {"\048", gSfAppIdIEC104CSENA1}, -- C_SE_NA_1 0x30
    {"\049", gSfAppIdIEC104CSENB1}, -- C_SE_NB_1 0x31
    {"\050", gSfAppIdIEC104CSENC1}, -- C_SE_NC_1 0x32
    {"\070", gSfAppIdIEC104MEINA1}, -- M_EI_NA_1 0x46
    {"\034", gSfAppIdIEC104MMETD1}, -- M_ME_TD_1 0x22
    {"\030", gSfAppIdIEC104MSPTB1}, -- M_SP_TB_1 0x1E
    {"\005", gSfAppIdIEC104MSTNA1}, -- M_ST_NA_1 0x05
    {"\045", gSfAppIDIEC104CSCNA1}, -- C_SC_NA_1 0x2D
    {"\001", gSfAppIDIEC104MSPNA1}, -- M_SP_NA_1 0x01
    {"\013", gSfAppIDIEC104MMENC1}, -- M_ME_NC_1 0x0D
}

function serviceInProcess(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)
    if not flowFlag or flowFlag == 0 then
        gDetector:inProcessService()
    end
    DC.printf('%s: Inprocess, packetCount: %d\n', gServiceName, context.packetCount)
    return DC.serviceStatus.inProcess
end

function serviceSuccess(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)
    if not flowFlag or flowFlag == 0 then
        DC.printf('%s: adding service\n', gServiceName)
        gDetector:addService(gServiceIdIEC104, "IEC", "", gSfAppIdIEC104)
    end
    DC.printf('%s: Detected, packetCount: %d\n', gServiceName, context.packetCount)
    return DC.serviceStatus.success
end

function serviceFail(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)
    if not flowFlag or flowFlag == 0 then
        gDetector:failService()
    end
    context.detectorFlow:clearFlowFlag(DC.flowFlags.continue)
    DC.printf('%s: Failed, packetCount: %d\n', gServiceName, context.packetCount)
    return DC.serviceStatus.nomatch
end

function registerPortsPatterns()
    for i,v in ipairs(gPorts) do
        gDetector:addPort(v[1], v[2])
    end

    for i,v in ipairs(gAppRegistry) do
        pcall(function () gDetector:registerAppId(v[1],v[2]) end)
    end
end

function DetectorInit(detectorInstance)
    gDetector = detectorInstance
    DC.printf('%s: DetectorInit()\n',gServiceName)
    gDetector:init(gServiceName, 'DetectorValidator', 'DetectorFini')
    registerPortsPatterns()
    return gDetector
end

local function checkStart(index)
    start_ptn = "\104" -- 0x68
    if gDetector:memcmp(start_ptn, #start_ptn, index) == 0 then
        return 1
    else
        return nil
    end
end

local function checkTID(index)
    for i = 1, #TIDPatterns do
        if gDetector:memcmp(TIDPatterns[i][1], #TIDPatterns[i][1], index) == 0 then
            return TIDPatterns[i][2]
        end
    end
    return nil
end

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

    if size == 0 then
        return serviceInProcess(context)
    end

    DC.printf ('%s:DetectorValidator(): packetCount %d, dir %d, size %d\n', gServiceName, context.packetCount, dir, size)

    found = 0
    report_payload_id = 0

    if size >= 6 then
        -- there can be more than one ASDU per packet, but for now we will assume there is one
        start_index = 0
        if checkStart(start_index) and (srcPort == 2404 or dstPort == 2404) then
            tid_index = 6
            if found == 0 and size >= tid_index + 1 then
                tid = checkTID(tid_index)
                if tid then
                    found = 1
                    report_payload_id = tid
                end
            end

            if found == 1 then
                DC.printf('%s:Adding payload %d\n',gServiceName, report_payload_id)
                gDetector:service_analyzePayload(report_payload_id)
            end

            -- if we are on port 2404 and we saw the start pattern, we know its iec104
            -- so set the continue flag (to keep looking for messages) and declare success.
            context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
            return serviceSuccess(context)
        end
    end

    return serviceFail(context)

end

--[[Required DetectorFini function
--]]
function DetectorFini()
    --print (gServiceName .. ': DetectorFini()')
end
