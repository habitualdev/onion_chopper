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
detection_name: SSL Group "Queen"
version: 23
description: Group of SSL Host detectors.
bundle_description: $VAR1 = {
          'TextNow' => 'Instant text and voice services.',
          'Fidelity' => 'Mutual fund and financial services company.',
          'Geico' => 'Insurance company.',
          'PNC Bank' => 'Banking and Financial services.',
          'OpenSUSE' => 'Official website for OpenSUSE, Linux based OS.',
          'StudentUniverse' => 'Travel booking and price comparison site for students.',
          'lynda.com' => 'Online education site focusing on aspects of web design.',
          'Windows Live SkyDrive' => 'Cloud based file hosting service.',
          'Game Center' => 'Social gaming app for iOS.',
          'Audible.com' => 'Digital audio version for books, magazines, information and other entertainments.',
          'Bing Maps' => 'Microsoft online mapping and directions service.',
          'Allstate' => 'Insurance company.',
          'Zendesk' => 'Customer support web application.',
          'American Airlines' => 'Airline services and travel planner.',
          'The Huffington Post' => 'Online news website.',
          'Nvidia' => 'Video chipset manufacturer.',
          'DSW' => 'Designer Shoe Warehouse - branded footwear.',
          'Box' => 'File storage and transfer site.',
          'Woopra' => 'Real time customer service and solutions.',
          'Wimbledon' => 'Tennis related website.',
          'Yahoo! Calendar' => 'Yahoo! online calendar app.',
          'Vine' => 'Mobile App for sharing photos and videos clips.',
          'Nuance' => 'Airline services and travel planner.',
          'Progressive' => 'Insurance company.',
          'MLive' => 'News local to the American state of Michigan.',
          'BoldChat' => 'Live Chat software for website.',
          'Eventbrite' => 'Event organization and invite site.',
          'GoBank' => 'A bank that focuses on mobile banking.',
          'TwitchTV' => 'Justin.tv gaming specific livestreaming platform.',
          'State Farm' => 'Insurance company.',
          'Bitbucket' => 'Source code hosting site.',
          'United Airlines' => 'Online Flight reservation from United Airlines.',
          'J.P. Morgan' => 'Financial services arm of J.P. Morgan Chase & Co.',
          'Jetsetz' => 'Travel booking and price comparison site.',
          'Verizon Wireless' => 'Telecom and Internet provider.',
          'Netflix' => 'Rental and on-demand internet television and movie streaming website.',
          'iTunes U' => 'Access to courses from the leading universities.',
          'Bitcoin Forum' => 'Forums for discussing BitCoin mining and exchange.',
          'Adobe Software' => 'Adobe software and updates.',
          'FedEx' => 'Courier delivery services.',
          'Yammer' => 'Enterprise social networking site.',
          'FriendFinder' => 'Online friend finder and dating site.',
          'Red Hat' => 'Open-source software products.',
          'Liberty Mutual' => 'Insurance company.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "ssl_host_group_reo",
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

--serviceId, clientId, ClientType, PayloadId, PayloadType, hostPattern, pathPattern, schemePattern, queryPattern
gSSLHostPatternList = {

    -- OpenSuse
    { 0, 2056, 'opensuse.org' },
    -- DSW 
    { 0, 2059, 'dsw.tt.omtrdc.net' },
    { 0, 2059, 'dsw.com' },
    -- BoldChat
    { 0, 2067, 'boldchat.com' },
    -- Woopra 
    { 0, 2069, 'woopra.com' },
    -- iTunes U
    { 1, 2073, 'itunesu.itunes.apple.com' },
    -- Bitcoin Forum
    { 0, 2085, 'bitcointalk.org' },
    -- lynda.com
    { 0, 2086, 'lynda.com' },
    -- Game Center
    { 1, 2092, 'service.gc.apple.com' },
    { 0, 2092, 'gc.apple.com' },
    -- FriendFinder
    { 0, 2093, 'friendfinder.com' },
    -- Audible.com
    { 0, 2094, 'audible.com' },
    { 0, 2094, 'audible.112.2o7.net' },
    { 0, 2094, 'audible.tt.omtrdc.net' },
    -- Bing Maps
    { 0, 1197, 'virtualearth.net' },
    -- Windows Live Skydrive
    { 0, 911, 'skyapi.live.net' },
    { 0, 911, 'skydrivesync,policies.live.net' },
    { 0, 911, 'storage.live.com' },
    { 0, 911, 'storage.msn.com' },
    { 0, 911, 'live.filestore.com' },
    -- Box
    { 0, 1326, 'boxcloud.com' },
    { 0, 1326, 'box.com' },
    { 0, 1326, 'box.net' },
    { 0, 1326, 'box.org' },
    { 0, 1326, 'boxuniversity.litmos.com' },
    { 0, 1326, 'boxcdn.net' },
    { 0, 1326, 'boxrelay.com' },
    -- Eventbrite
    { 0, 2139, 'eventbrite.com' },
    -- Fidelity
    { 0, 636, 'fidelity.com' },
    -- J.P. Morgan
    { 0, 2140, 'jpmorgan.com' },
    { 0, 2140, 'jpmm.com' },
    -- GoBank
    { 0, 2141, 'gobank.com' },
    -- Verizon Wireless
    { 0, 1388, 'verizonwireless.com' },
    { 0, 1388, 'myvzw.com' },
    { 0, 1388, 'vzw.com' },
    -- pROGRESSIVE, INC
    { 0, 2152, 'onlineservice3.progrssive.com' },
    { 0, 2152, 'www.progressive.com' },
    -- State Farm
    { 0, 2153, 'online2.statefarm.com' },
    { 0, 2153, 'www.statefarm.com' },
    -- Allstate
    { 0, 2154, 'allstate.com' },
    { 0, 2154, 'allstate.reviewability.com' },
    -- geico
    { 0, 2155, 'service.geico.com' },
    { 0, 2155, 'www.geico.com' },
    { 0, 2155, 'geico.com' },
    -- Liberty Mutual
    { 0, 2156, 'online.libertymutual.com' },
    -- TwitchTV
    { 0, 1051, 'twitch.tv' },
    -- PNC Bank
    { 0, 2172, 'pnc.com' },
    { 0, 2172, 'pncmc.com' },
    { 0, 2172, 'pncactivepay.com' },
    -- Red Hat
    { 0, 2173, 'redhat.com' },
    -- StudentUniverse
    { 0, 2161, 'studentuniverse.com' },
    -- StudentUniverse
    { 0, 2160, 'jetsetz.com' },
    -- United Airlines
    { 0, 2174, 'united.com' },
    -- Nvidia
    { 0, 2150, 'nvidia.com' },
    -- Nvidia
    { 0, 2128, 'zendesk.com' },
    -- Adobe Software
    { 0, 541, 'macromedia.com' },
    -- Netflix 
    { 0, 756, 'nflximg.net' },
    -- TextNow 
    { 1, 2176, 'textnow.me' },
    { 0, 2176, 'textnow.com' },
    -- FedEx 
    { 0, 2177, 'fedex.com' },
    { 0, 2177, 'fedex.tt.omtrdc.net' },
    -- American Airlines
    { 0, 2178, 'aa.com' },
    { 0, 2178, 'aavacations.com' },
    -- Huffingtonpost 
    { 0, 1370, 'huffingtonpost.com' },
    { 0, 1370, 'huffpost.com' },
    -- Nuance
    { 0, 2179, 'nuance.com' },
    { 0, 2179, 'nuan.netmng.com' },
    -- Wimbledon
    { 0, 2181, 'shop.wimbledon.com' },
    -- MLive
    { 0, 2182, 'mlive.com' },
    -- Vine
    { 0, 1700, 'vine.co' },
    -- Bitbucket
    { 0, 2185, 'bitbucket.org' },
    -- Yahoo! Mail
    { 0, 946, 'mail.yahoo.com' },
    -- Yahoo!
    { 0, 524, 'yahooapis.com' },
    -- Yahoo! Calednar
    { 0, 2196, 'caldav.calendar.yahoo.com' },
    { 0, 2196, 'calendar.yahoo.com' },
    -- Yammer
    { 0, 2198, 'yammer.com' },
    { 0, 2198, 'assets-yammer.com' },
    { 0, 2198, 'yammerusercontent.com' },

}

function DetectorInit(detectorInstance)

    gDetector = detectorInstance;

    if gDetector.addSSLCertPattern then
        for i,v in ipairs(gSSLHostPatternList) do
            gDetector:addSSLCertPattern(v[1],v[2],v[3]);
        end
    end
    return gDetector;
end

function DetectorClean()
end

