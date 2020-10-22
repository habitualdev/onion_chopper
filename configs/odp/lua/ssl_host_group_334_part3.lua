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
detection_name: SSL Group "334 part3"
version: 3
description: Group of SSL Host detectors.
bundle_description: $VAR1 = {
          'Mail.ru Attachment' => 'Attaching a file to an email on mail.ru.',
          'hi5' => 'Social networking and social gaming platform.',
          'Bleacher Report' => 'Web Portal for Sports news update.',
          'Haiku Learning Systems' => 'Online tool for teaching and learning.',
          'Xunlei Kankan' => 'Chinese webportal for video-on-demand service.',
          'Media6Degrees' => 'Advertisement site.',
          'Elephant Drive' => 'Cloud storage service used primarily as an online backup tool.',
          'MapleStory' => 'Online game portal.',
          'Bloomingdales' => 'Retail department store.',
          'Douban' => 'Chinese social networking service.',
          '33Across' => 'Social ad delivery service.',
          'Zoho Social' => 'A social media management tool.',
          'Jalopnik' => 'Automotive news and information blog.',
          'MyWebSearch' => 'Web portal.',
          'theCHIVE' => 'Funny photos and videos.',
          'SpeedRunsLive' => 'Online gaming.',
          'Livemocha' => 'Language learning community and platform offering free and paid language courses.',
          'Bejeweled Chrome Extension' => 'Bejeweled for the Chrome browser.',
          'Twitter Link Service' => 't.co, Twitter\'s URL redirect service.',
          'Yahoo! Finance' => 'Yahoo! Stock and finance website.',
          'IMDB' => 'Movie information, reviews and previews.',
          'Words With Friends' => 'Word game.',
          'SimplePie' => 'RSS Feed.',
          'Cox' => 'Telecommunication and wireless service provider.',
          'L\'equipe.fr' => 'French sports news site.',
          'Tianya' => 'Chinese forum for blogging, microblogging and photo album services.',
          'Scribd Upload' => 'Sharing, publishing, discussing and discovering documents. This app can be detected from decrypted traffic only.',
          'Naver Blog' => 'Naver blogging app.',
          'Fidelity' => 'Mutual fund and financial services company.',
          'Snort.org' => 'An open source for Network intrusion prevention system.',
          'BitCoin' => 'Application and website for mining and exchanging BitCoins, a cryptographic currency.',
          'AutoZone' => 'Automotive parts and accessories retailer.',
          'Wall Street Journal' => 'Web Portal for news update.',
          'Indiatimes' => 'Online news portal.',
          'SLI Systems' => 'Advertisement site.',
          'J.C. Penney' => 'Clothing and accessory retailer.',
          'Expedia' => 'Travel reservation website.',
          'Mobile Theory' => 'Advertisement site.',
          'NHL.com' => 'The National Hockey League official website.',
          'Clip2Net' => 'Yandex cloud storage that acts like a clipboard.',
          'MissLee' => 'Korean Instant Messenger.',
          'Deezer' => 'Music streaming service based in Paris.',
          'Flickr Upload' => 'Online photo management and sharing.',
          'Cheezburger' => 'Hang-out place for funny Photos and stories.',
          'OCLC' => 'Online Computer Library Center - Nonprofit collaboration for providing online public access catalog.',
          'LINE' => 'Mobile and Desktop App for Instant Messaging.',
          'Amazon' => 'Online retailer of books and most other goods.',
          'PPStream' => 'Chinese video streaming software.',
          'SUPERAntiSpyware' => 'Antivirus / antimalware application.',
          'CNBC' => 'Official website for the CNBC channel which is basically meant for Business and Financial market related news.',
          'Windows Phone sites' => 'Windows phone related websites.',
          'Intralinks' => 'A secure collaboration site.',
          'OwnerIQ' => 'Advertisement site.',
          'Tudou' => 'Popular Chinese video sharing website.',
          'GameTrailers' => 'Video game news, reviews, and previews website.',
          'Collider' => 'Movie/Television news, reviews and trailers.',
          'Ad4mat' => 'Ad site.',
          'Vimeo' => 'Website for viewing and sharing videos.',
          '2channel' => 'Japan based Internet forum.',
          '6.pm' => 'Discount shoes and clothing retailer.',
          'REVOLVEclothing' => 'Designer clothing and accessories retailer.',
          'Swagbucks' => 'Online rewards program.',
          'Evony' => 'Browser-based online multiplayer game.',
          'Nike' => 'Shoe and sports apparel manufacturer.',
          'Myspace Photos' => 'Photos sharing service by Myspace.',
          'Mashable' => 'News  blog website for social network and new technology.',
          'Zmags' => 'Digital publisher for branded products to customer.',
          'Softonic' => 'Software download site.',
          'OpenSUSE' => 'Official website for OpenSUSE, Linux based OS.',
          'Burnbook' => 'Anonymous messaging app.',
          'Technorati' => 'Search engine for blogs.',
          'DCinside' => 'Internet forum for photography and Digital camera.',
          'schuelerVZ' => 'German online classroom / social network.',
          'Intuit' => 'Software company for financial and tax related services.',
          'Picsearch' => 'Image search engine.',
          'Bejeweled Blitz' => 'Facebook version of Bejeweled 2.',
          'XiTi' => 'Advertising and analytics site.',
          'Speedtest' => 'Test the download and upload speed of the internet.',
          'Kayak' => 'Online Flight and Hotel reservation/deals website.',
          'CNET' => 'Tech and gadget related news, reviews, and shopping.',
          'Crackle Video' => 'Video streaming from Crackle.',
          'Liberty Mutual' => 'Insurance company.',
          'Naver' => 'Web portal.',
          'WordReference.com' => 'Online dictionaries, translator and word games.',
          'Eclipse Marketplace' => 'Marketplace for Eclipse application.',
          'InSkin Media' => 'Advertisement site.',
          'Demio' => 'Demio is a webinar platform.',
          'Black & Decker Corporation' => 'Power tools, hardware, and home improvement products retailer.',
          'Top Gear' => 'Website for the related British TV series focused on cars.',
          'CheapOAir' => 'Travel booking and price comparison site.',
          'Facebook' => 'Facebook is a social networking service.',
          'wetpaint entertainment' => 'Television related news and media.',
          'NPR' => 'National Public Radio - Associates US national radio station to provide news and other programs.',
          'Kiwoom' => 'Investment firm.',
          'ESPN' => 'Online Sports news and show.',
          'Woopra' => 'Real time customer service and solutions.',
          'MyDownloader' => 'Service for downloading files from numerous file hosting sites such as Rapidshare.',
          'TubeMogul' => 'Advertisement site.',
          'T Mobile' => 'Telecommunication and phone service provider.',
          'Grantland' => 'Web portal for sports news by ESPN.',
          'Capital One' => 'U.S. based bank holding company.',
          'Feedly' => 'News Aggregator.',
          '1-800-Flowers' => 'Online retailer of flowers and other gifts.',
          'Badoo' => 'Social networking service.',
          'Vine' => 'Mobile App for sharing photos and videos clips.',
          'Cedexis' => 'Advertising and analytics site.',
          'Pinterest' => 'Social photo sharing website.',
          'Food Network' => 'Official website for the TV network about food and cooking.',
          'Omegle' => 'Online chat service that pairs together strangers.',
          'Advertising.com' => 'Web advertisement services.',
          'Bing Maps' => 'Microsoft online mapping and directions service.',
          'FTD' => 'Floral retailer.',
          'LeTV' => 'Chinese online video portal.',
          'Boxnet Upload SSL' => 'Online repository for documents, spreadsheet and presentations.  This app can be detected from decrypted traffic only.',
          'Adap.tv' => 'Video advertising service.',
          'Wretch' => 'Taiwanese community website.',
          'Tomatopang' => 'Korean Peer to Peer file-sharing application.',
          'NBC' => 'Official website for NBC\'s Television network.',
          'The Free Dictionary' => 'Online dictionary aggregator.',
          'Voyages-sncf.com' => 'Travel agency website.',
          'Citrix Online' => 'Citrix Online services, including GoToMyPC, GoToMeeting, GoToWebinar, and GoToTraining.',
          'Best Buy' => 'Website and online retailer for national chain of electronics stores.',
          'Amobee' => 'Advertisement site.',
          '56.com' => 'Large Chinese video sharing site.',
          'OsiriX' => 'Image processing tool for DICOM images.',
          'Fiverr' => 'E-Commerce site generally for $5.',
          'Publishers Clearing House' => 'Online marketing company.',
          'Costco' => 'Warehouse club\'s online retail website.',
          'Orbitz' => 'Internet based travel services company.',
          'Rackspace' => 'Virtual and physical server hosting providers.',
          'BigBlueButton' => 'Web conferencing system.',
          'European Union' => 'Official website for European Union.',
          'Fox News' => 'Web Portal for news update.',
          'CarMax' => 'New and used car retailer.',
          'Zappos' => 'Online shoe and apparel retailer.',
          '24/7 Media' => 'Advertisement site.',
          'Java Update' => 'Java update software service.',
          'Pandora TV' => 'Pandora streaming TV service.',
          'PixelMags' => 'Content delivery network for digital versions of magazine.',
          'Android.com' => 'Android web site.',
          'yfrog' => 'Site for posting and sharing photos and videos on twitter.',
          'SmugMug' => 'Photo sharing website.',
          'The New York Times' => 'Newspaper website.',
          'Babelgum' => 'Internet TV service.',
          'Zoho SalesIQ Chat' => 'Live chat software for website visitors and for customer support.',
          'City Sports' => 'Sporting goods and athletic apparel retailer.',
          'ProxEasy' => 'Anonymous web based proxy service.',
          'Examiner.com' => 'News portal.',
          'Library of Congress' => 'Online collection of American history memories and culture.',
          'Dilbert.com' => 'Offcial website for Dilbert, American comic strips.',
          'Messenger' => 'Facebook\'s standalone messenger app.',
          'Soku' => 'Youku\'s search engine.',
          'China.com' => 'Chinese social networking site.',
          'F-secure' => 'Antivirus software.',
          'Millennial Media' => 'Web advertisement services.',
          'SFGate' => 'Bay area news portal.',
          'Victoria\'s Secret' => 'Woman\'s wear, lingerie, and beauty product retailer.',
          'Dropbox Share' => 'File sharing option from Dropbox.',
          'E! Online' => 'Online entertainment news.',
          'The Blaze' => 'News and Opinion website.',
          'Drugs.com' => 'Online pharmacy.',
          'Casale' => 'Advertisement site.',
          'Linux Mint' => 'Linux based Operating System.',
          'Netease' => 'Chinese web portal.',
          'Livestream' => 'Live streaming video platform.',
          'LOVEFiLM' => 'Home video and video game rental service.',
          'Eclipse Updates' => 'Software Updates for Eclipse.',
          'Redmine' => 'Web based bug tracking and project management tool.',
          'Wordpress' => 'An online blogging community.',
          'Tesco.com' => 'General E-commerce website.',
          'Neiman Marcus' => 'Luxury retail department store.',
          'Parallels' => 'Cloud services enablement and virtual access.',
          'Travelocity' => 'Online travel agency.',
          'Chosun' => 'News aggregates from BBC in Korean.',
          '360 Safeguard' => 'Chinese anti-virus software.',
          'Piksel' => 'Video streaming service.',
          'Jubii' => 'Web portal providing search engine, e-mail, and file sharing services.',
          'Octopz' => 'Web based collaboration tool.',
          'EQ Ads' => 'Advertisement site.',
          'TIME.com' => 'Webportal for TIME Magazine.',
          'TypePad' => 'Blogging service website.',
          'AOL Mail' => 'AOL\'s email client and webmail.',
          'OfficeMax' => 'Office supplies retailer.',
          'Engadget' => 'E-commerce for gadgets and electronics.',
          'LinkedIn Inbox' => 'Inbox session of LinkedIn.',
          'Ticketmaster' => 'Ticket sales and distribution website for concerts, sports events, etc.',
          'Djpod' => 'A suite of tools for podcasting.',
          'Stitcher' => 'Internet radio for news and talk shows.',
          'LinkedIn Profile' => 'Profile page while browsing through LinkedIn.',
          'Sanook.com' => 'Web portal for Entertainment purpose like games, lotery, news and music.',
          'Yandex' => 'Russian search engine.',
          'MKRU Streaming' => 'Live streaming for the Russian newspaper Moskovskij Komsomolets.',
          'AutoTrader.com' => 'Used car listings by owner or dealer.',
          'ProFlowers' => 'United States\' flower retailer.',
          'Aptean' => 'Enterprise software company.',
          'Craigslist' => 'Popular online classifieds.',
          'Smartsheet' => 'Smartsheet is a platform for organizational achievement.',
          'Hangame' => 'Korean online game portal.',
          'Gateway' => 'Manufacturer and retailer of PCs.',
          'Hola' => 'An open source VPN.',
          'In.com' => 'Entertainment news and media.',
          'Drugstore.com' => 'Online retailer for health, beauty, and wellness products.',
          'China News' => 'Chinese news site.',
          'Farmville' => 'A real-time farm simulation game developed by Zynga, available for Facebook and the iPhone.',
          'Entertainment Weekly' => 'Entertainment new and video clips.',
          'RetailMeNot' => 'Online coupon and deals.',
          'Tiffany & Co.' => 'Jewelry and silverware retailer.',
          'Investopedia' => 'A wiki focused on information related to investments.',
          'Blackberry sites' => 'Website for RIM\'s smartphone.',
          'LiveJournal' => 'Social blogging site.',
          'Adorama' => 'Online camera retailer.',
          'CloudMe' => 'Web desktop service.',
          'Office Depot' => 'Office supply retailer.',
          'Gaia Online' => 'Anime themed social networking and forums website.',
          'WebM Files' => 'Site for sharing videos in webm format.',
          'Overstock.com' => 'Online discount retailer.',
          'The Hollywood Reporter' => 'News related to the entertainment industry.',
          'Weather Underground' => 'Weather web portal.',
          'OverBlog' => 'Platform to create blogs.',
          'Nico Nico Douga Video' => 'Nico Nico Douga video streaming.',
          '4399.com' => 'Chinese gaming website.',
          'Discover' => 'Financial services company.',
          'Disney' => 'Official Disney website.',
          'NFL.com' => 'American football news.',
          'Daily Mail' => 'Web Portal for news update.',
          'CNN.com' => 'Turner Broadcasting System\'s news website.',
          'ShowClix' => 'A full-service ticketing company.',
          'PerfectIBE' => 'An air travel booking consolidation engine.',
          'Taobao' => 'Chinese online auction and shopping website.',
          'Monster VPN' => 'VPN Monster is a Russia-based VPN service provider',
          'VLC Media Player' => 'Free and open source media player.',
          'Wow' => 'A search engine.',
          'Afreeca' => 'Video streaming service based in South Korea.',
          'MetaFilter' => 'Community weblog for link sharing.',
          'FORA.tv' => 'Website hosting videos of live events, lectures, and debates.',
          'Playstation.com' => 'Sony Playstation related e-commerce.',
          'Wimbledon' => 'Tennis related website.',
          'The Onion' => 'Online humor and news satire site.',
          '39.net' => 'Chinese health information web portal.',
          'Bubble Witch Saga' => 'Witch-themed, bubble-bursting Facebook game.',
          'Autodesk' => 'A CAD and 3D printing software company,',
          'Writeboard' => 'Collaborative web based text editor.',
          'Tchibo' => 'German retailer with weekly changing products.',
          'Mibbit' => 'Web based chat client that supports IRC and Twitter.',
          'Weibo' => 'Chinese microblogging site produced by Sina.',
          'PC Connection' => 'Computer and electronic products retailer.',
          'Letterpress' => 'Word game for iOS.',
          'Ganji' => 'Chinese website for classified information.',
          'MegaMeeting' => 'Web based conferencing platform.',
          'Nate' => 'Web portal and Search engine.',
          'uTorrent' => 'BitTorrent client known for its lightweight and efficient design.',
          'Diamond Dash' => 'Matching game for Facebook.',
          'Ad Tech' => 'Advertisement site Adtech AG, part of AOL networks.',
          'Times Union' => 'News local to Albany, New York.',
          'PayPal' => 'E-commerce website for handling online transactions.',
          'BBC iPlayer' => 'Web and mobile app to watch BBC TV live.',
          'Eset' => 'Eset Antivirus/Security software download and updates.',
          'CBS Interactive' => 'Division of CBS Corporation which coordinates ad sales and television programs together.',
          'Game Informer' => 'Video game news, reviews, and previews website.',
          'LinkedIn Job Search' => 'The job search facility on LinkedIn.',
          'Issuu' => 'Web based document posting and sharing service.',
          'Southwest Airlines' => 'Airlines service in United States.',
          'The Pirate Bay' => 'BitTorrent index and search engine.',
          'Live365' => 'Internet radio.',
          'Al Jazeera' => 'News network based in the Arab world.',
          'Zhihu.com' => 'Chinese Q&A website.',
          'Yellow Pages' => 'Online directory and Mapping services.',
          'The Gap' => 'Clothing and accessories retailer, encompassing Gap, Old Navy, Banana Republic, Piperlime, and Athleta.',
          'Apple sites' => 'Apple corporate websites.',
          '4chan' => 'Website that hosts found images and discussions on them.',
          'Gyao' => 'Video streaming website by Yahoo! Japan.',
          'XM Radio Online' => 'Streaming audio.',
          'Kay Jewelers' => 'Retail jeweller.',
          'Zombo.com' => 'Website where you can do anything.',
          'iHeartRadio' => 'Website that provides streaming access to local and digital-only radio stations.',
          'Home Depot' => 'Retailer for home improvement and construction goods/products.',
          'UOL' => 'Brazilian web portal for news and entertainment.',
          'Jamendo' => 'Website that allows for the streaming, downloading, and uploading of free music.',
          'Space.com' => 'Provides news related to Space and Astronomy.',
          'Uploading.com' => 'File transfer website.',
          'Associated Press' => 'Official web site for the Associated Press, non-profit news agency.',
          'Moat' => 'Ad search and analystics.',
          'Lord & Taylor' => 'Specialty-retail department store chain.',
          'SHOWTIME ANYTIME' => 'On-Demand access for Showtime series, movies and other entertainments.',
          'Blizzard Downloader' => 'A tool used to download clients and other software for Blizzard games.',
          'Freee TV' => 'International television streaming.',
          'Joystiq' => 'Video gaming blog.',
          'AddThis' => 'Social bookmarking service.',
          'ZergNet' => 'Content aggregator for Sci-Fi Article.',
          'CC Studios' => 'Entertainment website focused on film and animation.',
          'Aliwangwang' => 'Instant messaging.',
          'About.com' => 'A site that provides original information on various subjects.',
          'Searchnu' => 'Search engine.',
          'Indeed' => 'The job search engine.',
          'Dell' => 'Computer and related technologies retailer.',
          'Monetate' => 'Advertisement site.',
          'Bizrate' => 'Lists best deals for online shopping.',
          'USA Today' => 'Website for newspaper USA Today.',
          'RealClearPolitics' => 'Political news, opinions and polls website.',
          'Qriocity' => 'Streaming music and video on demand service from Sony.',
          'FogBugz' => 'Web-based project management and bug tracking system.',
          'PNAS' => 'Offical journal from United States National Academy of Sciences.',
          'WPS Office' => 'Mobile app for viewing and editing documents, spreadsheet and PPTs.',
          '247 Inc.' => 'Advertisement site.',
          '1&1 Internet' => 'Internet and Domain name service provider.',
          'Alisoft' => 'IT company for wesites design and development.',
          'Salesforce.com Live Agent' => 'Salesforce.com\'s live chat support service.',
          'RuneScape' => 'Browser based fantasy role-playing game.',
          'QVC' => 'General shopping website in association with its related televised QVC broadcasts.',
          'B&H Photo Video' => 'Online retailer of cameras.',
          'Hideman Login' => 'Logging into Hideman internet anonymizer.',
          'QQ Music' => 'Tencent streaming music.',
          'OkCupid' => 'Online Dating website.',
          'Ameba' => 'Japanese blogging and social networking website.',
          'LiveStrong.com' => 'Health and fitness information.',
          'Ad Nexus' => 'Web advertisement services.',
          'TV Guide' => 'Listings and schedules for television programming.',
          'G4' => 'Video game news website to accompany its associated television channel.',
          'GTA Online' => 'Grand Theft Auto V, Video game series created by Rockstar Games.',
          'CBS Sports' => 'Sports news website.',
          'Widget Media' => 'Social networking and gaming sites.',
          'The Seattle Times' => 'Newspaper with a focus on the Seattle metro area.',
          'HootSuite' => 'Social Network management.',
          'AOL Games' => 'Online games on AOL.com.',
          'Alibaba' => 'International trade site.',
          'ZenMate' => 'Proxy and security add-on to browser.',
          'Quickflix' => 'DVD rental company based in Australia.',
          'China Daily' => 'Chinese news site.',
          'Synology DSM' => 'Synology is a Network Attached Storage (NAS) appliances running Synology\'s DSM Software.',
          'MKRU' => 'News website for the Russian newspaper Moskovskij Komsomolets.',
          'State Farm' => 'Insurance company.',
          'USAIP' => 'VPN software.',
          'Wolfram Alpha' => 'Online answering for queries from the structred data.',
          'LinkedIn Contacts' => 'LinkedIn application for networking with contacts.',
          'Rona' => 'Hardware, home improvement, and gardening products retailer based in Canada.',
          'Diigo' => 'Social bookmarking website for storing, sharing, and finding web bookmarks.',
          'CTV News' => 'News channel by CTV.',
          'PubNub' => 'Cloud-based system for apps that require data to be pushed in real time.',
          'Break.com' => 'Web portal for sharing funny videos and pictures.',
          'Blue Nile' => 'Online jewelry and diamonds retailer.',
          'WorldstarHipHop' => 'Entertainment, hip hop, music videos and blogs.',
          'BitTorrent' => 'A peer-to-peer file sharing protocol used for transferring large amounts of data.',
          'MTv' => 'Official website for MTv.',
          'Business Insider' => 'Online news web portal.',
          'NextBus' => 'Live updates on public transit system.',
          'Daum Cafe' => 'Daum forums and social networking.',
          'Kogan Technologies' => 'Australian retailer of consumer electronic devices.',
          'Tickets.com' => 'Ticket sales and distribution website for concerts, sports events, etc.',
          'Acer' => 'Manufacturer of PCs and laptops.',
          'Twitterrific' => 'Twitter client.',
          'Patch.com' => 'Local news website.',
          'Conviva' => 'Ad site.',
          'BBC' => 'Web Portal for news update.',
          'CamerasDirect.com.au' => 'Australian camera and photography gear retailer.',
          'Glype' => 'Web-based proxy.',
          'DSW' => 'Designer Shoe Warehouse - branded footwear.',
          'Tiger Direct' => 'Online computer and electronics retailer.',
          'Sina Video' => 'Video streaming from Chinese news/social website Sina.',
          'USPS' => 'US Postal Service website.',
          'INRIX' => 'Mobile app for Traffic related updates.',
          'Freelancer' => 'Site for job listings for temporary work.',
          'Zoho Mail' => 'Zoho webmail.',
          'Stack Overflow' => 'Question and Answering site for programmers.',
          'Showbox' => 'Mobile application providing streaming video content.',
          'BigUpload' => 'File hosting and sharing service.',
          'Zales' => 'Jewelry retailer.',
          'Naver Mail' => 'Naver webmail.',
          'Adobe Software' => 'Adobe software and updates.',
          'Weather.gov' => 'Weather web portal.',
          'Neustar Information Services' => 'Advertisement site.',
          'Soso' => 'Chinese search engine.',
          'Inbox.com' => 'Free web-based email service provider.',
          'Lineage' => 'Online game for multiplayer.',
          'The Guardian' => 'Online news portal.',
          'Lowe\'s' => 'Home improvement and appliance retailer.',
          'VeriSign' => 'SSL Certificates provider.',
          'Slacker' => 'Internet radio service.',
          'NIH' => 'National Institute of Health and Human services.',
          'studiVZ' => 'German online classroom / social network.',
          'Fancy' => 'Social media to share and buy items.',
          'VKontakte' => 'Russian social networking service.',
          'GOLF.com' => 'News, instruction and courses about Golf.',
          'StreetFire' => 'Video portal for Automotive enthusiasts.',
          'SoulSeek' => 'Peer-to-peer network.',
          '126.com' => 'Free webmail system.',
          'Funny or Die' => 'Site that presents humorous videos and media.',
          'Walgreens' => 'Online Pharmacy in United States.',
          'Surikate' => 'Ad site.',
          'ShareFile Upload SSL' => 'Securely send files. This app can be detected from decrypted traffic only.',
          'Baidu Movies' => 'Video search engine by Baidu.',
          'CheapTickets' => 'Travel services company focused on the leisure market.',
          'The Atlantic' => 'News portal.',
          'Battle.net site' => 'Website for Battle.net.',
          'PPTV' => 'Chinese file-streaming app.',
          'Woot' => 'Online retailer that sells one discount product a day.',
          'MobiTV' => 'A content aggregation company focusing on video.',
          'The Sharper Image' => 'General electronics and gifts retailer.',
          'AMD' => 'A manufacturer or PC chipsets.',
          'Windows Live SkyDrive' => 'Cloud based file hosting service.',
          'HostGator' => 'Web hosting portal.',
          'AllRecipes' => 'Recipes and cooking guide.',
          'Viki' => 'Watch and upload movies, TV shows and music online.',
          'GoToTraining' => 'Citrix GoToMeeting service focused on online training.',
          'The Week Magazine' => 'Online new magazine.',
          'Microsoft Azure' => 'Cloud computing by Microsoft.',
          'Staples' => 'Office supply retailer.',
          'Vonage' => 'Vonage is a VoIP company that provides telephone service via a broadband connection.',
          'Flexera Software' => 'Software tools for creating packages with compatible to cross platforms.',
          'Newser' => 'Online new portal.',
          'Netvibes' => 'Web portal.',
          'Game Front' => 'Gaming news, reviews, cheats, and walkthroughs,',
          'Fring' => 'A mobile messaging app.',
          'Wired.com' => 'Online magazine.',
          'Schwab' => 'Brokerage and banking company.',
          'Fetion' => 'Chinese instant messaging client.',
          'Forbes' => 'Website for Forbes, a business news magazine.',
          'Fnac' => 'International retail chain focused on cultural and electronic products.',
          'eyeReturn' => 'Advertisement site.',
          'GMX' => 'Free webmail and email service provider.',
          'KVOA.com' => 'NBC-affiliated news channel for Tucson, Arizona.',
          'Rhapsody' => 'Online streaming music service.',
          'ThinkGeek' => 'Clothing, electronics, and gadget retailer tailored towards technology and computer enthusiasts.',
          'FileDropper' => 'File hosting and sharing service.',
          'HSBC' => 'Global banking and financial services company.',
          'GameStop' => 'Video game retailer.',
          'Coupons.com' => 'An online coupons and deals website.',
          'VTunnel' => 'Web based proxy service.',
          'J&R' => 'Computer and electronics retailer.',
          'Bubble Island' => 'Social bubble bursting game for Facebook.',
          'RitzCamera.com' => 'Photography goods and electronics retailer.',
          'Tvigle' => 'Russian Video syndication website.',
          'Tinder' => 'Social Network for connecting people.',
          'MyOnlineArcade' => 'Free web based games.',
          'ClickBank' => 'Online marketplace for Digital products.',
          'Clarizen' => 'Work management and project management system.',
          'vente-privee.com' => 'Private online shopping club focused on fashion and lifestyle products.',
          'Menards' => 'Home improvement goods retailer.',
          'Nintendo WFC' => 'Nintendo Wi-Fi Connection, online multiplayer gaming service for Nintendo Wii and DS.',
          'CNET Download' => 'Download of content from CNET.',
          'Kohl\'s' => 'Department store/retailer.',
          '7digital' => 'Digital music and video delivery company.',
          'Daum Mail' => 'Daum webmail.',
          'Daum' => 'Popular South Korean web portal.',
          'Lijit' => 'Advertising and analystics company.',
          'Conduit' => 'Online website to create community toolbar.',
          'Stanford University' => 'Official website for Stanford University, Educational Institute.',
          'Goal' => 'Football news and statistics.',
          'eHow' => 'Website featuring tutorials on a wide variety of subjects.',
          'McAfee' => 'McAfee Antivirus/Security software download and updates.',
          'NCAA' => 'National Collegiate Athletic Association - non-profit association for athletic programs.',
          'Monster.com' => 'Online job search portal.',
          'Bluefly' => 'Online fashion retailer.',
          'EarthLink' => 'IT Solution provider for network and communications.',
          'Fox Sports' => 'Web Portal for Sports news update.',
          'Zoho Chat' => 'A web-enabled group chat application.',
          'Dropbox Download' => 'File download action of Dropbox.',
          'w3schools.com' => 'A web development learning website.',
          'Exponential Interactive' => 'Advertisement site.',
          'TMZ' => 'Entertainment news.',
          'Basecamp' => 'Web based project management tool.',
          'WarriorForum' => 'Internet Marketing Forums.',
          'Crackle' => 'Digital network providing streaming video content.',
          'Wikia' => 'Web portal to contribute and share the knowledge.',
          'Neteller' => 'Website for handling online payments and money transactions.',
          'Okurin' => 'Japanese file upload site.',
          'TD Ameritrade' => 'Online stock brokerage service.',
          'T. Rowe Price' => 'Public investment firm.',
          'The Hype Machine' => 'MP3 blog aggregator.',
          'ServiceNow' => 'Cloud storage provider.',
          'Hulu' => 'Video streaming.',
          'Disqus' => 'Company which provides discussion forum features.',
          'The Baltimore Sun' => 'Offcial website for the daily newspaper covering local and regional events in Baltimore.',
          'Viewsurf' => 'French video streaming and download site.',
          'Adify' => 'Advertisement site.',
          'Netlog' => 'Social networking site geared towards European youth.',
          'Kmart' => 'Discount department store/retailer.',
          'Aizhan' => 'Chinese web portal.',
          'Rockstar Games' => 'Developer and Publisher of video games.',
          'Doubleclick' => 'Web advertisement services.',
          'Car and Driver' => 'American automotive enthusiast news site.',
          'Delicious' => 'Social bookmarking website for storing, sharing, and finding web bookmarks.',
          'Realtor.com' => 'Web portal Real Estate.',
          'SugarCRM' => 'Customer relationship management software company.',
          'QDown' => 'Korean Entertainment web portal.',
          'Dictionary.com' => 'Online free dictionary.',
          'Washington Times' => 'Official web site for the Washington times news portal.',
          'Hotstar' => 'Video streaming app for Star India.',
          'The Daily Beast' => 'American news reporting and opinion website.',
          'Zoho Docs' => 'Online document management software that lets you manage and store all your files on the cloud.',
          'AOL' => 'American company develops, grows and invests in brands and web sites.',
          'Odnoklassniki' => 'Russian social networking service.',
          'Telecom Express' => 'Advertisement site.',
          'F-Prot' => 'F-Prot Antivirus/Security software download and updates.',
          'Yesky' => 'Chinese IT portal.',
          'Netflix stream' => 'Video streams from Netflix service.',
          'Sprint' => 'Voice, data and internet service provider.',
          'Nordstrom' => 'Retail department store.',
          'Tuenti' => 'Invite only social networking website based in Spain.',
          'Adblade' => 'Advertising platform.',
          'GOMTV Remote Control' => 'Mobile app that allows for remote control of GOM streaming to a television set or media player.',
          'Hulu Video' => 'Hulu Video streaming.',
          'Y8' => 'Internet gaming website.',
          'Yandex Images' => 'Yandex image search.',
          'Buffer' => 'App to share web pages with social media.',
          'WDT' => 'Weather Decision Technologies, a company that provides weather nowcasting apps.',
          'Weebly' => 'Free, online website creation tool.',
          'Saks Fifth Avenue' => 'Luxury, high-end specialty store.',
          'People.com' => 'Web portal for the Weekly magazine People.',
          'People\'s Daily' => 'Chinese news website.',
          'Cabal Online' => 'Online multiplayer games.',
          'Yahoo! Douga' => 'Yahoo! Japan video streaming site.',
          'Zoho Assist' => 'A remote support and remote access software.',
          'TwitPic' => 'Site for posting and sharing photos and videos on twitter.',
          'eBay Bid' => 'Bidding in an eBay Auction.',
          'WhereCoolThingsHappen' => 'Cool places and photos around the world.',
          'Manta' => 'Provides US company profiles and information.',
          'GameSpy' => 'Video game news, reviews, and previews website.',
          'Federated Media' => 'Advertisement site.',
          'Fab.com' => 'E-commerce for all articles.',
          'Ad Mob' => 'Web advertisement services.',
          'AdSame' => 'Chinese digital marketting platform.',
          'Fuyin.TV' => 'Chinese website for Christians.',
          'Zippyshare' => 'File hosting site.',
          'NewsNow' => 'News aggregator website that links to thousands of publications.',
          'Newsvine' => 'Community based collaborative news website.',
          'Yahoo! Toolbar' => 'Yahoo!\'s browser toolbar.',
          'Azure cloud portal' => 'Microsoft Azure cloud service portal.',
          'WhitePages Inc' => 'Business and People\'s Contact directory in United States.',
          'Zoho Connect' => 'A team collaboration software.',
          'Scribd' => 'Web based document posting and sharing service.',
          'Naver Cafe' => 'Naver forums and social networking.',
          'LinkedIn Upload' => 'Uploading resumes and other data to LinkedIn.',
          'spin.de' => 'German social network and dating site.',
          'Biography.com' => 'Stories, biographies about people.',
          'Softpedia' => 'Software download site.',
          'Libsyn' => 'Podcast hosting services.',
          'Marco Polo' => 'Marco Polo is a Mobile Social Media platform.',
          'Picasa' => 'Google picasa is an image organizer and image viewer for organizing and editing digital photos, plus an integrated photo-sharing website.',
          'YiXin' => 'Instant messaging for chat, file transfer service.',
          'Neckermann' => 'General goods online retailer.',
          'Weborama' => 'Video ad site.',
          'Vanguard' => 'Investment management company.',
          'Flipkart' => 'India-based shopping site.',
          'EA Games' => 'Web portal for Electronics Arts, a video games distributor.',
          'Dropbox Upload' => 'File upload action of Dropbox.',
          'Crutchfield' => 'Electronics retailer.',
          'myUdutu' => 'Online course authoring tool.',
          'AdNetwork.net' => 'Ad Portal.',
          'Clear Channel' => 'Aggregates online radio broadcasting.',
          'beRecruited' => 'College athletic social networking site.',
          'Sam\'s Club' => 'Warehouse club\'s online retail site.',
          'Level 3' => 'Level 3 Communications content delivery network.',
          'Infusionsoft' => 'Software company providing solutions for sales and marketing.',
          'AccuWeather' => 'Weather forecasting website.',
          '2345.com' => 'Web portal.',
          'GoToMyPC' => 'PC remote control software.',
          'Webs' => 'Photo, video, and file sharing, and online marketplace.',
          'CDiscount' => 'French online retailer.',
          'Myspace Videos' => 'Videos sharing service by Myspace.',
          'YY' => 'Chinese Chat application.',
          'The Huffington Post' => 'Online news website.',
          'Nintendo' => 'Content delivery and web traffic from Nintendo, a Japanese company.',
          'California.gov' => 'California government official website.',
          'Newegg' => 'Computer hardware and software retailer.',
          'Filemail' => 'File hosting and sharing service.',
          'Web Of Trust' => 'Community-based website reputation rating tool.',
          'Adweek' => 'Marketing, Media and advertising news.',
          'WD softwares Download/Update' => 'Update/Download software provided by western digital.',
          'Sohu.com' => 'Chinese search engine with other services like games, advertising, etc.',
          'Detroit Free Press' => 'News local to Detroit metropolitan area.',
          'Ancestry.com' => 'Online family history resource.',
          'Media Hub' => 'Samsung video store.',
          'Autoblog' => 'Automobile news and information site.',
          'eRecht24' => 'Russian Web portal for all legal related information.',
          'Michigan Radio' => 'Public radio serving the American state of Michigan.',
          'Okta' => 'An enterprise service that manages login credentials in the cloud.',
          'Shoplet' => 'Office products retailer.',
          'Etao' => 'Chinese web portal.',
          'Adobe Analytics' => 'Traffic going to Adobe Analytics websites such as scene7.com, demdex.net, omtrdc.net, and 2o7.net.',
          'Baidu Yun' => 'Baidu cloud storage and P2P file transfer.',
          'Mikogo' => 'Desktop sharing application.',
          'DingDing' => 'Instant messaging & Collaboration software.',
          'Proxistore' => 'Advertising and analytics site.',
          'POLITICO.com' => 'News portal.',
          'Blackboard' => 'Online course management system.',
          'Guangming Online' => 'Chinese news site.',
          'Pastebin.com' => 'Online whiteboard application.',
          'StubHub' => 'Website for buying and selling tickets for sports, concerts, and other events.',
          'Cute Overload' => 'Pictures,videos and stories about Animals.',
          'CafeMom' => 'Social networking site targeted towards mothers.',
          'TopTenREVIEWS' => 'Information, Reviews and recommendation about the product.',
          'Phoca' => 'Software components useful for web design.',
          'CNZZ' => 'Advertisement site.',
          'MGID' => 'Service provider for advertising and marketing.',
          'Kotaku' => 'Video game focused blog.',
          'Motorola' => 'Manufacturer of mobile devices and telephony equipment.',
          'House of Fraser' => 'British department store.',
          'wimp.com' => 'Site that provides links to viral videos.',
          'Aweber' => 'Email marketing Service.',
          'BaiduHi' => 'Baidu instant messaging.',
          'VoiceFive' => 'Advertisement site.',
          'Avaya' => 'Network and Communication solution provider.',
          'Verizon' => 'Internet, TV and Phone service provider.',
          'Yahoo!' => 'Yahoo! and it\'s online services.',
          'Licorize' => 'Social bookmarking service.',
          'Comedy Central' => 'Official website of Comedy Central, Television channel.',
          'IKEA.com' => 'Online storefront for international furniture retailer.',
          'VPNReactor' => 'An anonymizer that obfuscates web usage.',
          'Wood TV8' => 'Michigan TV news network.',
          'Tencent Video' => 'Tencent streaming video.',
          'Songza' => 'Web radio and music streaming service.',
          'Reuters' => 'News portal.',
          'Intel' => 'Computer chip builder.',
          'The Independent' => 'Online portal for UK based and world news.',
          'Adtech' => 'Advertisement site.',
          'Ustream.tv' => 'Video streaming and sharing.',
          'Zol.com.cn' => 'Online website for IT professional.',
          'Wachovia' => 'Financial services company.',
          'MovieTickets.com' => 'Webportal for advanced movie ticketing, reviews and celebrity interviews.',
          'REI' => 'Outdoor sporting clothing and gear retailer.',
          'WTOP' => 'Official web site for WTOP FM.',
          'Sears' => 'Department store retailer.',
          'Blizzard' => 'The website for Blizzard Software, a popular PC and console game company.',
          'FOX' => 'Official website for Fox entertainment.',
          'Kontiki' => 'Cloud based enterprise for video platform.',
          'Phanfare' => 'Subscription based photo and video sharing service.',
          'Skyrock' => 'Social networking site popular in France.',
          'news.com.au' => 'News site based in Australia.',
          'InsightExpress' => 'Analyser for online and Mobile advertisements.',
          'Blockbuster' => 'Movie and video game rental/streaming website.',
          'OneDrive' => 'Microsoft cloud storage offering, successor to SkyDrive.',
          'Show My Weather' => 'Weather forecast site.',
          'Commvault' => 'Enterprise data backup and storage management software.',
          'Youku' => 'Chinese video hosting and sharing service.',
          'GREE' => 'Japanese mobile social game developer.',
          'ShopNBC' => 'General shopping website in association with it\'s related televised shopNBC broadcasts.',
          'De Telegraaf' => 'Dutch daily newspaper site.',
          'Napster' => 'Audio streaming and MP3 store.',
          'Ace Hardware Corporation' => 'Home improvement goods and hardware retailer.',
          'Mininova' => 'BitTorrent downloads website.',
          'Progressive' => 'Insurance company.',
          'Gizmodo' => 'Blogs about design and technology.',
          'Balatarin' => 'Social bookmarking and community website aimed at an Iranian audience.',
          'Chatroulette' => 'Service that pairs random strangers for video chat.',
          'Admin5' => 'Chinese directory of web admins.',
          'SOUNDROP' => 'Listen to music online.',
          'ibVPN Login' => 'Logins to the ibVPN personal VPN service.',
          'Webhard' => 'Online storage service available in Korean and English.',
          'Plista' => 'Marketing analytics site.',
          'Komli Media' => 'Online marketing and advertising.',
          'Goodreads' => 'Book review and cataloging.',
          'Clip2Net Upload' => 'Copying a local file to Clip2Net.',
          'QQ' => 'Chinese instant messaging software.',
          'USAA' => 'Insurance company.',
          'Livefyre' => 'Real-Time tools for socializing the web-sites.',
          'Joomla' => 'Content Management System for building web sites.',
          'Sky.com' => 'Web portal for news.',
          'MapQuest' => 'Map and Driving service by AOL.',
          'Habbo' => 'Social networking site aimed at teenagers.',
          'Trac' => 'Web based bug tracking and project management tool.',
          'Fileguri' => 'Korean file sharing web site.',
          'Western Digital' => 'Data storage company and hard disk drive manufacturers.',
          'RuTube' => 'Russian online video sharing service.',
          'StayFriends' => 'German school focused social network.',
          'Swarovski' => 'Retailer for jewelry and other related luxury products.',
          'Clubbox' => 'Korean online movie/channel/music.',
          'NBC News' => 'NBCUniversal\'s news website.',
          'American Express' => 'Financial services company.',
          'ToysRUs' => 'Official website for ToyRUs, which deals with toys.',
          'iAstrology' => 'Facebook astrology app.',
          'CareerBuilder.com' => 'Online job search portal.',
          'ESTsoft' => 'Provides software tools and online games.',
          'WeChat' => 'Mobile text and voice messaging application.',
          'LiveJournal Post' => 'Making a post on social networking site livejournal.',
          'The Escapist Magazine' => 'Online Magazine for Video game lovers.',
          'Xbox Live sites' => 'XBox Live related websites.',
          'TripAdvisor' => 'Travel services site for information and reviews regarding travel related content.',
          'Dillards' => 'Retail department store.',
          'FilmOn' => 'Subscription based video on demand and TV streaming service.',
          'Wii' => 'Video games console by Nintendo.',
          'Delta Search' => 'A search engine, with a toolbar that is commonly installed by mistake.',
          'Ad Master' => 'Advertisement site.',
          'Baidu' => 'Chinese Search engine.',
          'CNET TV' => 'Videos on tech and gadget related website.',
          'OpenBSD' => 'Open source code for security, enterprise and server.',
          'Macy\'s' => 'Department store chain.',
          'Renren' => 'Chinese social networking site.',
          'Cyworld' => 'South Korean social networking service.',
          'Apache Nutch' => 'Open soruce web crawler.',
          'Ybrant Digital' => 'Advertisement site.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  'ssl_host_group_334_part3',
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

gSSLHostPatternList = {
    -- ProxEasy
    { 0, 1001, 'proxeasy.com' },
    -- Qriocity
    { 0, 1002, 'qriocity.com' },
    -- RuneScape
    { 0, 1003, 'runescape.com' },
    -- Scribd
    { 0, 1005, 'scribd.com' },
    -- Songza
    { 0, 1006, 'songza.com' },
    -- Tudou
    { 0, 1014, 'tudou.com' },
    -- Tuenti
    { 0, 1016, 'tuenti.com' },
    -- VKontakte
    { 0, 1018, 'vk.com' },
    { 0, 1018, 'vkontakte.ru' },
    -- VTunnel
    { 0, 1019, 'vtunnel.com' },
    -- Webhard
    { 0, 1020, 'webhard.co.kr' },
    { 0, 1020, 'webhard.net' },
    -- Weibo
    { 0, 1022, 'weibo.com' },
    -- Writeboard
    { 0, 1026, 'writeboard.com' },
    -- BigUpload
    { 0, 1027, 'bigupload.com' },
    -- Clarizen
    { 0, 1028, 'clarizen.com' },
    -- 56.com
    { 0, 1031, '56.com' },
    -- 51.com
    { 0, 1032, '51.com' },
    -- Youku
    { 0, 1033, 'youku.com' },
    -- Crackle
    { 0, 1034, 'crackle.com' },
    -- RuTube
    { 0, 1035, 'rutube.ru' },
    -- Afreeca
    { 0, 1037, 'afreeca.com' },
    { 0, 1037, 'afreecatv.com' },
    { 0, 1037, 'bizafreeca.com' },
    -- Babelgum
    { 0, 1038, 'babelgum.com' },
    -- Octopz
    { 0, 1040, 'octopz.com' },
    -- Phanfare
    { 0, 1046, 'phanfare.com' },
    -- FilmOn
    { 0, 1048, 'filmon.com' },
    -- Mibbit
    { 0, 1049, 'mibbit.com' },
    -- BigBlueButton
    { 0, 1050, 'bigbluebutton.org' },
    -- MegaMeeting
    { 0, 1052, 'megameeting.co' },
    -- Badoo
    { 0, 1053, 'badoo.com' },
    -- CloudMe
    { 0, 1055, 'cloudme.com' },
    -- Skyrock
    { 0, 1057, 'skyrock.com' },
    -- Jubii
    { 0, 1060, 'jubii.dk' },
    -- TwitPic
    { 0, 1063, 'twitpic.com' },
    -- yfrog
    { 0, 1064, 'yfrog.com' },
    -- hi5.com
    { 0, 1066, 'hi5.com' },
    -- Livemocha
    { 0, 1067, 'livemocha.com' },
    -- Slacker
    { 0, 1068, 'slacker.com' },
    -- Douban
    { 0, 1069, 'douban.com' },
    -- Odnoklassniki
    { 0, 1070, 'odnoklassniki.ru' },
    -- Gaia Online
    { 0, 1071, 'gaiaonline.com' },
    -- AutoZone
    { 0, 1073, 'autozone.com' },
    -- Tesco.com
    { 0, 1077, 'tesco.com' },
    -- 4chan
    { 0, 1079, '4chan.org' },
    -- Rhapsody
    { 0, 1081, 'rhapsody.com' },
    -- Balatarin
    { 0, 1082, 'balatarin.com' },
    -- PC Connection
    { 0, 1109, 'pcconnection.com' },
    -- CafeMom
    { 0, 1129, 'cafemom.com' },
    -- Mininova
    { 0, 1133, 'mininova.org' },
    -- PayPal
    { 0, 1134, 'paypal.com' },
    -- Pinterest
    { 0, 1135, 'pinimg.com' },
    -- The Pirate Bay
    { 0, 1136, 'pirate-proxy.com' },
    { 0, 1136, 'pirateproxy.click' },
    { 0, 1136, 'proxybay.me' },
    { 0, 1136, 'proxybay.nl' },
    { 0, 1136, 'quluxingba.info' },
    { 0, 1136, 'thepiratebayorg.org' },
    { 0, 1136, 'tpb.herokuapp.com' },
    { 0, 1136, 'tpb.torrentproxy.nl' },
    { 0, 1136, 'tpbproxy.me' },
    { 0, 1136, 'tpbunion.com' },
    -- Technorati
    { 0, 1137, 'technorati.com' },
    -- TypePad
    { 0, 1139, 'typepad.com' },
    -- Bubble Witch Saga
    { 0, 1159, 'bubblewitch.king.com' },
    -- Diamond Dash
    { 0, 1161, 'dd.t.wooga.com' },
    { 0, 1161, 'dd.wooga.com' },
    -- Words With Friends
    { 0, 1163, 'zyngawithfriends.com' },
    -- About.com
    { 0, 1167, 'about.com' },
    -- CNET
    { 0, 1170, 'cnet.com' },
    -- CNET Download
    { 0, 1171, 'download.cnet.com' },
    -- w3schools.com
    { 0, 1180, 'w3schools.com' },
    -- Weebly
    { 0, 1181, 'weebly.com' },
    { 0, 1181, 'weeblyimages1.com' },
    -- Apple sites
    { 0, 1185, 'imacstore.com' },
    -- CNN.com
    { 0, 1190, 'cnn-f.akamaihd.net' },
    { 0, 1190, 'cnnchile.com' },
    { 0, 1190, 'cnnios-f.akamaihd.net' },
    { 0, 1190, 'cnnmexico.com' },
    -- IMDB
    { 0, 1191, 'imdb.com' },
    -- BC News
    { 0, 1192, 'msnbc.com' },
    { 0, 1192, 'msnbc.msn.com' },
    -- Dictionary.com
    { 0, 1195, 'dictionary.com' },
    { 0, 1195, 'dictionary.reference.com' },
    -- Bing Maps
    { 0, 1197, 'maps.bing.com' },
    -- 126.com
    { 0, 1206, '126.com' },
    -- 39.net
    { 0, 1207, '39.net' },
    -- Aizhan
    { 0, 1208, 'aizhan.com' },
    -- tease
    { 0, 1222, 'netease.com' },
    -- Soku
    { 0, 1226, 'soku.com' },
    -- Webs
    { 0, 1228, 'freewebs.com' },
    { 0, 1228, 'webs.com' },
    -- Bejeweled Chrome Extension
    { 0, 1229, 'bejeweled.popcap.com' },
    { 0, 1229, 'gats.popcap.com' },
    -- iAstrology
    { 0, 1238, 'horoscope.s3.amazonaws.com' },
    -- Bejeweled Blitz
    { 0, 1252, 'labs.popcap.com' },
    -- Bubble Island
    { 0, 1254, 'bi.wooga.com' },
    { 0, 1256, '4399.cn' },
    { 0, 1256, '4399.com' },
    -- Admin5
    { 0, 1258, 'admin5.com' },
    -- Wretch
    { 0, 1262, 'wretch.cc' },
    { 0, 1263, 'y8.com' },
    -- The New York Times
    { 0, 1299, 'nyt.com' },
    -- Twitter Link Service
    { 0, 1300, 't.co' },
    -- Yahoo! Finance
    { 0, 1301, 'finance.yahoo.com' },
    -- Ad Mob
    { 0, 1307, 'admob.com' },
    -- ver
    { 0, 1309, 'naver.jp' },
    { 0, 1309, 'naver.net' },
    -- Advertising.com
    { 0, 1310, 'advertising.com' },
    -- Doubleclick
    { 0, 1313, 'doubleclick.com' },
    -- Ad Nexus
    { 0, 1314, 'ib.adnxs.com' },
    -- Pandora TV
    { 0, 1327, 'pandora.tv' },
    -- eBay Bid
    { 0, 133, 'offer.befr.ebay.be' },
    { 0, 133, 'offer.benl.ebay.be' },
    { 0, 133, 'offer.ebay.at' },
    { 0, 133, 'offer.ebay.ca' },
    { 0, 133, 'offer.ebay.ch' },
    { 0, 133, 'offer.ebay.co.uk' },
    { 0, 133, 'offer.ebay.com.au' },
    { 0, 133, 'offer.ebay.com.hk' },
    { 0, 133, 'offer.ebay.com.my' },
    { 0, 133, 'offer.ebay.com.sg' },
    { 0, 133, 'offer.ebay.com' },
    { 0, 133, 'offer.ebay.de' },
    { 0, 133, 'offer.ebay.es' },
    { 0, 133, 'offer.ebay.fr' },
    { 0, 133, 'offer.ebay.ie' },
    { 0, 133, 'offer.ebay.in' },
    { 0, 133, 'offer.ebay.it' },
    { 0, 133, 'offer.ebay.nl' },
    { 0, 133, 'offer.ebay.ph' },
    { 0, 133, 'offer.ebay.pl' },
    -- USA Today
    { 0, 1335, 'usatoday.com' },
    -- Millennial Media
    { 0, 1337, 'ads.mp.mydas.mobi' },
    { 0, 1337, 'millennialmedia.com' },
    -- Weather Underground
    { 0, 1338, 'wunderground.com' },
    { 0, 1338, 'wxug.com' },
    -- Clubbox
    { 0, 1340, 'clubbox.co.kr' },
    -- Kiwoom
    { 0, 1341, 'kiwoom.com' },
    -- DCinside
    { 0, 1342, 'dcinside.com' },
    -- te
    { 0, 1343, 'nate.com' },
    -- Fileguri
    { 0, 1344, 'fileguri.com' },
    -- Baidu
    { 0, 1345, 'baidu.com' },
    { 0, 1345, 'bdstatic.com' },
    -- How
    { 0, 1363, 'ehow.com' },
    -- ESPN
    { 0, 1364, 'espncdn.com' },
    -- Fox News
    { 0, 1366, 'foxnews-f.akamaihd.net' },
    { 0, 1366, 'foxnews.com' },
    { 0, 1366, 'foxnews.demdex.net' },
    -- Weather.gov
    { 0, 1368, 'weather.gov' },
    -- The Huffington Post
    { 0, 1370, 'huffingtonpost.co.uk' },
    -- Conduit
    { 0, 1375, 'getu.com' },
    -- BBC
    { 0, 1376, 'bbc.co.uk' },
    { 0, 1376, 'bbc.com' },
    { 0, 1376, 'cbeebies.com' },
    { 0, 1376, 'feeds.bbci.co.uk' },
    -- Indeed
    { 0, 1378, 'indeed.com' },
    -- Publishers Clearing House
    { 0, 1379, 'pch.com' },
    -- Aweber
    { 0, 1381, 'aweber.com' },
    -- Fox Sports
    { 0, 1382, 'foxsports.com' },
    -- Searchnu
    { 0, 1383, 'searchnu.com' },
    -- Wall Street Journal
    { 0, 1390, 'fins.com' },
    { 0, 1390, 'smartmoney.com' },
    -- Daily Mail
    { 0, 1391, 'dailymail.co.uk' },
    -- Taobao
    { 0, 1399, 'taobao.com' },
    -- Engadget
    { 0, 1401, 'engadget.com' },
    -- Eclipse Updates
    { 0, 1412, 'download.eclipse.org' },
    -- Eclipse Marketplace
    { 0, 1414, 'marketplace.eclipse.org' },
    -- AOL
    { 0, 1419, 'aol.co.uk' },
    { 0, 1419, 'aol.ie' },
    { 0, 1419, 'aol.in' },
    { 0, 1419, 'aol.sg' },
    -- AdNetwork.net
    { 0, 1425, 'adnetwork.net' },
    -- Wolfram Alpha
    { 0, 1429, 'wolframalpha.com' },
    -- Eset
    { 0, 143, 'eset.eu' },
    { 0, 143, 'eset.sk' },
    -- VeriSign
    { 0, 1458, 'verisign.com' },
    -- CBS Sports
    { 0, 1459, 'cbssports.com' },
    -- InsightExpress
    { 0, 1461, 'ad.insightexpressai.com' },
    { 0, 1461, 'insightexpress.com' },
    -- Monster.com
    { 0, 1481, 'monster.com' },
    -- MapQuest
    { 0, 1482, 'mapquest.com' },
    -- Swagbucks
    { 0, 1483, 'swagbucks.com' },
    -- Verizon
    { 0, 1484, 'verizon.com' },
    { 0, 1484, 'verizon.net' },
    -- Wikia
    { 0, 1485, 'a.wikia-beacon.com' },
    { 0, 1485, 'wikia.com' },
    { 0, 1485, 'wikia.nocookie.net' },
    -- TMZ
    { 0, 1486, 'tmz.com' },
    -- HootSuite
    { 0, 1489, 'hootsuite.com' },
    -- Coupons.com
    { 0, 1490, 'coupons.com' },
    -- CareerBuilder.com
    { 0, 1491, 'careerbuilder.com' },
    { 0, 1491, 'icbdr.com' },
    -- Fiverr
    { 0, 1493, 'fiverr.com' },
    { 0, 1493, 'fiverrcdn.com' },
    -- AllRecipes
    { 0, 1496, 'allrecipes.com' },
    -- Yellow Pages
    { 0, 1497, 'yellowpages.com' },
    { 0, 1497, 'yp.com' },
    -- Bleacher Report
    { 0, 1498, 'bleacherreport.com' },
    { 0, 1498, 'bleacherreport.net' },
    -- Stack Overflow
    { 0, 1499, 'cdn.sstatic.net' },
    { 0, 1499, 'stackoverflow.com' },
    -- Ancestry.com
    { 0, 1501, 'ancestry.com' },
    -- Business Insider
    { 0, 1505, 'businessinsider.com' },
    -- People.com
    { 0, 1506, 'peoplestylewatch.com' },
    { 0, 1506, 'timeinc.net' },
    -- Reuters
    { 0, 1507, 'reuters.com' },
    { 0, 1507, 'reutersmedia.com' },
    -- California.gov
    { 0, 1509, 'ca.gov' },
    -- Farmville
    { 0, 151, 'farmville.com' },
    -- Southwest Airlines
    { 0, 1510, 'southwest.com' },
    { 0, 1510, 'southwestairlines.tt.omtrdc.net' },
    -- IH
    { 0, 1511, 'nih.gov' },
    -- WhitePages Inc
    { 0, 1512, 'whitepages.com' },
    -- MGID
    { 0, 1513, 'mgid.com' },
    -- EarthLink
    { 0, 1514, 'earthlink.net' },
    { 0, 1514, 'earthlinkbusiness.com' },
    -- Disney
    { 0, 1515, 'disney.co.uk' },
    { 0, 1515, 'disney.com' },
    { 0, 1515, 'disneyinternational.com' },
    -- POLITICO.com
    { 0, 1516, 'politico.com' },
    -- Examiner.com
    { 0, 1518, 'examiner.com' },
    -- RetailMeNot
    { 0, 1519, 'retailmenot.com' },
    { 0, 1519, 'rmncdn.com' },
    -- AddThis
    { 0, 1520, 'addthis.com' },
    -- OkCupid
    { 0, 1522, 'okccdn.com' },
    { 0, 1522, 'okcimg.com' },
    { 0, 1522, 'okcupid.com' },
    -- Patch.com
    { 0, 1523, 'patch.com' },
    -- Realtor.com
    { 0, 1525, 'realtor.com' },
    -- Intuit
    { 0, 1526, 'intuit.com' },
    { 0, 1526, 'intuitstatic.com' },
    -- The Blaze
    { 0, 1527, 'gbtv.com' },
    { 0, 1527, 'theblaze.com' },
    -- HostGator
    { 0, 1528, 'hostgator.com' },
    -- Food Network
    { 0, 1529, 'foodnetwork.com' },
    -- ClickBank
    { 0, 1530, 'clickbank.com' },
    -- Cox
    { 0, 1531, 'cox.com' },
    { 0, 1531, 'cox.net' },
    -- Mashable
    { 0, 1532, 'mshcdn.com' },
    -- AccuWeather
    { 0, 1533, 'accuweather.com' },
    -- Sprint
    { 0, 1534, 'sprint.com' },
    -- Goodreads
    { 0, 1535, 'goodreads.com' },
    -- LiveStrong.com
    { 0, 1536, 'livestrong.com' },
    -- RealClearPolitics
    { 0, 1537, 'realclearpolitics.com' },
    -- Manta
    { 0, 1538, 'manta.com' },
    -- CNBC
    { 0, 1540, 'cnbc.com' },
    -- Widget Media
    { 0, 1541, 'widgetmedia.net' },
    -- Inbox.com
    { 0, 1542, 'inbox.com' },
    -- teller
    { 0, 1544, 'neteller.com' },
    -- T Mobile
    { 0, 1545, 'tmobile.com' },
    { 0, 1545, 'tmobile.tt.omtrdc.net' },
    -- Walgreens
    { 0, 1546, 'walgreens.com' },
    -- WorldstarHipHop
    { 0, 1547, 'worldstarhiphop.com' },
    -- PR
    { 0, 1548, 'npr.org' },
    -- Kayak
    { 0, 1549, 'kayak.com' },
    -- ToysRUs
    { 0, 1550, 'trus.imageg.net' },
    -- Sohu.com
    { 0, 1552, 'sohu.com' },
    -- 1&1 Internet
    { 0, 1553, '1and1.com' },
    -- Ameba
    { 0, 1554, 'ameba.jp' },
    -- Avaya
    { 0, 1555, 'avaya.com' },
    -- Snort.org
    { 0, 1557, 'snort.org' },
    -- Disqus
    { 0, 1558, 'disqus.com' },
    -- Infusionsoft
    { 0, 1559, 'infusionsoft.com' },
    -- Alisoft
    { 0, 1561, 'alisoft.net' },
    -- Salesforce.com Live Agent
    { 0, 1562, 'liveagentforsalesforce.com' },
    { 0, 1562, 'salesforce.com' },
    -- Fab.com
    { 0, 1567, 'fab.com' },
    -- Java Update
    { 0, 1569, 'javadl-esd.sun.com' },
    { 0, 1569, 'javadl.sun.com' },
    -- GoToMyPC
    { 0, 1598, 'gotomypc.com' },
    -- USPS
    { 0, 1601, 'uspspostalone.com' },
    -- FogBugz
    { 0, 161, 'fogbugz.com' },
    -- Yandex
    { 0, 1616, 'yandex.net' },
    -- The Guardian
    { 0, 1618, 'guardiannews.com' },
    -- F-Prot
    { 0, 162, 'f-prot.com' },
    -- WarriorForum
    { 0, 1622, 'warriorforum.com' },
    -- Indiatimes
    { 0, 1623, 'indiatimes.com' },
    -- UOL
    { 0, 1626, 'imguol.com' },
    { 0, 1626, 'jsuol.com' },
    -- LeTV
    { 0, 1650, 'letv.com' },
    -- Tianya
    { 0, 1651, 'tianya.cn' },
    { 0, 1651, 'tianyaui.com' },
    -- YY
    { 0, 1663, 'hiido.cn' },
    { 0, 1663, 'hiido.com' },
    { 0, 1663, 'yy.com' },
    -- LINE
    { 0, 1667, 'line.naver.jp' },
    -- Fancy
    { 0, 1668, 'thefancy.s3.amazonaws.com' },
    -- Flexera Software
    { 0, 1676, 'flexerasoftware.com' },
    { 0, 1676, 'installshield.com' },
    -- OsiriX
    { 0, 1677, 'osirix-viewer.com' },
    -- SOUNDROP
    { 0, 1695, 'soundrop.fm' },
    -- Vine
    { 0, 1700, 'vines.s3.amazonaws.com' },
    -- Linux Mint
    { 0, 1707, 'linuxmint.com' },
    -- Playstation.com
    { 0, 1754, 'playstation.com' },
    -- VLC Media Player
    { 0, 1756, 'videolan.org' },
    -- Bizrate
    { 0, 1782, 'bizrate.com' },
    -- Cute Overload
    { 0, 1784, 'cuteoverload.com' },
    { 0, 1784, 'cuteoverload.files.wordpress.com' },
    -- Cheezburger
    { 0, 1785, 'cheezburger.com' },
    -- theCHIVE
    { 0, 1788, 'cdn.thechivemobile.com.edgesuite.net' },
    { 0, 1788, 'chivethethrottle.files.wordpress.com' },
    { 0, 1788, 'shechive.files.wordpress.com' },
    { 0, 1788, 'theberry.com' },
    { 0, 1788, 'thebrigade.com' },
    { 0, 1788, 'thechive.com' },
    { 0, 1788, 'thethrottle.thechive.com' },
    -- ZergNet
    { 0, 1790, 'zergnet.com' },
    -- WhereCoolThingsHappen
    { 0, 1791, 'wherecoolthingshappen.com' },
    -- Feedly
    { 0, 1799, 'feedly.com' },
    -- MTv
    { 0, 1805, 'mtv.com' },
    { 0, 1805, 'mtvn.demdex.net' },
    { 0, 1805, 'mtvnimages.com' },
    -- PubNub
    { 0, 1822, 'pubnub.com' },
    -- Nintendo WFC
    { 0, 1826, 'nintendowifi.net' },
    -- BC
    { 0, 1988, 'nbcdotcom-f.akamaihd.net' },
    { 0, 1988, 'nbcudigitaladops.com' },
    { 0, 1988, 'nbcuni.com' },
    { 0, 1988, 'nbcustr.netmng.com' },
    { 0, 1988, 'nbcvod-i.akamaihd.net' },
    -- Space.com
    { 0, 1990, 'space.com' },
    -- PixelMags
    { 0, 1993, 'pixelmags.com' },
    -- Zmags
    { 0, 1994, 'zmags.app4.hubspot.com' },
    -- ESTsoft
    { 0, 1996, 'estsoft.com' },
    -- Cabal Online
    { 0, 1997, 'cabal.estgames.com' },
    { 0, 1997, 'cabalsea.com' },
    -- Biography.com
    { 0, 2002, 'biography.com' },
    { 0, 2002, 'biography.disqus.com' },
    -- Comedy Central
    { 0, 2004, 'cc.com' },
    { 0, 2004, 'colbertnation.com' },
    { 0, 2004, 'colbertnation.mtvnimages.com' },
    { 0, 2004, 'comedycentral.com' },
    { 0, 2004, 'jokes.com' },
    { 0, 2004, 'jokes.mtvnimages.com' },
    { 0, 2004, 'thedailyshow.com' },
    { 0, 2004, 'thedailyshow.mtvnimages.com' },
    { 0, 2004, 'viacomedycentral.112.2o7.net' },
    -- Wired.com
    { 0, 2005, 'wiredinsider.tumblr.com' },
    { 0, 2005, 'wiredopinion.disqus.com' },
    -- E! Online
    { 0, 2006, 'eonline.com' },
    -- HL.com
    { 0, 2007, 'nhl.cdnllnwnl.neulion.net' },
    -- TopTenREVIEWS
    { 0, 2016, 'toptenreviews.com' },
    -- Adweek
    { 0, 2017, 'adweek.com' },
    { 0, 2017, 'adweekmedia.disqus.com' },
    -- The Week Magazine
    { 0, 2018, 'theweekus.disqus.com' },
    -- wser
    { 0, 2020, 'newser.com' },
    -- FOX
    { 0, 2050, 'fbchdvod-f.akamaihd.net' },
    { 0, 2050, 'fox.com' },
    { 0, 2050, 'foxnet.demdex.net' },
    { 0, 2050, 'foxnetworks.tt.omtrdc.net' },
    -- Washington Times
    { 0, 2051, 'washingtontimes.com' },
    { 0, 2051, 'washtimes.com' },
    { 0, 2051, 'washtimes.disqus.com' },
    -- xtBus
    { 0, 2052, 'nextbus.com' },
    -- OpenBSD
    { 0, 2053, 'openbsd.com' },
    { 0, 2053, 'openbsd.org' },
    -- Associated Press
    { 0, 2054, 'ap.org' },
    -- WTOP
    { 0, 2055, 'wtop.com' },
    -- OpenSUSE
    { 0, 2056, 'opensuse.com' },
    -- NCAA
    { 0, 2058, 'ncaa.com' },
    { 0, 2058, 'ncaa.org' },
    -- DSW
    { 0, 2059, 'dsw.112.2o7.net' },
    -- Livefyre
    { 0, 2062, 'livefyre.com' },
    -- Clear Channel
    { 0, 2064, 'clearchannelinternational.com' },
    -- GOLF.com
    { 0, 2065, 'golf.com' },
    -- Woopra
    { 0, 2069, 'disqus.com' },
    -- OCLC
    { 0, 2070, 'oclc.org' },
    -- Chosun
    { 0, 2071, 'chosun.com' },
    -- Game Front
    { 0, 2082, 'gamefront.com' },
    -- BitCoin
    { 0, 2083, 'bitcoin.org' },
    -- Letterpress
    { 0, 2091, 'atebits.com' },
    -- Entertainment Weekly
    { 0, 2095, 'timeinc.net' },
    -- Speedtest
    { 0, 2103, 'speedtest.centurylink.net' },
    { 0, 2103, 'speedtest.net' },
    -- Boxnet Upload SSL
    { 0, 2104, 'upload.box.com' },
    -- Flickr Upload
    { 0, 2105, 'flickr.com' },
    { 0, 2105, 'up.flickr.com' },
    -- Scribd Upload
    { 0, 2106, 'scribd.com' },
    -- Microsoft Azure
    { 0, 2111, 'thewindowsazureproductsite.disqus.com' },
    -- Adblade
    { 0, 2116, 'adblade.com' },
    -- Blackberry sites
    { 0, 2119, 'blackberry.com' },
    -- Djpod
    { 0, 2120, 'djpod.com' },
    -- MyOnlineArcade
    { 0, 2123, 'myonlinearcade.com' },
    -- SmugMug
    { 0, 2124, 'smugmug.com' },
    -- USAA
    { 0, 2126, 'usaa.com' },
    -- wimp.com
    { 0, 2127, 'wimp.com' },
    -- Show My Weather
    { 0, 2130, 'showmyweather.com' },
    -- MobiTV
    { 0, 2131, 'mobitv.com' },
    -- TV Guide
    { 0, 2132, 'tvguide.com' },
    -- Media Hub
    { 0, 2136, 'samsungmediahub.net' },
    -- CheapOAir
    { 0, 2137, 'cheapoair.com' },
    -- Intel
    { 0, 2143, 'intel.com' },
    -- AMD
    { 0, 2144, 'amd.com' },
    -- Acer
    { 0, 2146, 'acer.com' },
    -- Gateway
    { 0, 2147, 'gateway.com' },
    -- Motorola
    { 0, 2149, 'motorola.com' },
    -- Progressive
    { 0, 2152, 'progressive.com' },
    -- State Farm
    { 0, 2153, 'statefarm.com' },
    -- Liberty Mutual
    { 0, 2156, 'libertymutual.com' },
    -- PerfectIBE
    { 0, 2162, 'perfectibe.com' },
    -- Funny or Die
    { 0, 2163, 'funnyordie.com' },
    { 0, 2163, 'ordienetworks.com' },
    -- Zombo.com
    { 0, 2165, 'zombo.com' },
    -- Viki
    { 0, 2171, 'viki.com' },
    -- Al Jazeera
    { 0, 2180, 'aljazeera.com' },
    { 0, 2180, 'aljazeera.net' },
    -- Wimbledon
    { 0, 2181, 'wimbledon.com' },
    -- Times Union
    { 0, 2183, 'timesunion.com' },
    -- beRecruited
    { 0, 2184, 'berecruited.com' },
    -- Detroit Free Press
    { 0, 2186, 'freep.com' },
    -- Michigan Radio
    { 0, 2188, 'michiganradio.org' },
    -- De Telegraaf
    { 0, 2189, 'telegraaf.nl' },
    -- The Daily Beast
    { 0, 2191, 'thedailybeast.com' },
    -- The Free Dictionary
    { 0, 2192, 'thefreedictionary.com' },
    -- The Onion
    { 0, 2193, 'theonion.com' },
    -- Collider
    { 0, 2207, 'collider.com' },
    -- WordReference.com
    { 0, 2208, 'wordreference.com' },
    -- SpeedRunsLive
    { 0, 2238, 'speedrunslive.com' },
    -- WDT
    { 0, 2240, 'wdtinc.com' },
    -- Twitterrific
    { 0, 2241, 'twitterrific.com' },
    -- The Seattle Times
    { 0, 2242, 'seattletimes.com' },
    -- Okta
    { 0, 2246, 'okta.com' },
    -- ike
    { 0, 2247, 'nike.com' },
    -- Libsyn
    { 0, 2248, 'libsyn.com' },
    -- Investopedia
    { 0, 2250, 'investopedia.com' },
    -- The Hollywood Reporter
    { 0, 2251, 'hollywoodreporter.com' },
    -- CNET TV
    { 0, 2256, 'cnettv.cnet.com' },
    -- Adap.tv
    { 0, 2261, 'adap.tv' },
    -- Drugs.com
    { 0, 2269, 'drugs.com' },
    -- Wood TV8
    { 0, 2285, 'woodtv.com' },
    -- uTorrent
    { 0, 2299, 'utorrent.com' },
    -- Tinder
    { 0, 2302, 'gotinder.com' },
    -- Apache Nutch
    { 0, 2330, 'gotinder.com' },
    { 0, 2330, 'nutch.apache.org' },
    { 0, 2346, '2345.cn' },
    { 0, 2346, '2345.com' },
    -- Forbes
    { 0, 2347, 'forbes.com' },
    -- Freee TV
    { 0, 2348, 'freeetv.com' },
    -- IKEA.com
    { 0, 2349, 'ikea.is' },
    -- CBS Interactive
    { 0, 2354, 'cbsinteractive.com' },
    -- MyWebSearch
    { 0, 2365, 'mywebsearch.com' },
    -- Uploading.com
    { 0, 2366, 'uploading.com' },
    -- Fring
    { 0, 2368, 'fring.com' },
    -- China.com
    { 0, 2371, 'china.com' },
    -- In.com
    { 0, 2372, 'in.com' },
    -- FL.com
    { 0, 2376, 'nfl.com' },
    -- wetpaint entertainment
    { 0, 2378, 'wetpaint.com' },
    { 0, 2378, 'wetpaint.me' },
    -- PPTV
    { 0, 2380, 'pptv.com' },
    -- Alibaba
    { 0, 2386, 'alibabagroup.com' },
    -- Etao
    { 0, 2388, 'etao.com' },
    -- Amazon
    { 0, 24, 'amazon-presse.de' },
    -- 33Across
    { 0, 2419, '33across.com' },
    { 0, 2419, 'tynt.com' },
    -- The Atlantic
    { 0, 2424, 'atlanticmedia.122.2o7.net' },
    { 0, 2424, 'theatlantic.com' },
    { 0, 2424, 'theatlantic.disqus.com' },
    -- StreetFire
    { 0, 2426, 'streetfire.disqus.com' },
    -- Buffer
    { 0, 2428, 'buffer.com' },
    { 0, 2428, 'bufferapp.com' },
    -- The Escapist Magazine
    { 0, 2430, 'escapistmagazine.com' },
    -- Grantland
    { 0, 2432, 'grantland.com' },
    -- The Independent
    { 0, 2433, 'independent.co.uk' },
    { 0, 2433, 'independentnews.disqus.com' },
    -- Komli Media
    { 0, 2463, 'komli.com' },
    -- Android.com
    { 0, 2470, 'android.com' },
    -- Skype for Business
    { 0, 2474, 'products.office.com' },
    -- Freelancer
    { 0, 2483, 'freelancer.co.uk' },
    -- Goal
    { 0, 2484, 'goal.com' },
    -- 247 Inc.
    { 0, 2492, '247-inc.com' },
    -- 24/7 Media
    { 0, 2493, '247media.com' },
    -- SLI Systems
    { 0, 2494, 'sli-systems.co.jp' },
    { 0, 2494, 'sli-systems.com.au' },
    { 0, 2494, 'sli-systems.com.br' },
    -- OwnerIQ
    { 0, 2495, 'owneriq.com' },
    -- Monetate
    { 0, 2496, 'monetate.com' },
    -- Adtech
    { 0, 2503, 'adtech-kansai.com' },
    { 0, 2503, 'adtech-tokyo.com' },
    -- Amobee
    { 0, 2504, 'amobee.com' },
    -- Mobile Theory
    { 0, 2506, 'mobiletheory.com' },
    -- Casale
    { 0, 2512, 'casalemedia.com' },
    -- Exponential Interactive
    { 0, 2518, 'exponential.com' },
    -- Media6Degrees
    { 0, 2522, 'media6degrees.com' },
    -- eyeReturn
    { 0, 2526, 'eyeReturn.com' },
    { 0, 2526, 'eyereturnmarketing.com' },
    -- InSkin Media
    { 0, 2527, 'inskinad.com' },
    { 0, 2527, 'inskinmedia.com' },
    -- TubeMogul
    { 0, 2534, 'tubemogul.com' },
    -- ustar Information Services
    { 0, 2537, 'neustarlife.biz' },
    { 0, 2537, 'neustarsummit.biz' },
    { 0, 2537, 'tcpacompliance.com' },
    -- EQ Ads
    { 0, 2539, 'eqworks.com' },
    -- Ybrant Digital
    { 0, 2546, 'lygo.com' },
    { 0, 2546, 'www.volomp.com' },
    { 0, 2546, 'ybrantmobile.com' },
    -- Federated Media
    { 0, 2559, 'federatedmedia.net' },
    -- Adify
    { 0, 2570, 'adify.com' },
    -- Aptean
    { 0, 2581, 'aptean.com' },
    -- VoiceFive
    { 0, 2584, 'VoiceFive.com' },
    -- Telecom Express
    { 0, 2588, 'www.telecomexpress.co.uk' },
    -- CNZZ
    { 0, 2597, 'cnzz.com' },
    -- Softonic
    { 0, 2599, 'softonic.cn' },
    { 0, 2599, 'softonic.com.br' },
    { 0, 2599, 'softonic.de' },
    { 0, 2599, 'softonic.fr' },
    { 0, 2599, 'softonic.it' },
    { 0, 2599, 'softonic.jp' },
    { 0, 2599, 'softonic.pl' },
    -- Softpedia
    { 0, 2606, 'softpedia.com' },
    -- China News
    { 0, 2610, 'chinanews.com.cn' },
    { 0, 2610, 'chinanews.com' },
    -- Nico Nico Douga Video
    { 0, 2611, 'live.nicovideo.jp' },
    -- Aliwangwang
    { 0, 2617, 'taobao.com' },
    { 0, 2617, 'wangwang.taobao.com' },
    { 0, 2617, 'wangxin.taobao.com' },
    -- WeChat
    { 0, 2618, 'wechat.com' },
    -- Xbox Live sites
    { 0, 2626, 'xbox.com' },
    -- Windows Phone sites
    { 0, 2627, 'windowsphone.com' },
    -- GOMTV Remote Control
    { 0, 2638, 'remoteapi.gomlab.com' },
    -- Live365
    { 0, 264, 'live365.com' },
    -- GoToTraining
    { 0, 2642, 'gototraining.com' },
    -- PNAS
    { 0, 2651, 'pnascentral.org' },
    -- Stitcher
    { 0, 2653, 'stitcher.assets.s3.amazonaws.com' },
    -- The Baltimore Sun
    { 0, 2656, 'baltimoresun.com' },
    -- Dilbert.com
    { 0, 2657, 'dilbert.com' },
    -- INRIX
    { 0, 2662, 'inrix.com' },
    -- Lijit
    { 0, 2663, 'lijit.com' },
    -- Moat
    { 0, 2664, 'moat.com' },
    { 0, 2664, 'moatads.com' },
    { 0, 2664, 'moatsearch-data.s3.amazonaws.com' },
    -- Break.com
    { 0, 2666, 'breakmedia.com' },
    -- ibVPN Login
    { 0, 2680, 'ibvpn.com' },
    -- Hideman Login
    { 0, 2681, 'mc.yandex.ru' },
    -- Fuyin.TV
    { 0, 2696, 'fuyin.tv' },
    -- SHOWTIME ANYTIME
    { 0, 2697, 'sho.com' },
    -- Sky.com
    { 0, 2699, 'news.sky.com' },
    { 0, 2699, 'skynews.com' },
    { 0, 2699, 'skysports.com' },
    -- EA Games
    { 0, 2701, 'easports.com' },
    { 0, 2701, 'maxis.com' },
    { 0, 2701, 'simcity.com' },
    { 0, 2701, 'thesims.com' },
    -- Gizmodo
    { 0, 2705, 'gizmodo.com' },
    -- SimplePie
    { 0, 2706, 'simplepie.org' },
    -- Zippyshare
    { 0, 2738, 'zippyshare.com' },
    -- GTA Online
    { 0, 2740, 'rockstargames.com' },
    -- Rockstar Games
    { 0, 2747, 'rockstargames.com' },
    { 0, 2747, 'rockstarleeds.co.uk' },
    { 0, 2747, 'rockstarlincoln.com' },
    { 0, 2747, 'rockstarnewengland.com' },
    { 0, 2747, 'rockstarnorth.com' },
    { 0, 2747, 'rockstarsandiego.com' },
    { 0, 2747, 'rockstartoronto.com' },
    -- CTV News
    { 0, 2751, 'ctvnews.cookieless.ca' },
    -- KVOA.com
    { 0, 2753, 'kvoa.com' },
    -- MovieTickets.com
    { 0, 2755, 'movieticketscom.122.2o7.net' },
    -- Tvigle
    { 0, 2761, 'tvigle.com' },
    { 0, 2761, 'tvigle.ru' },
    -- SFGate
    { 0, 2765, 'sfgate.com' },
    -- Library of Congress
    { 0, 2766, 'loc.gov' },
    -- OverBlog
    { 0, 2767, 'over-blog-kiwi.com' },
    { 0, 2767, 'over-blog.net' },
    { 0, 2767, 'overblog.com' },
    -- TIME.com
    { 0, 2770, 'timeinc.net' },
    -- Phoca
    { 0, 2771, 'phoca.cz' },
    -- Joomla
    { 0, 2779, 'joomla.org' },
    { 0, 2779, 'joomlacode.org' },
    -- Stanford University
    { 0, 2783, 'gostanford.com' },
    -- Recht24
    { 0, 2785, 'e-recht24.de' },
    -- European Union
    { 0, 2786, 'europa.eu' },
    -- McAfee
    { 0, 280, 'mcafee12.tt.omtrdc.net' },
    -- Parallels
    { 0, 2802, 'parallels.com' },
    -- Office 365
    { 0, 2812, 'Home.Office.com' },
    { 0, 2812, 'Portal.Office.com' },
    -- Picsearch
    { 0, 2816, 'picsearch.com' },
    -- Fetion
    { 0, 2817, 'feixin.10086.cn' },
    -- Okurin
    { 0, 2822, 'okurin.bitpark.co.jp' },
    -- Wii
    { 0, 2830, 'wii.com' },
    -- GREE
    { 0, 2828, 'gree.net.s3.amazonaws.com' },
    { 0, 2828, 'gree.net' },
    -- Hangame
    { 0, 2832, 'hangame.co.jp' },
    -- SugarCRM
    { 0, 2833, 'sugarcrm.com' },
    -- Pastebin.com
    { 0, 2839, 'pastebin.com' },
    -- Zhihu.com
    { 0, 2840, 'zhihu.com' },
    -- Adobe Analytics
    { 0, 2846, 'adobe.tt.omtrdc.net' },
    -- AdSame
    { 0, 2849, 'adsame.com' },
    -- Ganji
    { 0, 2854, 'ganji.com' },
    -- BBC iPlayer
    { 0, 2857, 'bbc.co.uk' },
    -- Zol.com.cn
    { 0, 2866, 'zol-img.com.cn' },
    { 0, 2866, 'zol.com.cn' },
    -- Baidu Movies
    { 0, 2869, 'movie.baidu.com' },
    { 0, 2869, 'v.baidu.com' },
    { 0, 2869, 'video.baidu.com' },
    -- Mikogo
    { 0, 2875, 'mikogo.com' },
    -- Xunlei Kankan
    { 0, 2878, 'kankan.com' },
    { 0, 2878, 'sandai.net' },
    { 0, 2878, 'xlpan.com' },
    { 0, 2878, 'xunlei.com' },
    -- Myspace Photos
    { 0, 2882, 'myspace.com' },
    -- Myspace Videos
    { 0, 2883, 'myspace.com' },
    -- Gyao
    { 0, 2885, 'gyao.c.yimg.jp' },
    { 0, 2885, 'gyao.yahoo.co.jp' },
    -- Glype
    { 0, 2891, 'glype.com' },
    -- GMX
    { 0, 2892, 'gmx.co' },
    -- Sanook.com
    { 0, 2893, 'sanook.com' },
    -- Dropbox Upload
    { 0, 2895, 'dropbox.com' },
    -- Dropbox Download
    { 0, 2896, 'dropbox.com' },
    -- Dropbox Share
    { 0, 2897, 'dropbox.com' },
    -- LinkedIn Profile
    { 0, 2903, 'linkedin.com' },
    -- LinkedIn Inbox
    { 0, 2904, 'linkedin.com' },
    -- YiXin
    { 0, 2914, 'netease.com' },
    -- Tomatopang
    { 0, 2943, 'tomatopang.net' },
    -- Sina Video
    { 0, 2948, 'video.sina.com' },
    -- Crackle Video
    { 0, 2955, 'crackle.com' },
    -- LinkedIn Upload
    { 0, 2963, 'linkedin.com' },
    { 0, 2963, 'slideshare.www.linkedin.com' },
    -- ster
    { 0, 319, 'napster.co.uk' },
    { 0, 319, 'napster.com' },
    -- VPNReactor
    { 0, 3652, 'vpnreactorsupport.com' },
    { 0, 3652, 'vprdownload.com' },
    -- Delta Search
    { 0, 3657, 'delta-search.com' },
    { 0, 3657, 'royal-search.com' },
    -- news.com.au
    { 0, 3671, 'news.com.au' },
    -- Soso
    { 0, 3673, 'soso.com' },
    -- Ad4mat
    { 0, 3702, 'ad4mat.com' },
    { 0, 3702, 'ad4mat.de' },
    { 0, 3702, 'ad4mat.net' },
    -- Cedexis
    { 0, 3705, 'cedexis.com' },
    -- L'equipe.fr
    { 0, 3711, 'lequipe.fr' },
    { 0, 3711, 'lequipe21.fr' },
    { 0, 3711, 'logc215.xiti.com' },
    -- Piksel
    { 0, 3716, 'piksel.com' },
    -- Proxistore
    { 0, 3717, 'proxistore.com' },
    -- Surikate
    { 0, 3719, 'surikate.com' },
    -- Viewsurf
    { 0, 3722, 'viewsurf.com' },
    -- Weborama
    { 0, 3723, 'weborama.fr' },
    -- XiTi
    { 0, 3724, 'atinternet.com' },
    -- OneDrive
    { 0, 3735, 'ssw.live.com' },
    -- LinkedIn Contacts
    { 0, 3736, 'contacts.linkedin.com' },
    -- Rackspace
    { 0, 3737, 'rackspace.com' },
    -- ServiceNow
    { 0, 3738, 'servicenow.com' },
    -- PPStream
    { 0, 374, 'pps.tv' },
    { 0, 374, 'ppstream.com' },
    -- Blizzard Downloader
    { 0, 3744, 'dist.blizzard.com.edgesuite.net' },
    { 0, 3744, 'dist.blizzard.com' },
    -- Blizzard
    { 0, 3745, 'blizzard.com' },
    { 0, 3745, 'blzstatic.cn' },
    { 0, 3745, 'blznews.akamaized.net' },
    { 0, 3745, 'blzprofile.akamaized.net' },
    { 0, 3745, 'blzmedia-a.akamaihd.net' },
    -- Battle.net site
    { 0, 3749, 'battle.net' },
    -- USAIP
    { 0, 3755, 'usaip.eu' },
    -- Yahoo! Douga
    { 0, 3756, 'streaming.yahoo.co.jp' },
    -- Clip2Net
    { 0, 3782, 'clip2net.com' },
    -- Clip2Net Upload
    { 0, 3783, 'clip2net.com' },
    -- Yesky
    { 0, 3790, 'yesky.com' },
    -- Lineage
    { 0, 3801, 'lineage.com' },
    { 0, 3801, 'lineage.plaync.com' },
    { 0, 3801, 'lineage2.com' },
    -- MapleStory
    { 0, 3802, 'maplestory.nexon.net' },
    -- Level 3
    { 0, 3805, 'level3.com' },
    -- MissLee
    { 0, 3815, 'misslee.net' },
    -- QDown
    { 0, 3817, 'qdown.com' },
    -- BaiduHi
    { 0, 3838, 'im.baidu.com' },
    -- Ad Master
    { 0, 3846, 'admaster.com.cn' },
    -- Ad Tech
    { 0, 3847, 'adtech.com' },
    { 0, 3847, 'adtech.de' },
    { 0, 3847, 'adtechus.com' },
    { 0, 3847, 'oneadserver.aol.com' },
    -- QQ
    { 0, 386, 'qpic.cn.com' },
    -- ShareFile Upload SSL
    { 0, 3861, 'sharefile.com' },
    -- 360 Safeguard
    { 0, 3866, '360.cn' },
    -- People's Daily
    { 0, 3868, 'people.com.cn' },
    -- China Daily
    { 0, 3871, 'chinadaily.com.cn' },
    -- Guangming Online
    { 0, 3872, 'gmw.cn' },
    -- Autodesk
    { 0, 3888, 'autodesk.com' },
    -- Intralinks
    { 0, 3891, 'intralinks.com' },
    -- Plista
    { 0, 3897, 'plista.com' },
    -- Wow
    { 0, 3910, 'wow.com' },
    -- Conviva
    { 0, 3931, 'conviva.com' },
    -- QQ Music
    { 0, 3941, 'y.gtimg.cn' },
    -- Tencent Video
    { 0, 3942, 'vm.gtimg.cn' },
    -- Hulu Video
    { 0, 3946, 'hulu.com' },
    -- Flipkart
    { 0, 3970, 'flipkart.com' },
    -- F-secure
    { 0, 3989, 'f-secure.com' },
    -- SUPERAntiSpyware
    { 0, 3991, 'superantispyware.com' },
    -- ZenMate
    { 0, 3994, 'zenguard.biz' },
    -- WPS Office
    { 0, 4010, 'kingsoftstore.com' },
    { 0, 4010, 'wps.cn' },
    -- Kontiki
    { 0, 4013, 'kontiki.com' },
    -- Western Digital
    { 0, 4039, 'wdc.com' },
    -- WD softwares Download/Update
    { 0, 4040, 'download.wdc.com' },
    -- Hola
    { 0, 4041, 'luminati-io-china.com' },
    { 0, 4041, 'luminatinet.com' },
    { 0, 4041, 'thecodeil.com' },
    { 0, 4041, 'topvpn.io' },
    { 0, 4041, 'whatismyippro.com' },
    { 0, 4041, 'zon-networks.com' },
    -- Baidu Yun
    { 0, 4043, 'yun.baidu.com' },
    -- Burnbook
    { 0, 4046, 'p.typekit.net' },
    -- ver Blog
    { 0, 4050, 'blog.naver.com' },
    { 0, 4050, 'blog.poll.naver.com' },
    { 0, 4050, 'blogfiles13.naver.net' },
    { 0, 4050, 'blogfiles4.naver.net' },
    { 0, 4050, 'blogfiles5.naver.net' },
    { 0, 4050, 'blogfiles9.naver.net' },
    { 0, 4050, 'blogimgs.naver.com' },
    { 0, 4050, 'blogimgs.naver.net' },
    { 0, 4050, 'blogpfthumb.phinf.naver.net' },
    { 0, 4050, 'blogthumb2.naver.net' },
    { 0, 4050, 'mblogthumb4.phinf.naver.net' },
    { 0, 4050, 'static.naver.net' },
    -- ver Cafe
    { 0, 4051, 'cafe.naver.com' },
    { 0, 4051, 'cafefiles.naver.net' },
    { 0, 4051, 'cafeimgs.naver.net' },
    { 0, 4051, 'cafeptthumb1.phinf.naver.net' },
    { 0, 4051, 'cafeptthumb2.phinf.naver.net' },
    { 0, 4051, 'cafeptthumb3.phinf.naver.net' },
    { 0, 4051, 'cafeptthumb4.phinf.naver.net' },
    { 0, 4051, 'lcs.naver.com' },
    { 0, 4051, 'static.naver.net' },
    -- Daum Cafe
    { 0, 4053, 'cafeimg.daum-img.net' },
    -- ver Mail
    { 0, 4054, 'mail.naver.com' },
    { 0, 4054, 'static.naver.net' },
    -- Daum Mail
    { 0, 4055, 'mail.daum.net' },
    -- Yandex Images
    { 0, 4060, 'yandex.com' },
    -- Messenger
    { 0, 4073, 'chat.messenger.com' },
    -- Synology DSM
    { 0, 4089, 'checkip.synology.com' },
    { 0, 4089, 'download.synology.com' },
    { 0, 4089, 'keymaker.synology.com' },
    { 0, 4089, 'update.synology.com' },
    { 0, 4089, 'www.synology.com' },
    -- LiveJournal Post
    { 0, 4090, 'livejournal.com' },
    -- Mail.ru Attachment
    { 0, 4091, 'an.yandex.ru' },
    { 0, 4091, 'cloud.mail.ru' },
    { 0, 4091, 'docs.mail.ru' },
    { 0, 4091, 'e.mail.ru' },
    { 0, 4091, 'gstat.imgsmail.ru' },
    { 0, 4091, 'mail.ru' },
    { 0, 4091, 'stat.radar.imgsmail.ru' },
    -- WebM Files
    { 0, 4109, 'webmfiles.org' },
    -- AOL Games
    { 0, 4117, 'games.aol.co.uk' },
    { 0, 4117, 'games.aol.com' },
    { 0, 4117, 'games.aol.de' },
    { 0, 4117, 'spiele.aol.de' },
    -- Nintendo
    { 0, 4130, 'nintendo.fr' },
    -- Elephant Drive
    { 0, 4143, 'bucket1-direct-elephantdrive-com.s3.amazonaws.com' },
    { 0, 4143, 'distribution.vaultservices.net' },
    { 0, 4143, 'seal.starfieldtech.com' },
    -- Showbox
    { 0, 4149, 'apk.org' },
    { 0, 4149, 'apkmirror.com' },
    { 0, 4149, 'infogeeker.com.com' },
    { 0, 4149, 'showbox.org' },
    { 0, 4149, 'showboxapp.com' },
    { 0, 4149, 'showboxappandroid.com' },
    { 0, 4149, 'showboxappdownload.co' },
    { 0, 4149, 'showboxappdownloads.com' },
    -- Hotstar
    { 0, 4153, 'hotstar-sin.gravityrd-services.com' },
    { 0, 4153, 'media0-starag.startv.in' },
    { 0, 4153, 'media1-starag.startv.in' },
    { 0, 4153, 'media2-starag.startv.in' },
    { 0, 4153, 'staragvod3-vh.akamaihd.net' },
    -- DingDing
    { 0, 4163, 'dingtalkapps.com' },
    -- SoulSeek
    { 0, 442, 'slsknet.org' },
    { 0, 442, 'soulseekqt.net' },
    -- MKRU
    { 0, 4522, 'mk.ru' },
    -- MKRU Streaming
    { 0, 4523, 'tv.mk.ru' },
    -- Azure cloud portal
    { 0, 4533, 'security.azure.com' },
    -- Zoho SalesIQ Chat
    { 0, 4546, 'zoho.com' },
    -- Zoho Social
    { 0, 4547, 'zoho.com' },
    -- Zoho Connect
    { 0, 4548, 'zoho.com' },
    -- Zoho Docs
    { 0, 4549, 'zoho.com' },
    -- Zoho Assist
    { 0, 4550, 'zoho.com' },
    -- Disney Plus
    { 0, 4617, 'cdn.registerdisney.go.com' },
    { 0, 4617, 'disneyplus.bn5x.net' },
    { 0, 4617, 'disneyplus.com.ssl.sc.omtrdc.net' },
    { 0, 4617, 'disneyplus.com' },
    -- Monster VPN
    { 0, 4618, 'monstervpn.tech' },
    -- Demio
    { 0, 4620, 'event.demio.com' },
    -- Smartsheet
    { 0, 4621, 'app.10000ft.com' },
    { 0, 4621, 'app.smartsheet.com' },
    { 0, 4621, 'smartsheet.com.com' },
    -- Marco Polo
    { 0, 4622, 'marcopolo.me' },
    -- Vonage
    { 0, 495, 'vonage.com' },
    -- Wordpress
    { 0, 506, 'wordpress.org' },
    -- Yahoo!
    { 0, 524, 'yahoo.net' },
    { 0, 524, 'yimg.com' },
    -- Zoho
    { 0, 528, 'zoho.com' },
    { 0, 528, 'zohopublic.com' },
    { 0, 528, 'zohostatic.com' },
    -- Zoho Chat
    { 0, 529, 'chat.zoho.com' },
    { 0, 529, 'cliq.zoho.com' },
    { 0, 529, 'zoho.com' },
    -- Zoho Mail
    { 0, 530, 'zoho.com' },
    -- 1-800-Flowers
    { 0, 535, '1800flowers.com' },
    -- 2channel
    { 0, 537, '2ch.net' },
    -- 6pm.com
    { 0, 538, '6pm.com' },
    -- Ace Hardware Corporation
    { 0, 539, 'acehardware.com' },
    -- Adobe Software
    { 0, 541, 'adobe.com' },
    -- Adorama
    { 0, 542, 'adorama.com' },
    -- American Express
    { 0, 544, 'americanexpress.ae' },
    { 0, 544, 'americanexpress.ch' },
    -- AOL Mail
    { 0, 546, 'mail.aol.se' },
    -- CC Studios
    { 0, 556, 'cc.com' },
    -- Autoblog
    { 0, 557, 'autoblog.com' },
    -- AutoTrader.com
    { 0, 558, 'autotrader.com' },
    -- B&H Photo Video
    { 0, 559, 'bhphotovideo.com' },
    -- Basecamp
    { 0, 563, 'basecamphq.com' },
    -- Best Buy
    { 0, 567, 'bestbuy.com' },
    -- Black & Decker Corporation
    { 0, 572, 'blackanddecker.com' },
    -- Blockbuster
    { 0, 575, 'blockbusteronline.com.br' },
    -- Bloomingdales
    { 0, 577, 'bloomingdales.com' },
    -- Blue Nile
    { 0, 578, 'bluenile.com' },
    -- Bluefly
    { 0, 579, 'bluefly.com' },
    -- CamerasDirect.com.au
    { 0, 581, 'camerasdirect.com.au' },
    -- Capital One
    { 0, 582, 'capitalone.ca' },
    -- Car and Driver
    { 0, 583, 'caranddriver.com' },
    -- CarMax
    { 0, 584, 'carmax.com' },
    -- CDiscount
    { 0, 585, 'cdiscount.com' },
    -- CheapTickets
    { 0, 588, 'cheaptickets.com' },
    -- City Sports
    { 0, 591, 'citysports.com' },
    -- Costco
    { 0, 593, 'costco.ca' },
    -- Craigslist
    { 0, 594, 'craigslist.ca' },
    { 0, 594, 'craigslist.ch' },
    { 0, 594, 'craigslist.de' },
    { 0, 594, 'craigslist.es' },
    { 0, 594, 'craigslist.gr' },
    { 0, 594, 'craigslist.hk' },
    { 0, 594, 'craigslist.it' },
    { 0, 594, 'craigslist.jp' },
    { 0, 594, 'craigslist.pl' },
    { 0, 594, 'craigslist.pt' },
    { 0, 594, 'craigslist.se' },
    -- Crutchfield
    { 0, 595, 'crutchfield.com' },
    -- Delicious
    { 0, 605, 'icio.us' },
    -- Dell
    { 0, 606, 'dell.com' },
    -- BitTorrent
    { 0, 61, 'bittorrent.com' },
    -- Diigo
    { 0, 612, 'diigo.com' },
    -- Dillards
    { 0, 613, 'dillards.com' },
    -- Discover
    { 0, 615, 'discoverbank.com' },
    -- Blackboard
    { 0, 62, 'blackboard.com' },
    { 0, 62, 'blackboardcollaborate.com' },
    -- Drugstore.com
    { 0, 620, 'drugstore.com' },
    -- Expedia
    { 0, 628, 'expedia.at' },
    { 0, 628, 'expedia.be' },
    { 0, 628, 'expedia.ca' },
    { 0, 628, 'expedia.de' },
    { 0, 628, 'expedia.dk' },
    { 0, 628, 'expedia.es' },
    { 0, 628, 'expedia.fr' },
    { 0, 628, 'expedia.ie' },
    { 0, 628, 'expedia.it' },
    { 0, 628, 'expedia.nl' },
    { 0, 628, 'expedia.no' },
    { 0, 628, 'expedia.se' },
    -- Facebook
    { 0, 629, 'fbcdn.net' },
    -- Fidelity
    { 0, 636, 'fidelity-international.com' },
    { 0, 636, 'fidelity-italia.it' },
    { 0, 636, 'fidelity.at' },
    { 0, 636, 'fidelity.de' },
    { 0, 636, 'fidelity.fr' },
    { 0, 636, 'fidelity.nl' },
    { 0, 636, 'fidelity.se' },
    -- Fnac
    { 0, 640, 'fnac.ch' },
    { 0, 640, 'fnac.com' },
    { 0, 640, 'fnac.es' },
    { 0, 640, 'fnac.pt' },
    -- FTD
    { 0, 644, 'ftd.com' },
    { 0, 646, 'g4tv.com' },
    -- Game Informer
    { 0, 647, 'gameinformer.com' },
    -- GameSpy
    { 0, 649, 'gamespy.com' },
    -- GameStop
    { 0, 650, 'gamestop.ca' },
    { 0, 650, 'gamestop.com' },
    { 0, 650, 'gamestop.de' },
    { 0, 650, 'gamestop.dk' },
    { 0, 650, 'gamestop.es' },
    { 0, 650, 'gamestop.fi' },
    { 0, 650, 'gamestop.ie' },
    { 0, 650, 'gamestop.it' },
    { 0, 650, 'gamestop.no' },
    { 0, 650, 'gamestop.pt' },
    { 0, 650, 'gamestop.se' },
    -- GameTrailers
    { 0, 651, 'gametrailers.com' },
    -- Haiku Learning Systems
    { 0, 669, 'haikulearning.com' },
    -- Home Depot
    { 0, 670, 'homedepot.ca' },
    { 0, 670, 'homedepot.com' },
    -- House of Fraser
    { 0, 674, 'houseoffraser.co.uk' },
    -- HSBC
    { 0, 675, 'hsbc.am' },
    { 0, 675, 'hsbc.bm' },
    { 0, 675, 'hsbc.ca' },
    { 0, 675, 'hsbc.fr' },
    { 0, 675, 'hsbc.ge' },
    { 0, 675, 'hsbc.gr' },
    { 0, 675, 'hsbc.lk' },
    { 0, 675, 'hsbctrinkaus.de' },
    -- Hulu
    { 0, 677, 'hulu.com' },
    -- J.C. Penney
    { 0, 690, 'jcpenney.com' },
    -- J&R
    { 0, 691, 'jr.com' },
    -- Jalopnik
    { 0, 693, 'jalopnik.com' },
    -- Joystiq
    { 0, 696, 'joystiq.com' },
    -- Kay Jewelers
    { 0, 698, 'kay.com' },
    -- Kmart
    { 0, 702, 'kmart.com' },
    -- Kogan Technologies
    { 0, 703, 'kogan.co.uk' },
    { 0, 703, 'kogan.com.au' },
    -- Kohl's
    { 0, 704, 'kohls.com' },
    -- Kotaku
    { 0, 707, 'kotaku.com' },
    -- LinkedIn Job Search
    { 0, 714, 'linkedin.com' },
    -- LiveJournal
    { 0, 716, 'livejournal.com' },
    -- Lord & Taylor
    { 0, 719, 'lordandtaylor.com' },
    -- LOVEFiLM
    { 0, 721, 'lovefilm.no' },
    -- Lowe's
    { 0, 722, 'lowes.ca' },
    { 0, 722, 'lowes.com' },
    -- Menards
    { 0, 727, 'menards.com' },
    -- MetaFilter
    { 0, 729, 'metafilter.com' },
    -- yUdutu
    { 0, 748, 'myudutu.com' },
    -- Neckermann
    { 0, 750, 'neck.be' },
    { 0, 750, 'neck.nl' },
    { 0, 750, 'neckermann.at' },
    { 0, 750, 'neckermann.ch' },
    { 0, 750, 'neckermann.com.pl' },
    { 0, 750, 'neckermann.cz' },
    { 0, 750, 'neckermann.de' },
    { 0, 750, 'neckermann.si' },
    -- Neiman Marcus
    { 0, 751, 'neimanmarcus.com' },
    -- tlog
    { 0, 757, 'netlog.com' },
    -- Netvibes
    { 0, 758, 'netvibes.com' },
    -- wegg
    { 0, 759, 'newegg.ca' },
    { 0, 759, 'newegg.cn' },
    { 0, 759, 'neweggbusiness.com' },
    { 0, 759, 'neweggflash.com' },
    -- wsNow
    { 0, 760, 'newsnow.co.uk' },
    -- Newsvine
    { 0, 761, 'newsvine.com' },
    -- ordstrom
    { 0, 764, 'nordstrom.com' },
    -- Office Depot
    { 0, 768, 'office-depot.be' },
    { 0, 768, 'office-depot.ch' },
    { 0, 768, 'office-depot.fr' },
    { 0, 768, 'officedepot.at' },
    { 0, 768, 'officedepot.be' },
    { 0, 768, 'officedepot.ca' },
    { 0, 768, 'officedepot.ch' },
    { 0, 768, 'officedepot.cz' },
    { 0, 768, 'officedepot.de' },
    { 0, 768, 'officedepot.es' },
    { 0, 768, 'officedepot.fr' },
    { 0, 768, 'officedepot.hu' },
    { 0, 768, 'officedepot.ie' },
    { 0, 768, 'officedepot.lu' },
    { 0, 768, 'officedepot.sk' },
    -- OfficeMax
    { 0, 769, 'officemax.com' },
    -- Orbitz
    { 0, 775, 'orbitz.com' },
    -- Overstock.com
    { 0, 778, 'overstock.com' },
    -- Picasa
    { 0, 785, 'picasaweb.com' },
    -- ProFlowers
    { 0, 793, 'proflowers.com' },
    -- Quickflix
    { 0, 796, 'quickflix.com.au' },
    -- QVC
    { 0, 798, 'qvc.jp' },
    -- Redmine
    { 0, 805, 'redmine.org' },
    -- REI
    { 0, 806, 'rei.com' },
    -- Renren
    { 0, 808, 'renren.com' },
    -- REVOLVEclothing
    { 0, 809, 'revolveclothing.com' },
    -- Rona
    { 0, 810, 'rona.ca' },
    -- Saks Fifth Avenue
    { 0, 816, 'saksfifthavenue.com' },
    -- Sam's Club
    { 0, 817, 'sams.com.mx' },
    { 0, 817, 'samsclub.com' },
    -- schuelerVZ
    { 0, 818, 'schuelervz.net' },
    -- Schwab
    { 0, 819, 'schwab.com' },
    -- Sears
    { 0, 821, 'searsgaragedoors.com' },
    { 0, 821, 'searshardwarestores.com' },
    { 0, 821, 'searshomeapplianceshowroom.com' },
    { 0, 821, 'searshometownstores.com' },
    -- Shoplet
    { 0, 825, 'shoplet.com' },
    -- ShopNBC
    { 0, 826, 'shopnbc.com' },
    -- ShowClix
    { 0, 830, 'showclix.com' },
    -- spin.de
    { 0, 841, 'spin.de' },
    -- Staples
    { 0, 848, 'staples.de' },
    { 0, 848, 'staples.pt' },
    -- StayFriends
    { 0, 849, 'stayfriends.de' },
    -- StubHub
    { 0, 850, 'stubhub.com' },
    -- studiVZ
    { 0, 851, 'studivz.net' },
    -- Swarovski
    { 0, 854, 'swarovski.com' },
    -- T. Rowe Price
    { 0, 855, 'troweprice.com' },
    -- Tchibo
    { 0, 859, 'eduscho.at' },
    { 0, 859, 'tchibo.ch' },
    { 0, 859, 'tchibo.com.tr' },
    { 0, 859, 'tchibo.cz' },
    { 0, 859, 'tchibo.de' },
    { 0, 859, 'tchibo.pl' },
    -- TD Ameritrade
    { 0, 860, 'tdameritrade.com' },
    -- The Gap
    { 0, 863, 'gap.cn' },
    { 0, 863, 'gap.co.jp' },
    { 0, 863, 'gap.com' },
    { 0, 863, 'gap.eu' },
    { 0, 863, 'gapcanada.ca' },
    -- The Sharper Image
    { 0, 864, 'sharperimage.com' },
    -- ThinkGeek
    { 0, 865, 'thinkgeek.com' },
    -- Ticketmaster
    { 0, 867, 'ticketmaster.ca' },
    { 0, 867, 'ticketmaster.com' },
    -- Tickets.com
    { 0, 868, 'tickets.com' },
    -- Citrix Online
    { 0, 87, 'citrixonline.com' },
    { 0, 87, 'citrixonlinecdn.com' },
    -- Tiffany & Co.
    { 0, 870, 'tiffany.at' },
    { 0, 870, 'tiffany.cn' },
    { 0, 870, 'tiffany.de' },
    { 0, 870, 'tiffany.fr' },
    { 0, 870, 'tiffany.it' },
    { 0, 870, 'tiffany.kr' },
    -- Tiger Direct
    { 0, 871, 'tigerdirect.ca' },
    { 0, 871, 'tigerdirect.com' },
    -- Top Gear
    { 0, 877, 'topgear.com' },
    -- Trac
    { 0, 878, 'trac.edgewall.org' },
    -- Travelocity
    { 0, 880, 'travelocity.ca' },
    { 0, 880, 'travelocity.com' },
    -- TripAdvisor
    { 0, 881, 'tripadvisor.com' },
    -- Ustream.tv
    { 0, 884, 'ustream.tv' },
    -- Vanguard
    { 0, 885, 'vanguardinvestments.ch' },
    { 0, 885, 'vanguardinvestments.de' },
    { 0, 885, 'vanguardinvestments.dk' },
    { 0, 885, 'vanguardinvestments.fr' },
    { 0, 885, 'vanguardinvestments.nl' },
    { 0, 885, 'vanguardinvestments.se' },
    -- vente-privee.com
    { 0, 888, 'vente-privee.com' },
    -- Victoria's Secret
    { 0, 892, 'victoriassecret.com' },
    -- Vimeo
    { 0, 893, 'vimeo.com' },
    -- Voyages-sncf.com
    { 0, 899, 'voyages-sncf.com' },
    -- Wachovia
    { 0, 900, 'wachovia.com' },
    -- Web Of Trust
    { 0, 903, 'mywot.com' },
    -- Windows Live SkyDrive
    { 0, 911, 'skydrive.live.com' },
    -- Woot
    { 0, 917, 'woot.com' },
    -- XM Radio Online
    { 0, 923, 'xmradio.com' },
    -- Zales
    { 0, 930, 'zales.com' },
    -- Zappos
    { 0, 931, 'zappos.com' },
    -- tflix stream
    { 0, 939, 'netflix.com' },
    -- Yahoo! Toolbar
    { 0, 947, 'toolbar.yahoo.com' },
    -- RitzCamera.com
    { 0, 951, 'ritzcamera.com' },
    -- Macy's
    { 0, 952, 'macys.com' },
    -- 7digital
    { 0, 959, '7digital.com' },
    -- Commvault
    { 0, 96, 'commvault.be' },
    { 0, 96, 'commvault.ca' },
    { 0, 96, 'commvault.cl' },
    { 0, 96, 'commvault.co.uk' },
    { 0, 96, 'commvault.co.za' },
    { 0, 96, 'commvault.de' },
    { 0, 96, 'commvault.fr' },
    { 0, 96, 'commvault.in' },
    { 0, 96, 'commvault.it' },
    { 0, 96, 'commvault.jp' },
    { 0, 96, 'commvault.nl' },
    { 0, 96, 'commvault.ru' },
    { 0, 96, 'commvault.se' },
    -- Chatroulette
    { 0, 962, 'chatroulette.com' },
    -- Cyworld
    { 0, 963, 'cyworld.co' },
    -- Daum
    { 0, 964, 'daum.net' },
    -- Deezer
    { 0, 965, 'deezer.com' },
    -- Evony
    { 0, 970, 'evony.com' },
    -- FileDropper
    { 0, 971, 'filedropper.com' },
    -- Filemail
    { 0, 972, 'filemail.com' },
    -- Licorize
    { 0, 974, 'licorize.com' },
    -- FORA.tv
    { 0, 976, 'fora.tv' },
    -- Habbo
    { 0, 980, 'habbo.at' },
    { 0, 980, 'habbo.be' },
    { 0, 980, 'habbo.cl' },
    { 0, 980, 'habbo.de' },
    { 0, 980, 'habbo.dk' },
    { 0, 980, 'habbo.fi' },
    { 0, 980, 'habbo.fr' },
    { 0, 980, 'habbo.it' },
    { 0, 980, 'habbo.jp' },
    -- The Hype Machine
    { 0, 982, 'hypem.com' },
    -- iHeartRadio
    { 0, 984, 'iheartradio.com' },
    -- Issuu
    { 0, 985, 'issuu.co' },
    -- Jamendo
    { 0, 986, 'jamendo.com' },
    -- Livestream
    { 0, 991, 'livestream.com' },
    -- MyDownloader
    { 0, 995, 'mydownloader.net' },
    -- Omegle
    { 0, 997, 'omegle.com' },
    -- Mister Wong
    { 0, 999, 'mister-wong.com' },
    { 0, 999, 'mister-wong.de' },
    { 0, 999, 'mister-wong.es' },
    { 0, 999, 'mister-wong.fr' },

}

gSSLCnamePatternList = {

    -- Blizzard
    { 0, 3745, 'cnc.blzstatic', },

}

function DetectorInit(detectorInstance)

    gDetector = detectorInstance;

    if gDetector.addSSLCertPattern then
        for i,v in ipairs(gSSLHostPatternList) do
            gDetector:addSSLCertPattern(v[1],v[2],v[3]);
        end
    end

    if gDetector.addSSLCnamePattern then
        for i,v in ipairs(gSSLCnamePatternList) do
            gDetector:addSSLCnamePattern(v[1],v[2],v[3]);
        end
    end

    return gDetector;
end

function DetectorClean()
end


