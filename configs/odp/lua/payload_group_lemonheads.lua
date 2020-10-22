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
detection_name: Payload Group "Lemonheads"
version: 30
description: Group of payload detectors.
bundle_description: $VAR1 = {
          'Sports Illustrated' => 'Web portal for sports news and updates.',
          'EarthLink' => 'IT Solution provider for network and communications.',
          'Shutterfly' => 'Share, prints and personalize the cards, album, mugs and other Home decor items with your photos.',
          'Ameba' => 'Japanese blogging and social networking website.',
          'Asia Times Online' => 'Web Portal for news update.',
          'Fiverr' => 'E-Commerce site generally for $5.',
          'AccuWeather' => 'Weather forecasting website.',
          'Alisoft' => 'IT company for wesites design and development.',
          'ShopAtHome' => 'An online coupons and deals website.',
          'OkCupid' => 'Online Dating website.',
          'Widget Media' => 'Social networking and gaming sites.',
          'RetailMeNot' => 'Online coupon and deals.',
          'Zillow' => 'Online portal for Real Estate.',
          'WhitePages Inc' => 'Business and People\'s Contact directory in United States.',
          'WorldstarHipHop' => 'Entertainment, hip hop, music videos and blogs.',
          'TMZ' => 'Entertainment news.',
          'Cox' => 'Telecommunication and wireless service provider.',
          'Stack Overflow' => 'Question and Answering site for programmers.',
          'Facebook' => 'Facebook is a social networking service.',
          'Mail.Ru' => 'Runet\'s free e-mail service.',
          'Manta' => 'Provides US company profiles and information.',
          'Commission Junction' => 'Web advertisement services.',
          'HootSuite' => 'Social Network management.',
          'Goodreads' => 'Book review and cataloging.',
          'Fab.com' => 'E-commerce for all articles.',
          'Backpage.com' => 'Free classified ads.',
          'Patch.com' => 'Local news website.',
          'NPR' => 'National Public Radio - Associates US national radio station to provide news and other programs.',
          'POLITICO.com' => 'News portal.',
          'Trulia' => 'Online portal for Real Estate.',
          'Southwest Airlines' => 'Airlines service in United States.',
          'Tmobile' => 'Tmobile VoIP services.',
          'ToysRUs' => 'Official website for ToyRUs, which deals with toys.',
          'NY Daily News' => 'News portal.',
          'Realtor.com' => 'Web portal Real Estate.',
          'AllRecipes' => 'Recipes and cooking guide.',
          'Reuters' => 'News portal.',
          'NIH' => 'National Institute of Health and Human services.',
          'Ancestry.com' => 'Online family history resource.',
          'Square Inc.' => 'Electronic payment service through mobile phones.',
          'InsightExpress' => 'Analyser for online and Mobile advertisements.',
          'Intuit' => 'Software company for financial and tax related services.',
          'WebMD' => 'Health information service.',
          'Verizon' => 'Internet, TV and Phone service provider.',
          'Sohu.com' => 'Chinese search engine with other services like games, advertising, etc.',
          'Examiner.com' => 'News portal.',
          'StatCounter' => 'Web traffic analyser.',
          'Sprint' => 'Voice, data and internet service provider.',
          'Disney' => 'Official Disney website.',
          'LiveStrong.com' => 'Health and fitness information.',
          'T Mobile' => 'Telecommunication and phone service provider.',
          'Infusionsoft' => 'Software company providing solutions for sales and marketing.',
          'Disqus' => 'Company which provides discussion forum features.',
          'Coupons.com' => 'An online coupons and deals website.',
          'Salesforce.com Live Agent' => 'Salesforce.com\'s live chat support service.',
          'MapQuest' => 'Map and Driving service by AOL.',
          'Wikia' => 'Web portal to contribute and share the knowledge.',
          'California.gov' => 'California government official website.',
          'LivingSocial' => 'Deals website.',
          'MGID' => 'Service provider for advertising and marketing.',
          'U.S.Bank' => 'Online banking web portal for U.S Bank.',
          'Apple sites' => 'Apple corporate websites.',
          'Slickdeals' => 'An online coupons and deals website.',
          'IMRWorldWide' => 'Market research and Network analytics to display advertisement.',
          'VeriSign' => 'SSL Certificates provider.',
          'CPX Interactive' => 'Web advertisement services.',
          'CBS Sports' => 'Sports news website.',
          'Yellow Pages' => 'Online directory and Mapping services.',
          'ClickBank' => 'Online marketplace for Digital products.',
          'Pandora TV' => 'Pandora streaming TV service.',
          'CNBC' => 'Official website for the CNBC channel which is basically meant for Business and Financial market related news.',
          '1&1 Internet' => 'Internet and Domain name service provider.',
          'BuzzFeed' => 'News portal.',
          'AddThis' => 'Social bookmarking service.',
          'Monster.com' => 'Online job search portal.',
          'Swagbucks' => 'Online rewards program.',
          'Bleacher Report' => 'Web Portal for Sports news update.',
          'The Blaze' => 'News and Opinion website.',
          'Kayak' => 'Online Flight and Hotel reservation/deals website.',
          'CareerBuilder.com' => 'Online job search portal.',
          'Food Network' => 'Official website for the TV network about food and cooking.',
          'Neteller' => 'Website for handling online payments and money transactions.',
          'Chartbeat' => 'Realtime Website data for Collection.',
          'RealClearPolitics' => 'Political news, opinions and polls website.',
          'Avaya' => 'Network and Communication solution provider.',
          'Mashable' => 'News  blog website for social network and new technology.',
          'Legacy.com' => 'Online Obituaries.',
          'People.com' => 'Web portal for the Weekly magazine People.',
          'Walgreens' => 'Online Pharmacy in United States.',
          'Business Insider' => 'Online news web portal.',
          'HostGator' => 'Web hosting portal.',
          'Inbox.com' => 'Free web-based email service provider.',
          'Snort.org' => 'An open source for Network intrusion prevention system.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "payload_group_lemonheads",
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

--serviceId, clientId, ClientType, PayloadId, PayloadType, hostPattern, pathPattern, schemePattern, queryPattern
gUrlPatternList = {

    -- Sports Illustrated
    { 0, 0, 0, 710,33, "cdn.turner.com", "/si/", "http:", "", 1456},
    { 0, 0, 0, 710,33, "sportsillustrated.fyre.co", "/", "http:", "", 1456},
    { 0, 0, 0, 710,33, "si.com", "/", "http:", "", 1456},
    -- CPX Interactive
    { 0, 0, 0, 711,33, "cpxinteractive.com", "/", "http:", "", 1457},
    -- VeriSign
    { 0, 0, 0, 712,33, "verisign.com", "/", "http:", "", 1458},
    -- CBS Sports
    { 0, 0, 0, 713,33, "cbssports.com", "/", "http:", "", 1459},
    -- Chartbeat
    { 0, 0, 0, 714,33, "chartbeat.com", "/", "http:", "", 1460},
    { 0, 0, 0, 714,33, "chartbeat.net", "/", "http:", "", 1460},
    -- InsightExpress
    { 0, 0, 0, 715,33, "insightexpress.com", "/", "http:", "", 1461},
    { 0, 0, 0, 715,33, "ad.insightexpressai.com", "/", "http:", "", 1461},
    --Zillow
    { 0, 0, 0, 720,22, "zillow.com", "/", "http:", "", 1480},
    { 0, 0, 0, 720,22, "zillowstatic.com", "/", "http:", "", 1480},
    --Monster
    { 0, 0, 0, 721,22, "monster.prospero.com", "/", "http:", "", 1481},
    { 0, 0, 0, 721,22, "monster.com", "/", "http:", "", 1481},
    --MapQuest
    { 0, 0, 0, 722,22, "mapquest.com", "/", "http:", "", 1482},
    { 0, 0, 0, 722,22, "mqcdn.com", "/", "http:", "", 1482},
    --Swagbucks
    { 0, 0, 0, 723,22, "swagbucks.com", "/", "http:", "", 1483},
    { 0, 0, 0, 723,22, "sbx-cdn.com", "/", "http:", "", 1483},
    --Verizon
    { 0, 0, 0, 724,22, "verizon.com", "/", "http:", "", 1484},
    { 0, 0, 0, 724,22, "verizon.net", "/", "http:", "", 1484},
    --Wikia
    { 0, 0, 0, 725,22, "wikia.com", "/", "http:", "", 1485},
    { 0, 0, 0, 725,22, "wikia.nocookie.net", "/", "http:", "", 1485},
    { 0, 0, 0, 725,22, "a.wikia-beacon.com", "/", "http:", "", 1485},
    --TMZ
    { 0, 0, 0, 726,22, "tmz.com", "/", "http:", "", 1486},
    --ShopAtHome
    { 0, 0, 0, 727,22, "shopathome.com", "/", "http:", "", 1487},
    { 0, 0, 0, 727,22, "sahcdn.com", "/", "http:", "", 1487},
    --Asia Times Online
    { 0, 0, 0, 728,33, "atimes.com", "/", "http:", "", 1488},
    --HootSuite
    { 0, 0, 0, 729,22, "hootsuite.com", "/", "http:", "", 1489},
    --Coupons
    { 0, 0, 0, 730,15, "coupons.com", "/", "http:", "", 1490},
    { 0, 0, 0, 730,15, "cpnscdn.com", "/", "http:", "", 1490},
    { 0, 0, 0, 730,15, "couponsinc.com", "/", "http:", "", 1490},
    --CareerBuilder
    { 0, 0, 0, 731,22, "careerbuilder.com", "/", "http:", "", 1491},
    { 0, 0, 0, 731,22, "icbdr.com", "/", "http:", "", 1491},
    --Commission Junction
    { 0, 0, 0, 732,22, "cj.com", "/", "http:", "", 1492},
    --Fiver
    { 0, 0, 0, 733,22, "fiverr.com", "/", "http:", "", 1493},
    { 0, 0, 0, 733,22, "fiverrcdn.com", "/", "http:", "", 1493},
    --backpage
    { 0, 0, 0, 734,22, "backpage.com", "/", "http:", "", 1494},
    --LivingSocial
    { 0, 0, 0, 735,22, "livingsocial.com", "/", "http:", "", 1495},
    { 0, 0, 0, 735,22, "lscdn.net", "/", "http:", "", 1495},
    --AllRecipes
    { 0, 0, 0, 736,22, "allrecipes.com", "/", "http:", "", 1496},
    --Yellow Pages
    { 0, 0, 0, 737,22, "yellowpages.com", "/", "http:", "", 1497},
    { 0, 0, 0, 737,22, "yp.com", "/", "http:", "", 1497},
    { 0, 0, 0, 737,22, "ypcdn.com", "/", "http:", "", 1497},
    --Bleacher Report
    { 0, 0, 0, 738,22, "bleacherreport.com", "/", "http:", "", 1498},
    { 0, 0, 0, 738,22, "bleacherreport.net", "/", "http:", "", 1498},
    --Stack Overflow
    { 0, 0, 0, 739,22, "stackoverflow.com", "/", "http:", "", 1499},
    { 0, 0, 0, 739,22, "cdn.sstatic.net", "/stackoverflow", "http:", "", 1499},
    --U.S.Bank
    { 0, 0, 0, 740,22, "usbank.com", "/", "http:", "", 1500},
    --Ancestry.com
    { 0, 0, 0, 741,22, "ancestry.com", "/", "http:", "", 1501},
    --WebMD
    { 0, 0, 0, 742,22, "webmd.com", "/", "http:", "", 1502},
    --Trulia
    { 0, 0, 0, 743,22, "trulia.com", "/", "http:", "", 1503},
    { 0, 0, 0, 743,22, "trulia-cdn.com", "/", "http:", "", 1503},
    --Slickdeals
    { 0, 0, 0, 744,22, "slickdeals.net", "/", "http:", "", 1504},
    { 0, 0, 0, 744,22, "slickdealz.net", "/", "http:", "", 1504},
    --Business Insider
    { 0, 0, 0, 745,22, "businessinsider.com", "/", "http:", "", 1505},
    --People.com
    { 0, 0, 0, 746,22, "people.com", "/", "http:", "", 1506},
    { 0, 0, 0, 746,22, "timeinc.net", "/people", "http:", "", 1506},
    { 0, 0, 0, 746,22, "peoplestylewatch.com", "/", "http:", "", 1506},
    --Reuters
    { 0, 0, 0, 747,22, "reuters.com", "/", "http:", "", 1507},
    { 0, 0, 0, 747,22, "reutersmedia.net", "/", "http:", "", 1507},
    { 0, 0, 0, 747,22, "reutersmedia.com", "/", "http:", "", 1507},
    --BuzzFeed
    { 0, 0, 0, 748,22, "buzzfeed.com", "/", "http:", "", 1508},
    { 0, 0, 0, 748,22, "buzzfed.com", "/", "http:", "", 1508},
    --California.gov
    { 0, 0, 0, 749,22, "ca.gov", "/", "http:", "", 1509},
    --Southwest Airlines
    { 0, 0, 0, 750,22, "southwest.com", "/", "http:", "", 1510},
    { 0, 0, 0, 750,22, "southwestairlines.tt.omtrdc.net", "/", "http:", "", 1510},
    --National Institute of Health(NIH)
    { 0, 0, 0, 751,22, "nih.gov", "/", "http:", "", 1511},
    --WhitePages Inc
    { 0, 0, 0, 752,22, "whitepages.com", "/", "http:", "", 1512},
    { 0, 0, 0, 752,22, "whitepagesinc.com", "/", "http:", "", 1512},
    { 0, 0, 0, 752,22, "cdnwp.com", "/", "http:", "", 1512},
    --MGID
    { 0, 0, 0, 753,22, "mgid.com", "/", "http:", "", 1513},
    --EarthLink
    { 0, 0, 0, 754,22, "earthlink.net", "/", "http:", "", 1514},
    { 0, 0, 0, 754,22, "earthlinkbusiness.com", "/", "http:", "", 1514},
    --Disney
    { 0, 0, 0, 755,22, "disney.com", "/", "http:", "", 1515},
    { 0, 0, 0, 755,22, "disney.go.com", "/", "http:", "", 1515},
    { 0, 0, 0, 755,22, "disneyinternational.com", "/", "http:", "", 1515},
    { 0, 0, 0, 755,22, "disney.co.uk", "/", "http:", "", 1515},
    --POLITICO.com
    { 0, 0, 0, 756,22, "politico.com", "/", "http:", "", 1516},
    --NY Daily News
    { 0, 0, 0, 757,22, "nydailynews.com", "/", "http:", "", 1517},
    { 0, 0, 0, 757,22, "nydailynews.stat.com", "/", "http:", "", 1517},
    --Examiner.com
    { 0, 0, 0, 758,22, "examiner.com", "/", "http:", "", 1518},
    --RetailMeNot
    { 0, 0, 0, 759,22, "retailmenot.com", "/", "http:", "", 1519},
    { 0, 0, 0, 759,22, "rmncdn.com", "/", "http:", "", 1519},
    --AddThis
    { 0, 0, 0, 760,22, "addthis.com", "/", "http:", "", 1520},
    { 0, 0, 0, 760,22, "addthiscdn.com", "/", "http:", "", 1520},
    --StatCounter
    { 0, 0, 0, 761,22, "statcounter.com", "/", "http:", "", 1521},
    --OkCupid
    { 0, 0, 0, 762,22, "okcupid.com", "/", "http:", "", 1522},
    { 0, 0, 0, 762,22, "okccdn.com", "/", "http:", "", 1522},
    { 0, 0, 0, 762,22, "okcimg.com", "/", "http:", "", 1522},
    --Patch.com
    { 0, 0, 0, 763,22, "patch.com", "/", "http:", "", 1523},
    { 0, 0, 0, 763,22, "assets0.patch-assets.com", "/", "http:", "", 1523},
    --Legacy.com
    { 0, 0, 0, 764,22, "legacy.com", "/", "http:", "", 1524},
    --Realtor.com
    { 0, 0, 0, 765,22, "realtor.com", "/", "http:", "", 1525},
    --Intuit
    { 0, 0, 0, 766,22, "intuit.com", "/", "http:", "", 1526},
    { 0, 0, 0, 766,22, "intuitstatic.com", "/", "http:", "", 1526},
    --The Blaze
    { 0, 0, 0, 767,22, "theblaze.com", "/", "http:", "", 1527},
    { 0, 0, 0, 767,22, "gbtv.com", "/", "http:", "", 1527},
    --HostGator
    { 0, 0, 0, 768,22, "hostgator.com", "/", "http:", "", 1528},
    --Food Network
    { 0, 0, 0, 769,22, "foodnetwork.com", "/", "http:", "", 1529},
    --ClickBank
    { 0, 0, 0, 770,22, "clickbank.com", "/", "http:", "", 1530},
    --Cox
    { 0, 0, 0, 771,22, "cox.com", "/", "http:", "", 1531},
    { 0, 0, 0, 771,22, "cox.net", "/", "http:", "", 1531},
    { 0, 0, 0, 771,22, "coxcablespecial.com", "/", "http:", "", 1531},
    --Mashable
    { 0, 0, 0, 772,22, "mashable.com", "/", "http:", "", 1532},
    { 0, 0, 0, 772,22, "mshcdn.com", "/", "http:", "", 1532},
    --AccuWeather
    { 0, 0, 0, 773,22, "accuweather.com", "/", "http:", "", 1533},
    { 0, 0, 0, 773,22, "accu-weather.com", "/", "http:", "", 1533},
    --Sprint
    { 0, 0, 0, 774,22, "sprint.com", "/", "http:", "", 1534},
    --Goodreads
    { 0, 0, 0, 775,22, "goodreads.com", "/", "http:", "", 1535},
    --LiveStrong.com
    { 0, 0, 0, 776,22, "livestrong.com", "/", "http:", "", 1536},
    { 0, 0, 0, 776,22, "lsimg.net", "/", "http:", "", 1536},
    --RealClearPolitics
    { 0, 0, 0, 777,22, "realclearpolitics.com", "/", "http:", "", 1537},
    --Manta
    { 0, 0, 0, 778,22, "manta.com", "/", "http:", "", 1538},
    { 0, 0, 0, 778,22, "manta-r1.com", "/", "http:", "", 1538},
    --CNBC
    { 0, 0, 0, 780,22, "cnbc.com", "/", "http:", "", 1540},
    --Widget Media
    { 0, 0, 0, 781,22, "widgetmedia.net", "/", "http:", "", 1541},
    --Inbox.com
    { 0, 0, 0, 782,22, "inbox.com", "/", "http:", "", 1542},
    --Inbox.com
    { 0, 0, 0, 783,22, "shutterfly.com", "/", "http:", "", 1543},
    --Netteller
    { 0, 0, 0, 784,22, "neteller.com", "/", "http:", "", 1544},
    --T-Mobile
    { 0, 0, 0, 785,22, "t-mobile.com", "/", "http:", "", 1545},
    { 0, 0, 0, 785,22, "tmobile.tt.omtrdc.net", "/", "http:", "", 1545},
    { 0, 0, 0, 785,22, "tmocache.com", "/", "http:", "", 1545},
    { 0, 0, 0, 785,22, "tmobile.com", "/", "http:", "", 1545},
    { 0, 0, 0, 785,22, "tmocce.com", "/", "http:", "", 1545},
    --[[ Tmobile (VoIP services). is a Thirdparty-only detection, this makes the unit-test happy
        dummy = 471
    --]]
    --Walgreens
    { 0, 0, 0, 786,22, "walgreens.com", "/", "http:", "", 1546},
    --WorldstarHipHop
    { 0, 0, 0, 787,22, "worldstarhiphop.com", "/", "http:", "", 1547},
    --National Public Radio(NPR)
    { 0, 0, 0, 788,22, "npr.org", "/", "http:", "", 1548},
    --Kayak
    { 0, 0, 0, 789,22, "kayak.com", "/", "http:", "", 1549},
    --Toys"R"Us
    { 0, 0, 0, 790,22, "toysrus.com", "/", "http:", "", 1550},
    { 0, 0, 0, 790,22, "trus.imageg.net", "/", "http:", "", 1550},
    --Mail.Ru
    { 0, 0, 0, 791,22, "mail.ru", "/", "http:", "", 1551},
    --Sohu.com
    { 0, 0, 0, 792,22, "sohu.com", "/", "http:", "", 1552},
    --1&1 Internet
    { 0, 0, 0, 793,22, "1and1.com", "/", "http:", "", 1553},
    { 0, 0, 0, 793,22, "1und1.ivwbox.de", "/", "http:", "", 1553},
    --Ameba
    { 0, 0, 0, 794,22, "ameba.jp", "/", "http:", "", 1554},
    --Avoidr
    { 0, 0, 0, 795,22, "avaya.com", "/", "http:", "", 1555},
    --Axifile
    --{ 0, 0, 0, 796,22, "axifile.com", "/", "http:", "", 1556},
    --Snort.org
    { 0, 0, 0, 797,22, "snort.org", "/", "http:", "", 1557},
    --Disqus
    { 0, 0, 0, 798,22, "disqus.com", "/", "http:", "", 1558},
    --Infusionsoft
    { 0, 0, 0, 799,22, "infusionsoft.com", "/", "http:", "", 1559},
    { 0, 0, 0, 799,22, "insft.com", "/", "http:", "", 1559},
    --IMRWorldWide
    { 0, 0, 0, 800,22, "imrworldwide.com", "/", "http:", "", 1560},
    --Alisoft
    { 0, 0, 0, 801,22, "alisoft.net", "/", "http:", "", 1561},
    --Salesforce.com Live Agent
    { 0, 0, 0, 802,22, "salesforce.com", "/products/instaservice_form.html", "http:", "", 1562},
    { 0, 0, 0, 802,22, "liveagentforsalesforce.com", "/", "http:", "", 1562},
    --Facebook
    { 0, 0, 0, 17, 22, "connect.facebook.net", "/", "http:", "", 629},
    { 0, 0, 0, 17, 22, "facebook.com", "/", "http:", "", 629},
    { 0, 0, 0, 17, 22, "fbcdn.net", "/", "http:", "", 629},
    --Fab.com
    { 0, 0, 0, 806, 22, "fab.com", "/", "http:", "", 1567},
    --Square Inc.
    { 0, 0, 0, 807, 22, "squareup.com", "/", "http:", "", 1568},
    { 0, 0, 0, 807, 22, "square.com", "/", "http:", "", 1568},
    -- Pandora TV
    { 0, 0, 0, 839, 5, "pandora.tv", "/", "http:", "", 1327},
    -- Apple sites
    { 0, 0, 0, 1105, 15, "thinkdifferent.us", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "mac.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.ru", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applecomputer.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.co.uk", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "acot2.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "airport.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "airtunes.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "aple.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appl-e.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appl.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appl3e.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applde.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple-darwin.net", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple-imac.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple-ipod.ca", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.be", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.ch", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.co", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.co.kr", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.com.au", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.com.pa", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.com.pr", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.com.uy", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.it", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.net.gr", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "apple.tv", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applebrazil.com.br", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applecomputer.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applecomputerinc.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appleimac.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appleiphone.com.br", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appleipod.com.br", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applemagicmouse.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applemagictrackpad.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applemalaysia.com.my", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appleoslion.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appleosxlion.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applereach.net", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applestore.bg", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "applethunderboltdisplay.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appletrackpad.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "appstore.fr", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "carbon.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "calendarserver.org", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "cups.org", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "desktopmovie.net", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "dvdstudiopro.info", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "dvdstudiopro.net", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "finalcutpro.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "fonts.apple.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "garageband.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "genius-bar.eu", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ibook.co", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ichat.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "imac-apple.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "imac.co", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "imac.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "imacapple.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "imacapplecomputer.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "imacstore.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "instore.apple.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipad3.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphone.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphone.org", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphone4.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphone4.com.br", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphone4s.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphoneacessorios.com.br", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphoneclaro.com.br", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iphoto.se", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipod.ca", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipod.cm", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipod.co", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipod.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipod.ua", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipodnano.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ipods.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "iwork.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "lojaiphone.com.br", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "mac-mini.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "mac.eu", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macbook.co", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macbookair.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macbookpro.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macintosh.cl", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macintosh.co", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macmini.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macoslion.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macosxleo.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macosxleon.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macosxlion.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "macosxserver.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "magictrackpad.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "metapushpin.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "myapple.net", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "nothingreal.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "playquicktime.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "powerbook.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "prismo.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "publishing-research.org", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "publishingsurvey.org", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktime-player.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktime.cc", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktime.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktime.eu", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktime.net", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktime.tv", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktime5.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "quicktimetv.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "rip-mix-burn.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "ripmixburn.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "thinkdifferent.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "webobjects.net", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "whiteiphone.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "whyapple.co.za", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "xserve.com", "/", "http:", "", 1185},
    { 0, 0, 0, 1105, 15, "zpple.com", "/", "http:", "", 1185},
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

