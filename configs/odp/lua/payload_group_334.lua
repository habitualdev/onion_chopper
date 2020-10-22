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
detection_name: Payload Group "334"
version: 1
description: Group of payload detectors.
bundle_description: $VAR1 = {
          'Monster VPN' => 'VPN Monster is a Russia-based VPN service provider',
          'Marco Polo' => 'Marco Polo is a Mobile Social Media platform.',
          'Apple News' => 'Apple News is an app the brings news and magazines, all in one place.',
          'Demio' => 'Demio is a webinar platform.',
          'Smartsheet' => 'Smartsheet is a platform for organizational achievement.',
          'Apple TV Plus' => 'Video streaming service from Apple Inc.',
          'Disney Plus' => 'Disney+ is a video on-demand streaming subscription'
        };

--]]

require "DetectorCommon"

local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "payload_group_334",
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

gUrlPatternList = {

    -- Disney Plus
    { 0, 0, 0, 1930, 13, "disney-plus.net", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "disneyplus.com", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "disneyplus.com.ssl.sc.omtrdc.net", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "dssott.com", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "dssott.com.akamaized.net", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "disneyplus.bn5x.net", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "cdn.registerdisney.go.com", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "disney-portal.my.onetrust.com", "/", "http:", "", 4617},
    { 0, 0, 0, 1930, 13, "bamgrid.com", "/", "http:", "", 4617},
    -- Apple TV Plus
    { 0, 0, 0, 1932, 13, "tv.apple.com", "/", "http:", "", 4619},
    -- Apple News
    { 0, 0, 0, 1936, 33, "apple.news", "/", "http:", "", 4623},
    { 0, 0, 0, 1936, 33, "news-events.apple.com", "/", "http:", "", 4623},
    { 0, 0, 0, 1936, 33, "news-edge.apple.com", "/", "http:", "", 4623},
    -- Monster VPN
    { 0, 0, 0, 1931, 46, "monstervpn.tech", "/", "http:", "", 4618},
    -- Demio
    { 0, 0, 0, 1933, 21, "demio.com", "/", "http:", "", 4620},
    { 0, 0, 0, 1933, 21, "event.demio.com", "/", "http:", "", 4620},
    -- Smartsheet
    { 0, 0, 0, 1934, 17, "smartsheet.com.com", "/", "http:", "", 4621},
    { 0, 0, 0, 1934, 17, "app.smartsheet.com", "/", "http:", "", 4621},
    { 0, 0, 0, 1934, 17, "app.10000ft.com", "/", "http:", "", 4621},
    -- Marco polo
    { 0, 0, 0, 1935, 5, "marcopolo.me", "/", "http:", "", 4622},
}



function DetectorInit(detectorInstance)

    gDetector = detectorInstance;

    if gDetector.addAppUrl then
        for i,v in ipairs(gUrlPatternList) do
            gDetector:addAppUrl(v[1],v[2],v[3],v[4],v[5],v[6],v[7],v[8],v[9],v[10]);
        end
    end

    return gDetector;
end

function DetectorClean()
end

