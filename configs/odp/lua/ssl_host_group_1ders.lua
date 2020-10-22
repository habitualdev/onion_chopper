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
detection_name: SSL Group "1ders"
version: 34
description: Group of SSL Host detectors.
bundle_description: $VAR1 = {
          'LinkedIn' => 'Career oriented social networking.',
          'MelOn' => 'Korean music site.',
          'Suresome' => 'Web based encrypted proxy service.',
          'Microsoft Store' => 'Online retailer for Microsoft products.',
          'Quake Live' => 'Online video game by id Software.',
          'Hopster' => 'A couponing site.',
          'Dell' => 'Computer and related technologies retailer.',
          'SiteScout' => 'Company targetting powerful and easy-to-use tech for real-time ads.',
          'Samsung' => 'Electronics retail site.',
          'Rocket Fuel' => 'Advertisement site.',
          'Neustar Information Services' => 'Advertisement site.',
          'Apple Store' => 'Official online retailer of Apple products.',
          'Silverpop' => 'Email marketing service.',
          'Adenin' => 'A web portal.',
          'TowerData' => 'Formerly RapLeaf, an advertisement site.',
          'Sears' => 'Department store retailer.',
          'HP Home & Home Office Store' => 'HP\'s online store for computers and related products.',
          'Kooora.com' => 'Webportal for Sports related news.',
          'Envato' => 'Combined software education and marketplace site.',
          'NetSeer' => 'Advertisement site.',
          'eBay' => 'An online auction and shopping website.',
          'iCloud' => 'Apple cloud storage service.',
          'LogMeIn' => 'Remote access and PC desktop control.',
          'Sogou' => 'Chinese web portal.',
          'LeadBolt' => 'Advertisement site.',
          'Rambler' => 'Russian search engine.',
          'ShowMyPC' => 'Cloud-based remote support and desktop sharing.',
          'Tango' => 'Mobile social networking app that provides voice, chat, and gaming services.',
          'Line2' => 'Mobile VoIP application with support for text messaging.',
          'EQ Ads' => 'Advertisement site.',
          'DomainTools' => 'A domain name registrar.',
          'Lokalisten' => 'German social network site focused on local events.',
          'MyBuys' => 'Advertisement site.',
          'engage BDR' => 'Advertisement site.',
          'Microsoft Ads' => 'Web advertisement services.',
          'Jango' => 'Internet radio and social networking service.',
          'Marca' => 'Primarily Spanish video streaming site.',
          'comScore' => 'Digital business analytics.',
          'Kaixin001' => 'Chinese based social networking service.',
          'SpotXchange' => 'Advertisement site.',
          'TeacherTube' => 'Educational video streaming.',
          'imo.im' => 'Instant messenger service for various instant messaging protocols.',
          'IBM' => 'Website for IBM.',
          'Monetate' => 'Advertisement site.',
          'Imgur' => 'Image hosting website.',
          'Crittercism' => 'Mobile application monitor.',
          'Infonline' => 'Malware-generated online advertisements.',
          'MediaFire' => 'File and image hosting site.',
          'Nugg' => 'Advertisement site.',
          'Scorecard Research' => 'Online marketing research community.',
          'Reddit' => 'Social news link site.',
          'Effective Measure' => 'Advertisement site.',
          'ShareThis' => 'Social advertising widgets.',
          'Open Webmail' => 'Webmail service.',
          'Target' => 'Discount retailer.',
          'SuperNews' => 'A Usenet/newsgroup service provider.',
          'Tagged' => 'Social networking site based in California.',
          'Hushmail' => 'Web mail service providing encrypted and virus scanned e-mail.',
          'MediaMath' => 'Advertising and business analytics.',
          'Pandora' => 'Audio streaming.',
          'HubPages' => 'Social blogging site.',
          'Motley Fool' => 'Financial and Investment community.',
          'Krux' => 'Cloud-based online marketing and monetization service.',
          'Smart AdServer' => 'Advertisement site.',
          'Alipay' => 'Online payment service.',
          'Lotame' => 'Online advertising and marketing research platform.',
          'Doof' => 'Online gaming site.',
          'Netease' => 'Chinese web portal.',
          'Meetup' => 'Social networking website.',
          'NBA' => 'Official website for the National Basketball League, an American sports organization.',
          'Last.fm' => 'A social networking music streaming site.',
          'Naverisk' => 'Cloud-based remote monitoring and management software.',
          'Telly' => 'Video sharing and streaming site.',
          'Brilig' => 'Advertisement site.',
          'RichRelevance' => 'Targeted advertising platform.',
          'Picasa' => 'Google picasa is an image organizer and image viewer for organizing and editing digital photos, plus an integrated photo-sharing website.',
          'Mixpanel' => 'Advertisement site.',
          'TechCrunch' => 'IT related news and research site.',
          'iStock' => 'Online royalty-free stock images.',
          'Luminate' => 'Advertisement site.',
          'iPerceptions' => 'Online marketing analysis provider.',
          'PDBox' => 'Korean file-sharing site.',
          'Resonate Networks' => 'Advertisement site.',
          'MaxPoint Interactive' => 'Advertisement site.',
          'StatCounter' => 'Web traffic analyser.',
          'Online File Folder' => 'Cloud-based file storage.',
          'Mgoon' => 'Korean Entertainment web portal.',
          'Drawbridge' => 'Advertisement site.',
          'contnet' => 'Advertisement site.',
          'Softonic' => 'Software download site.',
          'Optimizely' => 'Advertisement site.',
          'SoundCloud' => 'Music platform for artists to upload and promote their music.',
          'Nexage' => 'Advertisement site.',
          'Squidoo' => 'Social blogging site.',
          'Mercado Livre' => 'Brazil online auction and shopping website.',
          'Photobucket' => 'An image hosting, video hosting, slideshow creation and photo sharing website.',
          'Limelight' => 'Content delivery network.',
          'TeamViewer' => 'Remote desktop control and file transfer software.',
          'Motrixi' => 'Advertisement site.',
          'Improve Digital' => 'European sell side online ad service.',
          'ImageShack' => 'Image hosting website.',
          'Salesforce.com' => 'Enterprise cloud computing company.',
          'Quantcast' => 'Site for buying and selling target audiences.',
          'SHOUTCast Radio' => 'Streaming media software.',
          'Mop.com' => 'Chinese webportal acting as bulletin board for pop culture, games and other entertainments.',
          'MediaV' => 'Advertisement site.',
          'Mozilla' => 'Website for many open source software projects, including the Firefox browser.',
          'StumbleUpon' => 'A web browser plugin that allows users to discover and rate webpages, photos, videos and news articles.',
          'SVN' => 'Managing Subversion servers.',
          'Skimlinks' => 'Advertisement site.',
          'ICQ' => 'Internet chat client.',
          'Delicious' => 'Social bookmarking website for storing, sharing, and finding web bookmarks.',
          'Ado Tube' => 'Video advertising solution.',
          'Nielsen' => 'Global information and measurement company.',
          'Rubicon Project' => 'Online advertising infrastructure company.',
          'OpenX' => 'Closed advertising platform.',
          'Chinaren' => 'Chinese social networking site.',
          'SPC Media' => 'New media production company.',
          'Plaxo' => 'An online address book and social networking service that provides automatic updating of contact information.',
          'Leboncoin' => 'Auction and classified seller website.',
          'SlideShare' => 'A web-based slide show service.',
          'IGN' => 'News/reviews website focused primarily on video games.',
          'Hotspot Shield' => 'Anonymizer and tunnel that encrypts communications.',
          'SLI Systems' => 'Advertisement site.',
          'Adtech' => 'Advertisement site.',
          'Metacafe' => 'Online video entertainment website.',
          'SurveyMonkey' => 'A site for distributing surveys.',
          'DeNA websites' => 'Traffic generated by browsing DeNA Comm website and some other sites that belong to DeNA.',
          'Playdom' => 'A web gaming company that produces facebook games.',
          'LINE' => 'Mobile and Desktop App for Instant Messaging.',
          'Newegg' => 'Computer hardware and software retailer.',
          'SBS' => 'Korean Online TV shows and Movies.',
          'Match.com' => 'Dating website.',
          'Pinger' => 'Allows SMS text messaging via a data connection.',
          'Google Hangouts' => 'Google cross-platform messenger application.',
          'RadiumOne' => 'Advertisement site.',
          'TechInline' => 'Website that offers remote desktop control.',
          'CBS' => 'CBS news website.',
          'IKEA.com' => 'Online storefront for international furniture retailer.',
          'Sourceforge' => 'Site for sharing open source software projects.',
          'Hideman Login' => 'Logging into Hideman internet anonymizer.',
          'LA Times' => 'News site for the west coast newspaper.',
          'NovaBACKUP' => 'NovaStor develops and markets data protection and availability software. NovaBACKUP offers support for multi-OS environments and is capable of handling thousands of servers and petabytes of information.',
          'Polldaddy' => 'Advertisement site.',
          'Six Apart' => 'Advertisement site.',
          'SendSpace' => 'File sharing and hosting.',
          'DepositFiles' => 'International file hosting and sharing service.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "ssl_host_group_1ders",
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

--detectorType(0-> Web, 1->Client),  AppId, SSLPattern
gSSLHostPatternList = {

    -- Alipay
    { 0, 3655, 'alipay.com' },
    -- Crittercism
    { 0, 3656, 'crittercism.com' },
    -- MelOn
    { 0, 3659, 'melon.com' },
    -- Microsoft Store
    { 0, 3670, 'microsoftstore.com' },
    -- OpenCandy
    --{ 0, 3672, 'opencandy.com' },
    -- Last.fm
    { 0, 261, 'last.fm' },
    -- Microsoft Ads
    { 0, 1336, 'adcenter.microsoft.com' },
    { 0, 1336, 'bingads.microsoft.com' },
    -- Hopster
    { 0, 202, 'hopster.com' },
    -- Google Hangouts
    { 0, 2960, 'hangouts.google.com' },
    { 0, 2960, 'mtalk.google.com' },
    -- Hotspot Shield
    { 0, 1140, 'esellerate.net' },
    { 0, 1140, 'hsselite.com' },
    { 0, 1140, 'hsselite.zendesk.com' },
    { 0, 1140, 'hotspotshield.com' },
    { 0, 1140, 'anchorfree.us' },
    { 0, 1140, 'anchorfree.net' },
    { 0, 1140, 'anchorfree.com' },
    { 0, 1140, 'hotspotshield.s3.amazonaws.com' },
    { 0, 1140, 'a433.com' },
    { 0, 1140, 'event.shelljacket.us' },
    -- HP Home & Home Office Store
    { 0, 827, 'shopping.hp.com' },
    { 0, 827, 'store.hp.com' },
    -- HubPages
    { 0, 2485, 'hubpages.com' },
    -- Hushmail
    { 0, 981, 'hushmail.com' },
    -- IBM
    { 0, 1173, 'ibm.com' },
    -- iCloud
    { 0, 1187, 'icloud.com' },
    { 0, 1187, 'me.com' },
    { 0, 1187, 'icloud-content.com' },
    { 0, 1187, 'icloud.cdn-apple.com' }, 
    -- ICQ
    { 0, 679, 'icq.com' },
    -- IGN
    { 0, 680, 'ign.com' },
    -- IKEA.com
    { 0, 2349, 'ikea.com' },
    -- ImageShack
    { 0, 682, 'imageshack.com' },
    { 0, 682, 'imageshack.us' },
    -- Imgur
    { 0, 684, 'imgur.com' },
    -- imo.im
    { 0, 685, 'imo.im' },
    -- Improve Digital
    { 0, 2451, 'improvedigital.com' },
    { 0, 2451, '360yield.com' },
    -- Infonline
    { 0, 2461, 'infonline.de' },
    -- iPerceptions
    { 0, 2455, 'iperceptions.com' },
    -- iStock
    { 0, 2858, 'istockphoto.com' },
    -- Jango
    { 0, 987, 'jango.com' },
    -- Kaixin001
    { 0, 989, 'kaixin001.com' },
    -- Krux
    { 0, 2466, 'krux.com' },
    { 0, 2466, 'kruxdigital.com' },
    -- LA Times
    { 0, 2609, 'latimes.com' },
    -- LeadBolt
    { 0, 2505, 'leadbolt.com' },
    -- Leboncoin
    { 0, 1219, 'leboncoin.fr' },
    -- Limelight
    { 0, 711, 'llnw.com' },
    { 0, 711, 'kiptronic.com' },
    { 0, 711, 'limelight.com' },
    -- LINE
    { 0, 1667, 'line.me' },
    { 1, 1667, 'line.me' },
    { 1, 1667, 'line-apps.com'},
    { 1, 1667, 'line-scdn.net'},
    { 1, 1667, 'line.naver.jp'},
    -- Line2
    { 0, 1149, 'line2.com' },
    -- LinkedIn
    { 0, 713, 'linkedin.com' },
    -- LiveRail
  --  { 0, 2520, 'liverail.com' },
    -- LogMeIn
    { 0, 270, 'logmein.com' },
    { 0, 270, 'logme.in' },
    -- Lokalisten
    { 0, 718, 'lokalisten.de' },
    { 0, 718, 'lokalisten.at' },
    -- Lotame
    { 0, 2465, 'lotame.com' },
    -- Luminate, Inc.
    { 0, 2521, 'luminate.com' },
    -- Mafiawars
--    { 0, 272, 'mafiawars.com' },
--    { 0, 272, 'mafiawars.zynga.com' },
--    { 0, 272, 'apps.facebook.com/inthemafia' },
    -- Marca
    { 0, 2486, 'marca.com' },
    { 0, 2486, 'marca.es' },
    -- Match.com
    { 0, 2363, 'match.com' },
    -- MaxPoint Interactive
    { 0, 2561, 'maxpoint.com' },
    { 0, 2561, 'maxpointexpress.com' },
    -- MediaFire
    { 0, 285, 'mediafire.com' },
    -- MediaMath
    { 0, 2416, 'mediamath.com' },
    -- Delicious
    { 0, 605, 'delicious.com' },
    { 0, 605, 'icio.us'},
    -- Dell
    { 0, 606, 'dell.com' },
    -- DepositFiles
    { 0, 1054, 'depositfiles.com' },
    -- Docstoc
--    { 0, 940, 'docstoc.com' },
    -- DomainTools
    { 0, 1172, 'domaintools.com' },
    -- Doof
    { 0, 2359, 'doof.com' },
    -- Drawbridge
    { 0, 2509, 'drawbrid.ge' },
    -- Adenin / Dynamic Intranet
    { 0, 2360, 'dynamicintranet.com' },
    { 0, 2360, 'adenin.com' },
    -- EQ Ads
    { 0, 2539, 'eqads.com' },
    { 0, 2539, 'eqworks.com' },
    -- Envato
    { 0, 1213, 'envato.com' },
    -- engage BDR
    { 0, 2554, 'bnmla.com' },
    { 0, 2554, 'first-impression.com' },
    -- Effective Measure
    { 0, 2516, 'effectivemeasure.com' },
    -- eBay
    { 0, 132, 'ebay.co.uk' },
    { 0, 132, 'ebay.com' },
    { 0, 132, 'ebay.ca' },
    { 0, 132, 'ebay.com.au' },
    { 0, 132, 'ebay.ie' },
    { 0, 132, 'ebay.de' },
    { 0, 132, 'ebay.in' },
    { 0, 132, 'ebay.fr' },
    { 0, 132, 'ebay.es' },
    { 0, 132, 'ebay.it' },
    { 0, 132, 'ebay.at' },
    { 0, 132, 'ebay.be' },
    { 0, 132, 'benl.ebay.be' },
    { 0, 132, 'befr.ebay.be' },
    { 0, 132, 'ebay.nl' },
    { 0, 132, 'ebay.at' },
    { 0, 132, 'ebay.ch' },
    { 0, 132, 'ebay.pl' },
    { 0, 132, 'ebay.com.sg' },
    { 0, 132, 'ebay.com.cn' },
    { 0, 132, 'ebay.cn' },
    { 0, 132, 'ebay.com.tw' },
    { 0, 132, 'ebay.com.hk' },
    { 0, 132, 'ebay.co.jp' },
    { 0, 132, 'ebay.co.kr' },
    { 0, 132, 'ebay.ph' },
    { 0, 132, 'ebay.com.my' },
    { 0, 132, 'ebay.vn' },
    { 0, 132, 'ebay.co.th' },
    { 0, 132, 'id.ebay.com' },
    -- Neustar Information Services
    { 0, 2537, 'neustar.biz' },
    { 0, 2537, 'neustar.com' },
    { 0, 2537, 'neustarlife.com' },
    { 0, 2537, 'targusinfo.com' },
    { 0, 2537, 'neustarlocaleze.biz' },
    { 0, 2537, 'neustarlocaleze.com' },
    { 0, 2537, 'ultradns.com' },
    { 0, 2537, 'webmetrics.com' },
    { 0, 2537, 'tcpacompliance.us' },
    { 0, 2537, 'npac.com' },
    -- comScore
    { 0, 2462, 'comscore.com' },
    -- MediaV
    { 0, 2501, 'mediav.com' },
    { 0, 2501, 'mediav.cn' },
    { 0, 2501, 'fenxi.com' },
    -- Meetup
    { 0, 2364, 'meetup.com' },
    -- Mercado Livre
    { 0, 2860, 'mercadolivre.com' },
    { 0, 2860, 'mercadolibre.com' },
    { 0, 2860, 'mercadolivre.com.br' },
    { 0, 2860, 'mercadolibre.com.ar' },
    { 0, 2860, 'mercadolibre.com.co' },
    { 0, 2860, 'mercadolibre.co.cr' },
    { 0, 2860, 'mercadolibre.cl' },
    { 0, 2860, 'mercadolibre.com.do' },
    { 0, 2860, 'mercadolibre.com.ec' },
    { 0, 2860, 'mercadolibre.com.mx' },
    { 0, 2860, 'mercadolibre.com.pa' },
    { 0, 2860, 'mercadolibre.com.pe' },
    { 0, 2860, 'mercadolivre.pt' },
    { 0, 2860, 'mercadolibre.com.uy' },
    { 0, 2860, 'mercadolibre.com.ve' },
    { 0, 2860, 'mercadopago.com' },
    { 0, 2860, 'mercadopago.com.br' },
    { 0, 2860, 'mercadoshops.com.br' },
    -- Meta5
    --{ 0, 288, 'meta5.us' },
    --{ 0, 288, 'meta5.com' },
    -- Metacafe
    { 0, 728, 'metacafe.com' },
    -- Mixpanel
    { 0, 2593, 'mixpanel.com' },
    -- Monetate
    { 0, 2496, 'monetate.net' },
    -- Mop.com
    { 0, 2862, 'mop.com' },
    -- Motley Fool
    { 0, 2863, 'fool.com' },
    { 0, 2863, 'fool.ca' },
    { 0, 2863, 'fool.co.uk' },
    { 0, 2863, 'fool.com.au' },
    { 0, 2863, 'fool.sg' },
    -- Mozilla
    { 0, 1261, 'mozilla.com' },
    { 0, 1261, 'mozilla.org' },
    -- MUZU TV
    -- { 0, 2375, 'muzu.tv' },
    -- MyBuys
    { 0, 2586, 'mybuys.com' },
    -- Naverisk
    { 0, 2390, 'naverisk.com' },
    { 0, 2390, 'naveriskusa.com' },
    -- NBA
    { 0, 1939, 'nba.com' },
    { 0, 1939, 'nba.co.in' },
    { 0, 1939, 'nba.ca' },
    -- Netease
    { 0, 1222, '163.com' },
    -- NetSeer
    { 0, 2551, 'netseer.com' },
    -- Newegg
    { 0, 759, 'newegg.com' },
    -- Nexage
    { 0, 2508, 'nexage.com' },
    -- Nielsen
    { 0, 2468, 'nielsen.com' },
    -- NovaBACKUP
    { 0, 336, 'novastor.com' },
    -- Nugg
    { 0, 2544, 'nuggad.net' },
    -- Online File Folder
    { 0, 1223, 'onlinefilefolder.com' },
    { 0, 1223, 'login.secureserver.net' },
    -- Open Webmail
    { 0, 1175, 'openwebmail.org' },
    -- OpenX
    { 0, 2415, 'openx.com' },
    -- Optimizely
    { 0, 2530, 'optimizely.com' },
    -- Pandora
    { 0, 779, 'pandora.com' },
    -- PDBox
    { 0, 2471, 'pdbox.co.kr' },
    -- Kooora.com
    { 0, 2859, 'kooora.com' },
    -- Motrixi
    { 0, 2525, 'motrixi.com' },
    -- Netfolder.in
    --{ 0, 3814, 'netfolder.in' },
    -- Mgoon
    { 0, 3816, 'mgoon.com' },
    -- SBS
    { 0, 3818, 'sbs.co.kr' },
    -- Photobucket
    { 0, 784, 'photobucket.com' },
    -- Picasa
    { 0, 785, 'picasa.com' },
    -- Pinger
    { 0, 1148, 'pinger.com' },
    -- Plaxo
    { 0, 369, 'plaxo.com' },
    -- Polldaddy
    { 0, 2582, 'polldaddy.com' },
    -- Quantcast
    { 0, 2405, 'quantcast.com' },
    -- RadiumOne
    { 0, 2564, 'radiumone.com' },
    -- Rambler
    { 0, 2603, 'rambler.ru' },
    -- RapidShare
    --{ 0, 802, 'rapidshare.com' },
    -- Rapleaf
    { 0, 2540, 'rapleaf.com' },
    { 0, 2540, 'towerdata.com' },
    -- Reddit
    { 0, 804, 'reddit.com' },
    -- Resonate Networks
    { 0, 2553, 'resonateinsights.com' },
    -- RichRelevance
    { 0, 2404, 'richrelevance.com' },
    -- Rocket Fuel
    { 0, 2563, 'rocketfuel.com' },
    -- Rubicon Project
    { 0, 2417, 'rubiconproject.com' },
    -- Salesforce.com
    { 0, 950, 'salesforce.com' },
    -- Samsung
    { 0, 1357, 'samsung.com' },
    { 0, 1357, 'samsungapps.com' },
    -- Scorecard Research
    { 0, 2408, 'scorecardresearch.com' },
    -- Sears
    { 0, 821, 'sears.com' },
    { 0, 821, 'sears.ca' },
    { 0, 821, 'searspartsdirect.com' },
    { 0, 821, 'searshomeservices.com' },
    { 0, 821, 'searsoutlet.com' },
    { 0, 821, 'searscommerceservices.com' },
    { 0, 821, 'searsflowers.com' },
    { 0, 821, 'searshomepro.com' },
    { 0, 821, 'searsoptical.com' },
    { 0, 821, 'searsoutlet.com' },
    { 0, 821, 'searsdrivingschools.com' },
    { 0, 821, 'searsvacations.com' },
    { 0, 821, 'searscommercial.com' },
    -- SendSpace
    { 0, 2382, 'sendspace.com' },
    -- ShareThis
    { 0, 2635, 'sharethis.com' },
    -- SHOUTCast Radio
    { 0, 829, 'shoutcast.com' },
    -- ShowMyPC
    { 0, 1630, 'showmypc.com' },
    -- Silverpop
    { 0, 2460, 'silverpop.com' },
    -- SiteScout
    { 0, 2864, 'sitescout.com' },
    -- Six Apart
    { 0, 2560, 'sixapart.com' },
    { 0, 2560, 'sixapart.jp' },
    { 0, 2560, 'movabletype.com' },
    -- Skimlinks
    { 0, 2590, 'skimlinks.com' },
    -- SLI Systems
    { 0, 2494, 'sli-systems.com' },
    -- SlideShare
    { 0, 1176, 'slideshare.com' },
    { 0, 1176, 'slideshare.net' },
    -- Smart AdServer
    { 0, 2568, 'smartadserver.com' },
    -- Softonic
    { 0, 2599, 'softonic.com' },
    -- Sogou
    { 0, 2383, 'sogou.com' },
    -- SoundCloud
    { 0, 1007, 'soundcloud.com' },
    -- Sourceforge
    { 0, 1177, 'sourceforge.net' },
    { 0, 1177, 'sf.net' },
    -- SPC Media
    { 0, 2411, 'spcmedia.co.uk' },
    -- SpotXchange
    { 0, 2548, 'spotxchange.com' },
    -- Squidoo
    { 0, 2377, 'squidoo.com' },
    { 0, 2377, 'squidoohq.com' },
    -- StatCounter
    { 0, 1521, 'statcounter.com' },
    -- StumbleUpon
    { 0, 852, 'stumbleupon.com' },
    -- SuperNews
    { 0, 454, 'supernews.com' },
    -- Suresome
    { 0, 1010, 'suresome.com' },
    -- SurveyMonkey
    { 0, 1178, 'surveymonkey.com' },
    -- SVN
    { 0, 2887, 'visualsvn.com' },
    -- Tagged
    { 0, 1065, 'tagged.com' },
    -- Tango
    { 0, 2379, 'tango.me' },
    -- Target
    { 0, 858, 'target.com' },
    -- TeacherTube
    { 0, 2602, 'teachertube.com' },
    -- TeamViewer
    { 0, 958, 'teamviewer.com' },
    -- TechCrunch
    { 0, 2607, 'techcrunch.com' },
    -- TechInline
    { 0, 2351, 'techinline.com' },
    { 0, 2351, 'fixme.it' },
    -- Telemetry
    --{ 0, 2596, 'telemetry.com' },
    -- Telly
    { 0, 2487, 'telly.com' },
    -- Apple Store
    { 0, 551, 'store.storeimages.cdn-apple.com' },
    { 0, 551, 'store.apple.com' },
    { 0, 551, 'ppq.apple.com' },
    -- Brilig
    { 0, 2511, 'brilig.com' },
    -- contnet
    { 0, 2566, 'contnet.de' },
    { 0, 2566, 'contnet.com' },
    -- Ado Tube
    { 0, 2847, 'adotube.com' },
    -- Adtech
    { 0, 2503, 'adtechaustralia.com' },
    { 0, 2503, 'adtech-kyushu.com' },
    { 0, 2503, 'ad-techlondon.co.uk' },
    { 0, 2503, 'ad-tech.sg' },
    { 0, 2503, 'adtechasean.com' },
    { 0, 2503, 'ad-tech.com' },
    { 0, 2503, 'ad-tech.co.nz' },
    -- Chinaren
    { 0, 2384, 'chinaren.com' },
    -- Quake Live
    { 0, 2888, 'quakelive.com' },
    -- DeNA websites
    { 0, 2946, 'dena.com' },
    { 0, 2946, 'mobage.cn' },
    { 0, 2946, 'mbga.jp' },
    { 0, 2946, 'daum-mobage.kr' },
    { 0, 2946, 'dena.jp' },
    { 0, 2946, 'dena-ec.com' },
    { 0, 2946, 'aumall.jp' },
    { 0, 2946, 'mbok.jp' },
    { 0, 2946, 'netsea.jp' },
    { 0, 2946, 'estar.jp' },
    { 0, 2946, 'paygent.co.jp' },
    { 0, 2946, 'mangabox.me' },
    { 0, 2946, 'showroom-live.com' },
    { 0, 2946, 'applizemi.com' },
    { 0, 2946, 'chirashiru.jp' },
    --{ 0, 2946, 'ssl.co-mm.com' },
    { 0, 2946, 'smcb.jp' },
    { 0, 2946, 'skygate.co.jp' },
    { 0, 2946, 'arukikata.com' },
    { 0, 2946, 'sougouhoken.jp' },
    { 0, 2946, 'gbooks.jp' },
    { 0, 2946, 'mycode.jp' },
    -- CBS
    { 0, 1332, 'cbslocal.com' },
    -- Hideman
    { 0, 2681, 'hideman.net' },
    { 0, 2681, 'hideman.com' },
    -- Playdom
    { 0, 1237, 'playdom.com' },
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

