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
version: 9
description: Group of SSL Host detectors.
bundle_description: $VAR1 = {
          'FriendFinder' => 'Online friend finder and dating site.',
          'BoldChat' => 'Live Chat software for website.',
          'Woopra' => 'Real time customer service and solutions.',
          'Windows Live SkyDrive' => 'Cloud based file hosting service.',
          'Game Center' => 'Social gaming app for iOS.',
          'Bitcoin Forum' => 'Forums for discussing BitCoin mining and exchange.',
          'Starbucks' => 'Mobile application for a ubiquitous chain of coffee shops.',
          'Bing Maps' => 'Microsoft online mapping and directions service.',
          'Ooyala' => 'Solution providers for Video analytics.',
          'iTunes U' => 'Access to courses from the leading universities.',
          'OpenSUSE' => 'Official website for OpenSUSE, Linux based OS.',
          'lynda.com' => 'Online education site focusing on aspects of web design.',
          'DSW' => 'Designer Shoe Warehouse - branded footwear.',
          'Microsoft Azure' => 'Cloud computing by Microsoft.',
          'Audible.com' => 'Digital audio version for books, magazines, information and other entertainments.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "ssl_host_group_Queen",
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
    -- Ooyala 
    { 0, 2072, 'ooyala.com' },
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
    -- Microsoft Azure
    { 0, 2111, 'windowsazure.com' },
    { 0, 2111, 'windows.net' },
    { 0, 2111, 'azurecomcdn.net' },
    { 0, 2111, 'azure.microsoft.com' },
    { 0, 2111, 'azure.com' },
    { 0, 2111, 'azure.net' },
    { 0, 2111, 'msecnd.net' },
    { 0, 2111, 'microsoftonline-p.com' },
    { 0, 2111, 'microsoftonline-p.net' },
    { 0, 2111, 'microsoftonlineimages.com' },
    { 0, 2111, 'msocdn.com' },
    { 0, 2111, 'activedirectory.windowsazure.com' },
    { 0, 2111, 'phonefactor.net' },
    { 0, 2111, 'aadrm.com' },
    { 0, 2111, 'azurerms.com' },
    { 0, 2111, 'cloudapp.net' },
    { 0, 2111, 'liverdcxstorage.blob.core.windowsazure.com' },
    { 0, 2111, 'telemetry.remoteapp.windowsazure.com' },
    { 0, 2111, 'www.remoteapp.windowsazure.com' },
    { 0, 2111, 'blob.core.windows.net' },
    { 0, 2111, 'servicebus.windows.net' },
    { 0, 2111, 'adhybridhealth.azure.com' },
    { 0, 2111, 'table.core.windows.net' },
    { 0, 2111, 'policykeyservice.dc.ad.msft.net' },
    { 0, 2111, 'secure.aadcdn.microsoftonline-p.com' },
    { 0, 2111, 'keydelivery.mediaservices.windows.net' },
    { 0, 2111, 'microsoftazuread-sso.com' },
    -- Starbucks
    { 1, 2112, 'starbucks.com' },
    -- Windows Live Skydrive
    { 0, 911, 'skyapi.live.net' },
    { 0, 911, 'skydrivesync,policies.live.net' },
    { 0, 911, 'storage.live.com' },
    { 0, 911, 'storage.msn.com' },
    { 0, 911, 'live.filestore.com' },
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

