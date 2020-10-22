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
detection_name: TPKT
version: 15
description: A protocol used to tunnel OSI protocols over TCP/IP.
bundle_description: $VAR1 = {
          'Q.931' => 'ISO standard signalling protocol.',
          'TPKT' => 'A protocol used to tunnel OSI protocols over TCP/IP.',
          'ISO MMS' => 'Manufacturer Messaging Specification, the ISO session-layer protocol.',
          'ITU H.323' => 'Packet-based mulimedia conferencing protocol.',
          'COTP' => 'Connection-oriented ISO protocol.',
          'MMS getNameList' => 'An MMS command of Get Name List request.',
          'RDP' => 'Remote Desktop Protocol provides users with a graphical interface to another computer.'
        };

--]]

require "DetectorCommon"

local DC = DetectorCommon
local HT = hostServiceTrackerModule
local FT = flowTrackerModule

DetectorPackageInfo = {
    name =  "TPKT",
    proto =  DC.ipproto.tcp,
    server = {
        init =  'DetectorInit',
        validate =  'DetectorValidator',
    }
}

apps = {
    tpkt = {
        app_id = 2311,
        svc_id = 20162,
    },
    cotp = {
        app_id = 2312,
        svc_id = 20164,
    },
    isomms = {
        app_id = 2313,
        svc_id = 20165,
    },
    q931 = {
        app_id = 2314,
        svc_id = 20166,
    },
    h225 = {
        app_id = 193,
        svc_id = 20210,
    },
    h245 = {
        app_id = 194,
        svc_id = 20211,
    },
    rdp = {
        app_id = 803,
        svc_id = 20029,
    },
    rtp = {
        app_id = 813,
        svc_id = 20032,
    },
    h323 = {
        app_id = 688,
        -- no svc_id because this is a web app
    },
}

-- ITU protocol identifiers - because the identifier for h225 is at a variable index,
-- we will use a regexp for it instead of adding it to the gPatterns table.
h225_identifier = "\000\008\145\074\000\004"
h245_identifier = "\000\008\129\117\000\005"

gPatterns = {
    tpkt = { "\003\000", 0, apps.tpkt.app_id},
    q931 = { "\008\002", 4, apps.tpkt.app_id},
    h245 = { h245_identifier, 8, apps.tpkt.app_id},
    open_logical_channel_ack = { "\034\192", 4, apps.tpkt.app_id},
}

gFastPatterns = {
    {DC.ipproto.tcp, gPatterns.tpkt},
    {DC.ipproto.tcp, gPatterns.q931},
}

gPorts = {
    {DC.ipproto.tcp, 102},
    {DC.ipproto.tcp, 3389},
    {DC.ipproto.tcp, 1718},
    {DC.ipproto.udp, 1718},
    {DC.ipproto.tcp, 1719},
    {DC.ipproto.udp, 1719},
    {DC.ipproto.tcp, 1720},
    {DC.ipproto.udp, 1720},
}

gAppRegistry = {
    {apps.tpkt.app_id, 0},
    {apps.cotp.app_id, 0},
    {apps.q931.app_id, 0},
    {apps.isomms.app_id, 0},
    {apps.h225.app_id, 0},
    {apps.h245.app_id, 0},
}

--[[ ISO MMS Section
    Add your new appid to the list here.
    Add the command and message id to the MMSMsgs table below.
--]]

app_id_MMSgetNameList = 5021

MMSmsgs = {
    { "\160", "\161", app_id_MMSgetNameList },
}

function serviceInProcess(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)
    if not flowFlag or flowFlag == 0 then
        gDetector:inProcessService()
    end
    DC.printf('%s: Inprocess, packetCount: %d\n', DetectorPackageInfo.name, context.packetCount)
    return DC.serviceStatus.inProcess
end

function serviceSuccess(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)
    DC.printf('%s: service %d, appId %d\n', DetectorPackageInfo.name, context.service_id,
        context.appId)
    if context.payload_id then
        DC.printf('%s: payload_id %d\n', DetectorPackageInfo.name, context.payload_id)
        gDetector:service_analyzePayload(context.payload_id)
    end
    if not flowFlag or flowFlag == 0 then
        gDetector:addService(context.service_id, "", "", context.appId)
    end
    DC.printf('%s: Detected, packetCount: %d\n', DetectorPackageInfo.name, context.packetCount)
    return DC.serviceStatus.success
end

function serviceFail(context)
    local flowFlag = context.detectorFlow:getFlowFlag(DC.flowFlags.serviceDetected)
    if not flowFlag or flowFlag == 0 then
        gDetector:failService()
    end
    context.detectorFlow:clearFlowFlag(DC.flowFlags.continue)
    DC.printf('%s: Failed, packetCount: %d\n', DetectorPackageInfo.name, context.packetCount)
    return DC.serviceStatus.nomatch
end

