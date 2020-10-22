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
detection_name: Payload Group "Femmes"
version: 13
description: Group of payload detectors.
bundle_description: $VAR1 = {
          'Zynga Poker' => 'Poker game available on social network sites and mobile devices.',
          'MetaCrawler' => 'Metasearch engine that combines results from various popular search engines.',
          'MSDN' => 'Microsoft Developer Network.',
          'Docstor' => 'Electronic document storage site.',
          '9p.com' => 'Games related internet site.',
          'Pinterest' => 'Social photo sharing website.',
          'The Pirate Bay' => 'BitTorrent index and search engine.',
          'Yahoo! Toolbar' => 'Yahoo!\'s browser toolbar.',
          'Google Product Search' => 'Google e-commerce site.',
          'CafeMom' => 'Social networking site targeted towards mothers.',
          'Technorati' => 'Search engine for blogs.',
          'ICQ2Go' => 'Web-based ICQ.',
          'Torrentz' => 'BitTorrent metasearch engine.',
          'TypePad' => 'Blogging service website.',
          'Mininova' => 'BitTorrent downloads website.',
          'PayPal' => 'E-commerce website for handling online transactions.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "payload_group_femmes",
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

--serviceId, clientId, ClientType, PayloadId, PayloadType, hostPattern, pathPattern, schemePattern, queryPattern
gUrlPatternList = {
    --Yahoo Toolbar
    { 0, 0, 0, 20, 7, "toolbar.yahoo.com", "/", "http:", "", 947},
    --9p.com
    { 0, 0, 0, 421, 34, "9p.com", "/", "http:", "", 920},
    --Google product search
    { 0, 0, 0, 151, 15, "google.com", "/prdhp", "http:", "", 664},
    { 0, 0, 0, 151, 15, "google,com", "/products", "http:", "", 664},
    { 0, 0, 0, 151, 15, "google.com", "/productsearch", "http:", "", 664},
    { 0, 0, 0, 151, 15, "google.com", "/shopping", "http:", "", 664},
    --Zynga poker
    { 0, 0, 0, 422, 20, "poker.zynga.com", "/", "http:", "", 910},
    --ICQ2GO
    { 0, 0, 0, 42, 10, "api.oscar.aol.com", "/", "http:", "", 222},
    --MSDN
    { 0, 0, 0, 423, 15, "msdn.microsoft.com", "/", "http:", "", 304},
    --Docstoc
--    { 0, 0, 0, 424, 9, "docstoccdn.com", "/", "http:", "", 940},
--    { 0, 0, 0, 424, 9, "docstoc.com", "/", "http:", "", 940},
    --Docstor
    { 0, 0, 0, 425, 9, "docstor.com", "/", "http:", "", 898},
	--BTJunkie
    -- NOTE: this site is defunct. See bug 100084
	--{ 0, 0, 0, 426, 9, "btjunkie.com", "/", "http:", "", 1128},
    --CafeMom
    { 0, 0, 0, 427, 5, "cafemom.com", "/", "http:", "", 1129},
    --Demonoid (Deprecated)
    --{ 0, 0, 0, 428, 9, "demonoid.me", "/", "http:", "", 1130},
    --isoHunt
    -- { 0, 0, 0, 429, 9, "isohunt.com", "/", "http:", "", 1131},
    --MetaCrawler
    { 0, 0, 0, 430, 22, "metacrawler.com", "/", "http:", "", 1132},
    --Mininova
    { 0, 0, 0, 431, 9, "mininova.org", "/", "http:", "", 1133},
    --PayPal
    { 0, 0, 0, 432, 15, "paypal.com", "/", "http:", "", 1134},
    --Pinterest
    { 0, 0, 0, 433, 5, "pinterest.com", "/", "http:", "", 1135},
    { 0, 0, 0, 433, 5, "pinimg.com", "/", "http:", "", 1135},
    --The Pirate Bay
    { 0, 0, 0, 434, 9, "thepiratebay.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.se", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.sx", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxybay.eu", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.torrentproxy.nl", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tbp.proxybay.us", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "www.piratehome.tk", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.alexadams.biz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpbproxy.me", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "ipiratebay.info", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "zebragravy.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thelitebay.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "storrents.sx", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxybay.me", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpbunion.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.par-anoia.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateshit.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.uk.to", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.spinhost.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.genyaa.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxytpb.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pb.proxybay.ca", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.herokuapp.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thedarkbay.psb.cu.cc", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxy.rickmartensen.nl", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.psb.cu.cc", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "chuta.org/tpb", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "baypass.net78.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "quluxingba.info", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateshit.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxytank.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.disposable.name", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebayunion.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "welovetpb.co.uk", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.k0nsl.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "51tsj.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "bay.alanaktion.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "malaysiabay.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "lanunbay.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxybay.nl", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.thepiratesea.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateparkie.net23.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thehydra.ru", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.madfedora.site40.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirate-proxy.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "www.bayproxy.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "bich.in", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.trafficmax.nl", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.fail", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.fyi", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.press", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay2.se", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay2.tk", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay2.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay3.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay9.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebayorg.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "uj3wazyk5u4hnvtk.onion.ly", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.bz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pietpiraat.xyz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.gdn", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.cam", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxybay.xyz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxybay.club", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.cool", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "theproxy.pw", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thehiddenbay.cc", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.run", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "fastpiratebay.co.uk", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateportal.xyz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateaccess.xyz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "ukpiratebay.site", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thebay.tv", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.unblockall", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.party", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.site", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.unlockproj.club", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.click", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.rocks", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tbp-mirror.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.live", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thehiddenbay.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.party", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.live", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.zone", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebayblocked.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "ikwilthepiratebay.org", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.online", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.vin", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.icu", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.life", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.icu", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepirate.host", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepirate.live", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.cool", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.tech", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepirate.fun", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxybay.live", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxylist.info", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.wtf", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebays.fi", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "offlinebay.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "proxybay.bz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpbproxy.online", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.vip", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay-org.prox.icu", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "theproxybay.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.life", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebae.co.uk", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.myunblock.com", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "pirateproxy.rocks", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "cruzing.xyz", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.unblockthe.net", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "bayfortaiwan.online", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay.berhampore-gateway.ml", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.website", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thepiratebay2.unblocked.ms", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "tpb.tw", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratebay.to", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "thehiddenbay.info", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "bayunblocked.eu", "/", "http:", "", 1136},
    { 0, 0, 0, 434, 9, "piratenbucht.eu", "/", "http:", "", 1136},
    --Technorati
    { 0, 0, 0, 435, 22, "technorati.com", "/", "http:", "", 1137},
    --Torrentz
    { 0, 0, 0, 436, 9, "torrentz.com", "/", "http:", "", 1138},
    { 0, 0, 0, 436, 9, "torrentz.eu", "/", "http:", "", 1138},
    { 0, 0, 0, 436, 9, "torrentz2.eu", "/", "http:", "", 1138},
    --TypePad
    { 0, 0, 0, 437, 5, "typepad.com", "/", "http:", "", 1139};
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

