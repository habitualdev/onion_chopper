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
detection_name: SSL Group "Bitters"
version: 7
description: Group of SSL Host detectors.
bundle_description: $VAR1 = {
          'Sophos Live Protection' => 'Anti-Malware software.',
          'Samsung Push Notification' => 'Pushes updates and services for Samsung services.',
          'BesTV' => 'Shangai Media Group television station, pioneer in China\'s IPTV and Internet TV.',
          'OpenDNS' => 'DNS service for reliability and security for internet surfers.',
          'TED' => 'Conference and Talk show to share ideas.',
          'blinkx' => 'Video search engine.',
          'Arizona Public Media' => 'Web portal by University of Arizona to connect people.',
          'RealNetworks' => 'Websites for RealNetworks, the streaming media company.',
          'Alibaba' => 'International trade site.',
          'Leap Motion sites' => 'Sites related to computer peripheral that uses hand movements to direct a pointer.',
          'Drupal' => 'Open source to content management service.',
          'Nexon' => 'Online video games.',
          'Sky.com' => 'Web portal for news.',
          'iBooks' => 'Mobile app for download and read e-books.',
          'EA Games' => 'Web portal for Electronics Arts, a video games distributor.',
          'PointRoll' => 'Advertising company.',
          'Apple Mail' => 'Apple email client.',
          'Garmin' => 'Offcial website for Garmin, GPS manufacturer.',
          'TomTom' => 'Gadget which provides traffic related details.',
          'Airspace' => 'LeapMotion app store.',
          'Dropcam' => 'Cloud-based remote Wifi video with voice chat from either side.',
          'Mixpanel' => 'Advertisement site.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "ssl_host_group_bitters",
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

--serviceId, clientId, ClientType, PayloadId, PayloadType, hostPattern, pathPattern, schemePattern, queryPattern
gSSLHostPatternList = {

    -- iBook
    { 1, 2724, 'bookkeeper.itunes.apple.com' },
    -- Drupal 
    { 0, 2698, 'drupal.org' },
    -- Sky.com
    { 0, 2699, 'sky.com' },
    -- Arizona Public Media
    { 0, 2700, 'azpm.org' },
    -- EA Games
    { 0, 2701, 'ea.com' },
    -- Copy
    --{ 0, 2702, 'copy.com' },
    -- TomTom
    { 0, 2703, 'tomtom.com' },
    -- OpenDNS
    { 0, 2704, 'opendns.com' },
    -- TED
    { 0, 1403, 'app-api.ted.com' },
    { 0, 1403, 'ted.com' },
    -- Mixpanel
    { 0, 2593, 'api.mixpanel.com' },
    { 0, 2593, 'mixpanel.com' },
    -- Leap Motion
    { 0, 2717, 'leapmotion.com' },
    { 0, 2717, 'leapmotion-warehouse-production.s3.amazonaws.com' },
    -- AirSpace
    { 0, 2736, 'warehouse.leapmotion.com' },
    { 0, 2736, 'airspace.leapmotion.com' },
    -- Apple Mail
    { 0, 550, 'mail.me.com' },    
    -- RealNetworks
    { 0, 2726, 'real.com' },
    -- Garmin
    { 0, 2729, 'garmin.com' },
    { 0, 2729, 'garmincdn.com' },
    { 0, 2729, 'garminasus.com' },
    -- Ink File Picker
    -- { 0, 2730, 'inkfilepicker.com' },
    -- { 0, 2730, 'filepicker.io' },
    -- MuchShare
    -- { 0, 2731, 'muchshare.net' },
    -- Nexon 
    { 0, 2732, 'nexon.net' },
    -- PointRoll
    { 0, 2733, 'pointroll.com' },
    -- Samsung Push Notification
    { 1, 2734, 'samsungosp.com' },
    -- Alibaba
    { 0, 2386, 'alipay.com' },
    { 0, 2386, 'alipayobjects.com' },
    -- blinkx
    { 0, 2728, 'blinkx.com' },
    -- Sophos Live Protection
    { 0, 2707, 'sophos.com' },
    { 0, 2707, 'sophosupd.com' },
    -- BesTV
    { 0, 2737, 'bestv.com.cn' },
    -- Dropcam
    { 0, 2739, 'dropcam.com' },
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