function registerPortsPatterns()
    for i,v in ipairs(gPorts) do
        gDetector:addPort(v[1], v[2])
    end

    for i,v in ipairs(gFastPatterns) do
        if gDetector:registerPattern(v[1], v[2][1], #v[2][1], v[2][2], v[2][3]) ~= 0 then
            DC.printf ('%s: register pattern failed for %s\n', DetectorPackageInfo.name, v[2][1])
        else
            DC.printf ('%s: register pattern successful for %s\n', DetectorPackageInfo.name,
                v[2][1])
        end
    end

    for i,v in ipairs(gAppRegistry) do
        pcall(function () gDetector:registerAppId(v[1],v[2]) end)
    end
end

function DetectorInit(detectorInstance)
    gDetector = detectorInstance
    DC.printf('%s: DetectorInit()\n',DetectorPackageInfo.name)
    gDetector:init(DetectorPackageInfo.name, 'DetectorValidator', 'DetectorFini')
    registerPortsPatterns()
    return gDetector
end

local function scanForCommand(command_index, servreq_index)
    DC.printf('Scanning for command at command index %d, servreq index %d\n', command_index,
        servreq_index)
    for i = 1, #MMSmsgs do
        if gDetector:memcmp(MMSmsgs[i][1], #MMSmsgs[i][1], command_index) == 0 and
           gDetector:memcmp(MMSmsgs[i][2], #MMSmsgs[i][2], servreq_index) == 0 then
            return MMSmsgs[i][3]
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
    local rft = FT.getFlowTracker(flowKey)

    DC.printf('%s:DetectorValidator(): packetCount %d, dir %d, size %d\n', DetectorPackageInfo.name,
        context.packetCount, dir, size)

    if not rft then
        rft = FT.addFlowTracker(flowKey, {next_packet = 0, get_client = 0, h245 = 0, 
            src_ip = 0, src_port = 0})
    end

    if size == 0 or (dir == 0 and rft.get_client == 0) then
        return serviceInProcess(context)
    end

    if size >= 6 and DC.checkPattern(gDetector, gPatterns.tpkt) then
        DC.printf('TPKT header\n')

        -- ITU H.245 section
        if rft.h245 == 1 then
            DC.printf('H.245 continue\n')
            if DC.checkPattern(gDetector, gPatterns.open_logical_channel_ack) then
                matched, src_ip_raw, src_port_raw = gDetector:getPcreGroups("(....)(..)",14)
                if matched and gDetector.createFutureFlow then
                    rft.src_ip = DC.reverseBinaryStringToNumber(src_ip_raw, 4)
                    rft.src_port = DC.binaryStringToNumber(src_port_raw, 2)
                    rft.h245 = 2
                    DC.printf('H.245 first open logical channel packet\n')
                end
            end
            context.service_id = apps.h245.svc_id                                                   
            context.appId = apps.h245.app_id
            context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
            return serviceSuccess(context)
        elseif rft.h245 == 2 then
            DC.printf('H.245 looking for second open logical channel packet\n')
            if DC.checkPattern(gDetector, gPatterns.open_logical_channel_ack) then
                matched, dst_ip_raw, dst_port_raw = gDetector:getPcreGroups("(....)(..)",14)
                if matched and gDetector.createFutureFlow then
                    dst_ip = DC.reverseBinaryStringToNumber(dst_ip_raw, 4)
                    dst_port = DC.binaryStringToNumber(dst_port_raw, 2)
                    src_ip_str = DC.intToIPv4(rft.src_ip, 1)
                    dst_ip_str = DC.intToIPv4(dst_ip, 1)
                    DC.printf('creating RTP future flow %s:%d - %s:%d\n', src_ip_str, rft.src_port,
                        dst_ip_str, dst_port)
                    gDetector:createFutureFlow(src_ip_str, rft.src_port, dst_ip_str, dst_port, 17,
                        apps.h245.app_id, apps.h245.app_id, apps.rtp.app_id, apps.rtp.app_id)
                    -- reset to 1 to keep watch for new logical connections
                    rft.h245 = 1
                    rft.src_ip = nil
                    rft.src_port = nil
                end
            end
            -- One H.245 session can open multiple RTP streams, so we will keep continuing.
            context.service_id = apps.h245.svc_id                                                   
            context.appId = apps.h245.app_id
            context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
            return serviceSuccess(context)
        elseif DC.checkPattern(gDetector, gPatterns.h245) then
            DC.printf('H.245 detected\n')
            rft.h245 = 1
            rft.get_client = 1
            context.service_id = apps.h245.svc_id
            context.appId = apps.h245.app_id
            context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
            return serviceSuccess(context)
        end

        -- Other ITU protocols
        matched, fifth_byte_raw, sixth_byte_raw = gDetector:getPcreGroups("(.)(.)",4)
        fifth_byte = DC.binaryStringToNumber(fifth_byte_raw, 1)
        sixth_byte = DC.binaryStringToNumber(sixth_byte_raw, 1)
        if fifth_byte == 8 and sixth_byte == 2 then
            DC.printf('Q.931 header\n')
            if gDetector:getPcreGroups(h225_identifier) then
                DC.printf('H.225 detected (and we assume H.323 is also detected)\n')
                context.service_id = apps.h225.svc_id
                context.appId = apps.h225.app_id
                context.payload_id = apps.h323.app_id
            else
                DC.printf('no other protocol layer identified, it\'s just Q.931\n')
                context.service_id = apps.q931.svc_id
                context.appId = apps.q931.app_id
            end
            return serviceSuccess(context)
        end

        -- ISO section
        if rft.next_packet == 0 and sixth_byte == 208 then
            DC.printf('COTP packet\n')
            rft.next_packet = 1
            return serviceInProcess(context)
        elseif rft.next_packet == 1 then
            if sixth_byte == 240 and gDetector:getPcreGroups('\202\034\002\003') then
                DC.printf('got MMS!\n')
                context.service_id = apps.isomms.svc_id
                context.appId = apps.isomms.app_id
                rft.next_packet = 2
                rft.get_client = 1
                context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
            elseif sixth_byte == 240 and srcPort == 3398 then
                DC.printf('this is RDP\n')
                context.service_id = apps.rdp.svc_id
                context.appId = apps.rdp.app_id
            else
                DC.printf('All we know is this is COTP frame\n')
                context.service_id = apps.cotp.svc_id
                context.appId = apps.cotp.app_id
            end
            return serviceSuccess(context)
        elseif rft.next_packet == 2 then
            DC.printf('analyzing for MMS payload\n')
            if sixth_byte == 240 then
                --[[ to find the command_index, and service_request_index,
                  we need to know the COTP header length (value of byte five, +1)
                  and the invokeId length. Packet structure appears to be
                  TPKT header -> 4 bytes
                  COTP header -> noted in fifth byte, plus one
                  ISO 8327-1 OSI Session Layer Headers -> not sure about these,
                    but there appear to be two of them, each of length 0, +2
                    in our confirmedRequestPDUs
                  ISO 8823 OSI Presentation Layer header -> 9 bytes
                  we also need to figure the index of the presentation-context-identifier
                    (pci is the seventh byte of the ISO 8823 header)
                --]]

                -- check that this is a 'confirmedRequestPDU' - for now
                -- this is all we are looking for. We may or may not
                -- have to open our search to other PDU types later.
                -- check that the first and third bytes of the MMS PDU are both a0
                type_index = fifth_byte + 16
                if size < type_index + 2 then
                    -- bad packet
                    return serviceFail(context)
                end
                type_byte_one_raw = gDetector:getPcreGroups("(.)", type_index)
                type_byte_three_raw = gDetector:getPcreGroups("(.)", type_index + 2)
                type_byte_one = DC.binaryStringToNumber(type_byte_one_raw, 1)
                type_byte_three = DC.binaryStringToNumber(type_byte_three_raw, 1)
                if type_byte_one ~= 160 or type_byte_three ~= 160 then
                    context.service_id = apps.isomms.svc_id                                             
                    context.appId = apps.isomms.app_id  
                    context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
                    return serviceSuccess(context)
                end

                -- compute pci_index and check that the value of that byte is 3
                --   for mms-abstract-syntax-version1
                pci_index = fifth_byte + 15
                if size < pci_index then
                    -- bad packet
                    return serviceFail(context)
                end
                pci_byte_raw = gDetector:getPcreGroups("(.)", pci_index)
                pci_byte = DC.binaryStringToNumber(pci_byte_raw, 1)
                if pci_byte ~= 3 then
                    context.service_id = apps.isomms.svc_id                                             
                    context.appId = apps.isomms.app_id  
                    context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
                    return serviceSuccess(context)
                end

                invokeid_len_index = fifth_byte + 21
                if size < invokeid_len_index then
                    -- bad packet
                    return serviceFail(context)
                end
                invokeid_len_raw = gDetector:getPcreGroups("(.)", invokeid_len_index)
                invokeid_len = DC.binaryStringToNumber(invokeid_len_raw, 1)
                DC.printf('invokeid index is %d, len is %d\n', invokeid_len_index, invokeid_len)
                command_index = fifth_byte + invokeid_len + 24
                service_request_index = command_index + 5
                if size < service_request_index then
                    -- bad packet
                    return serviceFail(context)
                end
                commandId = scanForCommand(command_index, service_request_index)
                if commandId then
                    DC.printf('Adding payload %d\n', commandId)
                    context.payload_id = commandId
                end
                context.service_id = apps.isomms.svc_id
                context.appId = apps.isomms.app_id
                context.detectorFlow:setFlowFlag(DC.flowFlags.continue)
                return serviceSuccess(context)
            end
        end
        DC.printf('All we know is this is TPKT frame\n')
        context.service_id = apps.tpkt.app_id
        context.appId = apps.tpkt.app_id
        return serviceSuccess(context)
    end

    return serviceFail(context)

end

function DetectorFini()
end
