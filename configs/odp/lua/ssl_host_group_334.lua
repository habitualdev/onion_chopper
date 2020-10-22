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
detection_name: SSL Group "334"
version: 2
description: Group of SSL Host detectors.
bundle_description: $VAR1 = {
          'Mixpanel' => 'Advertisement site.',
          'Quantcast' => 'Site for buying and selling target audiences.',
          'Bluehost' => 'Web hosting portal.',
          'Microsoft Azure' => 'Cloud computing by Microsoft.',
          'Foursquare' => 'Location-based social networking.',
          'Instapaper' => 'App to save wb pages for later use.',
          'EdgeCast' => 'Verizon Digital Media Services content delivery network.',
          'Motrixi' => 'Advertisement site.',
          'Capital One' => 'U.S. based bank holding company.',
          'Dropbox' => 'Cloud based file storage.',
          'Brilig' => 'Advertisement site.',
          'T Mobile' => 'Telecommunication and phone service provider.',
          'Yammer' => 'Enterprise social networking site.',
          'State Farm' => 'Insurance company.',
          'TikTok' => 'Video social networking application.',
          'LeadBolt' => 'Advertisement site.',
          'KProxy' => 'Anonymous proxy service.',
          'IFTTT' => 'Service to connect channels.',
          'Java Update' => 'Java update software service.',
          'Dailymotion' => 'A video sharing service website.',
          'comScore' => 'Digital business analytics.',
          'Blackbox' => 'Network hardware and software vendor.',
          'Booking.com' => 'Online travel reservation site.',
          'VoiceFive' => 'Advertisement site.',
          'TeamViewer' => 'Remote desktop control and file transfer software.',
          'bitly' => 'Web portal for bookmarking and sharing links.',
          'Demandbase' => 'Advertising and marketing site.',
          'Helpshift' => 'Customer service platform',
          'ClickTale' => 'Advertisement site.',
          'LinkedIn Contacts' => 'LinkedIn application for networking with contacts.',
          'Elephant Drive' => 'Cloud storage service used primarily as an online backup tool.',
          'Gmail' => 'Google online email.',
          'Pushover' => 'Push notification services.',
          'Allstate' => 'Insurance company.',
          'Bing' => 'Microsoft\'s internet search engine.',
          'Rakuten' => 'Japanese e-commerce site.',
          'Odnoklassniki' => 'Russian social networking service.',
          'Svpply' => 'Online shopping portal.',
          'Tencent Video' => 'Tencent streaming video.',
          'Ballina Beach Village' => 'Website for a vacation resort where you can book and plan your trip to them',
          'Mesmo Games' => 'Online game company that produces games for facebook and other platforms.',
          'AppNexus' => 'Real-time advertising services.',
          'Stanford University' => 'Official website for Stanford University, Educational Institute.',
          'Audible.com' => 'Digital audio version for books, magazines, information and other entertainments.',
          'eXelate' => 'Advertisement site.',
          'NAI' => 'Network Advertising Initiative - association comprises of 3rd party ad companies and educate consumers with online advertising.',
          'imo.im' => 'Instant messenger service for various instant messaging protocols.',
          'EQ Ads' => 'Advertisement site.',
          'QQ Games' => 'Multi-Player online game by QQ.',
          'Office Mobile' => 'Microsoft productivty apps for use on Android devices.',
          'Amazon' => 'Online retailer of books and most other goods.',
          'TED' => 'Conference and Talk show to share ideas.',
          'Infonline' => 'Malware-generated online advertisements.',
          'NovaBACKUP' => 'NovaStor develops and markets data protection and availability software. NovaBACKUP offers support for multi-OS environments and is capable of handling thousands of servers and petabytes of information.',
          'Vine' => 'Mobile App for sharing photos and videos clips.',
          'SlideShare' => 'A web-based slide show service.',
          'Kickstarter' => 'Platform for creative projects with funding goal and deadline.',
          'Hushmail' => 'Web mail service providing encrypted and virus scanned e-mail.',
          'H&R Block' => 'Tax service provider.',
          'TechCrunch' => 'IT related news and research site.',
          'Flightradar24' => 'Real-time aircraft flight tracking web service.',
          'Bloglovin' => 'Blog portal.',
          'Backupgrid' => 'Reseller of cloud backup / storage solutions.',
          'RealVNC' => 'A VNC package that supports client and server side, and also provides cloud-based services such as chat and file transfer.',
          'Apple News' => 'Apple News is an app the brings news and magazines, all in one place.',
          'Rotten Tomatoes' => 'Online information and reviews about new films.',
          'Workday' => 'Software as Service solutions provider.',
          'WebEx' => 'Cisco\'s online meeting and web conferencing application.',
          'MyBuys' => 'Advertisement site.',
          'Google ads' => 'Google targeted advertising.',
          'Cloudnymous Login' => 'Logins to Cloudynomous, a private VPN/anonymizer service.',
          'SHOUTCast Radio' => 'Streaming media software.',
          'Info.com' => 'Search engine.',
          'Microsoft Update' => 'Microsoft software updates.',
          'Tumblr' => 'A combined social network and microblogging platform.',
          'BoldChat' => 'Live Chat software for website.',
          'SpotXchange' => 'Advertisement site.',
          'Apple Developer' => 'Web portal for Apple Developer.',
          'MyLife' => 'Social Networking.',
          'Slack' => 'Chat and messaging app.',
          'Aggregate Knowledge' => 'Advertisement site.',
          'Quora' => 'Online discussion forums on a wide variety of topics.',
          'WPS Office' => 'Mobile app for viewing and editing documents, spreadsheet and PPTs.',
          'AOL Mail' => 'AOL\'s email client and webmail.',
          'CyberGhost VPN' => 'An anonymizer that obfuscates web usage.',
          'NetSarang' => 'Network connectivity and management tools package.',
          'ClickBooth' => 'Advertisement site.',
          'Zbigz' => 'Online BitTorrent Client.',
          'OverBlog' => 'Platform to create blogs.',
          'Campfire' => 'Business-focused group messaging and enterprise social networking.',
          'HP Home & Home Office Store' => 'HP\'s online store for computers and related products.',
          'Pubmatic' => 'Web advertisement services.',
          'OpenSUSE' => 'Official website for OpenSUSE, Linux based OS.',
          'NBA' => 'Official website for the National Basketball League, an American sports organization.',
          'IBM' => 'Website for IBM.',
          'Softonic' => 'Software download site.',
          'GoBank' => 'A bank that focuses on mobile banking.',
          'Avaya Live' => 'Cloud based VoIP service.',
          'engage BDR' => 'Advertisement site.',
          'Nest Thermostat' => 'Manufactures of sensor driven Thermostats which are self-learning and programmable.',
          'Loyalty Innovations' => 'Reward programs and solutions for both online and offline.',
          'Netflix' => 'Rental and on-demand internet television and movie streaming website.',
          'Bank of America' => 'Global financial services company.',
          'Apple Maps' => 'Apple maps and navigation.',
          'Doubleclick' => 'Web advertisement services.',
          'NBC News' => 'NBCUniversal\'s news website.',
          'ADMETA' => 'Advertisement site.',
          'Last.fm' => 'A social networking music streaming site.',
          'Indiegogo' => 'Online Fund raiser for new ideas/products.',
          'SugarSync' => 'Cloud-based backup service.',
          'Skimlinks' => 'Advertisement site.',
          'Sogou' => 'Chinese web portal.',
          'Office365 Admin portal' => 'Admin portal to manage Office 365 products.',
          'Evidon' => 'Advertisement site.',
          'The Telegraph' => 'Online news portal.',
          'Bild.de' => 'Online edition of German tabloid.',
          'Photobucket' => 'An image hosting, video hosting, slideshow creation and photo sharing website.',
          'Monster VPN' => 'VPN Monster is a Russia-based VPN service provider',
          'LinkedIn' => 'Career oriented social networking.',
          'RevenueHits' => 'Ad site.',
          'Vibrant' => 'Advertisement site.',
          'USPS' => 'US Postal Service website.',
          'Glympse' => 'Mobile App to share the location with others.',
          'Pinboard' => 'Social bookmarking portal.',
          'Microsoft Stream' => 'Enterprise video streaming and sharing software.',
          'American Express' => 'Financial services company.',
          'The Washington Post' => 'American daily newspaper.',
          'UpToDate' => 'Online clinical database for medical professionals.',
          'QQ Mail' => 'Tencent email service.',
          'EA Download Manager' => 'Electronic Arts Download manager is a digital distribution for EA games.',
          'Pinger' => 'Allows SMS text messaging via a data connection.',
          'Lokalisten' => 'German social network site focused on local events.',
          'Nvidia' => 'Video chipset manufacturer.',
          'Piksel' => 'Video streaming service.',
          'Eset' => 'Eset Antivirus/Security software download and updates.',
          'Marco Polo' => 'Marco Polo is a Mobile Social Media platform.',
          'AnyDesk' => 'Remote Desktop Access Software.',
          'ZEDO' => 'Web advertisement services.',
          'Webex Teams' => 'Webex Teams is a collaboration tool with various clients (Windows, OS X, Android, Windows Mobile, iPad, iPhone, Web) for messages, calls, meetings, etc.',
          'Motley Fool' => 'Financial and Investment community.',
          'Ooyala' => 'Solution providers for Video analytics.',
          'TIME.com' => 'Webportal for TIME Magazine.',
          'JustCloud' => 'Cloud-based backup service.',
          'Comcast Mail' => 'Email service provided by Comcast.',
          'Ubuntu' => 'Official website of Ubuntu.',
          'Metacafe' => 'Online video entertainment website.',
          'Bizo' => 'Advertisement site.',
          'Citi' => 'Financial services company.',
          'American Airlines' => 'Airline services and travel planner.',
          'GMX Mail' => 'German based webmail service.',
          'Coursera' => 'Educational site connecting people, offer online courses from top universities.',
          'Smartsheet' => 'Smartsheet is a platform for organizational achievement.',
          'Game Center' => 'Social gaming app for iOS.',
          'YiXin' => 'Instant messaging for chat, file transfer service.',
          'Flickr' => 'An image hosting and video hosting website, web services suite, and online community.',
          'Slotomania' => 'Facebook slots game.',
          'Tango' => 'Mobile social networking app that provides voice, chat, and gaming services.',
          'Silverpop' => 'Email marketing service.',
          'Zalmos' => 'Web proxy/anonymizer.',
          'Office 365' => 'Traffic generated by MS Office 365 applications and web services.',
          'Parallels' => 'Cloud services enablement and virtual access.',
          'Plaxo' => 'An online address book and social networking service that provides automatic updating of contact information.',
          'ALTools' => 'Software tools by ESTsoft.',
          'Panda' => 'Panda Security Antivirus/Security software download and updates.',
          'Shutterfly' => 'Share, prints and personalize the cards, album, mugs and other Home decor items with your photos.',
          'ibVPN' => 'Traffic generated by ibVPN.',
          'Avast' => 'Anti-virus software for Windows PCs.',
          'Classmates' => 'Social networking site that allows schoolmates to connect via yearbook photograph.',
          'Viddler' => 'Online Video hosting service.',
          'Mathworks' => 'Producers of MATLAB and other tools for science and engineering.',
          'NBC' => 'Official website for NBC\'s Television network.',
          'Websense' => 'Company which produces Cyber security related products.',
          'Dropcam' => 'Cloud-based remote Wifi video with voice chat from either side.',
          'iBackup' => 'Cloud-based backup service.',
          'Megaupload' => 'File transfer application.',
          'BlueKai' => 'Data-driven online marketing.',
          'ESPNcricinfo' => 'ESPN site focused on the game of Cricket.',
          'Casale' => 'Advertisement site.',
          'Hola' => 'An open source VPN.',
          'Intralinks' => 'A secure collaboration site.',
          'Panoramio' => 'Social network for sharing interesting places through photo.',
          'Mozilla' => 'Website for many open source software projects, including the Firefox browser.',
          'Apple TV Plus' => 'Video streaming service from Apple Inc.',
          'WhatsApp' => 'A cross-platform mobile messaging app which serves as a free alternative to SMS messages.',
          'Constant Contact' => 'Online marketing service.',
          'Geico' => 'Insurance company.',
          'Scorecard Research' => 'Online marketing research community.',
          'Etsy' => 'E-commerce website for homemade or vintage items.',
          'IGN' => 'News/reviews website focused primarily on video games.',
          'Airtime' => 'Video chat.',
          'Walmart' => 'Discount department store.',
          'Geewa' => 'Browser and Facebook-based gaming.',
          'Eclipse' => 'Software Updates for Eclipse.',
          'Atlassian' => 'Project Control and Management Software.',
          'Marketo' => 'Ad site.',
          'DSW' => 'Designer Shoe Warehouse - branded footwear.',
          'Ning' => 'Social Networking.',
          'GREE' => 'Japanese mobile social game developer.',
          'ServiceNow' => 'Cloud storage provider.',
          'QQ Pay' => 'Tencent online payment service.',
          'QualysGuard' => 'Cloud security and compliance solutions.',
          'Pinterest' => 'Social photo sharing website.',
          'LogMeIn Rescue' => 'A remote desktop support tool.',
          'Mop.com' => 'Chinese webportal acting as bulletin board for pop culture, games and other entertainments.',
          'Astraweb' => 'A Usenet/newsgroup service provider.',
          'Web.de' => 'German free email and cloud storage service.',
          'VyprVPN Login' => 'Logins to VyprVPN, a personal VPN service.',
          'Nielsen' => 'Global information and measurement company.',
          'FedEx' => 'Courier delivery services.',
          'Polldaddy' => 'Advertisement site.',
          'Browsec' => 'A VPN app.',
          'goo.ne.jp' => 'Japanese web portal.',
          'Answers.com' => 'A site that provides original answers to questions.',
          'Sourceforge' => 'Site for sharing open source software projects.',
          'Xaxis' => 'Advertisement site.',
          'Adobe Fonts' => 'Adobe Fonts is an online service which offers a subscription library of high-quality fonts.',
          'Acrobat.com' => 'Adobe file transfer and PDF conversion site.',
          'Mgoon' => 'Korean Entertainment web portal.',
          'CBS' => 'CBS news website.',
          'ImageShack' => 'Image hosting website.',
          'Jango' => 'Internet radio and social networking service.',
          'MelOn' => 'Korean music site.',
          'Rackspace' => 'Virtual and physical server hosting providers.',
          'SLI Systems' => 'Advertisement site.',
          'Guardster' => 'Anonymous proxy service.',
          'Habbo' => 'Social networking site aimed at teenagers.',
          'DuckDuckGo' => 'Search engine.',
          'Telegram' => 'Telegram is a messaging app with a focus on speed and security.',
          'WeChat' => 'Mobile text and voice messaging application.',
          'Shareman' => 'Traffic generated from chat and file transfer service by Shareman client.',
          'HipChat' => 'An instant messaging / web chat platform.',
          'Adcash' => 'Advertising network.',
          'Wooga' => 'Browser and social network based games company.',
          'RichRelevance' => 'Targeted advertising platform.',
          'TAFE NSW' => 'TAFE NSW is Australia\'s leading provider for education and training courses',
          'Prezi' => 'Presentation tool.',
          'MediaV' => 'Advertisement site.',
          'Oracle sites' => 'The website for Oracle.',
          'PDBox' => 'Korean file-sharing site.',
          'Liberty Mutual' => 'Insurance company.',
          'T-Online' => 'German free email and cloud storage service.',
          'Exchange Online' => 'Traffic associated with Exchange Online, such as visiting outlook.com.',
          'GG' => 'Gadu Gadu, a polish instant messaging app.',
          'DingDing' => 'Instant messaging & Collaboration software.',
          'Kaixin001' => 'Chinese based social networking service.',
          'Zapier' => 'Automatically sync the web apps.',
          'Surikate' => 'Ad site.',
          'Microsoft Teams' => 'Microsoft Teams is a unified communication and collaboration platform for workplace communication exchange',
          'Krux' => 'Cloud-based online marketing and monetization service.',
          'Apple Store' => 'Official online retailer of Apple products.',
          'Malwarebytes' => 'Antimalware software.',
          'Neobux' => 'A site that pays users to view ads and recruit their friends.',
          'ShowMyPC' => 'Cloud-based remote support and desktop sharing.',
          'SoftEther' => 'An open source VPN.',
          'ShareThis' => 'Social advertising widgets.',
          'Stitcher' => 'Internet radio for news and talk shows.',
          'RealNetworks' => 'Websites for RealNetworks, the streaming media company.',
          'iStock' => 'Online royalty-free stock images.',
          'Zendesk' => 'Customer support web application.',
          'Mail.Ru' => 'Runet\'s free e-mail service.',
          'wikidot' => 'Site that provides wikis.',
          'CloudFlare' => 'Advertisement site.',
          'LINE' => 'Mobile and Desktop App for Instant Messaging.',
          'cXense' => 'Advertisement site.',
          'Wikipedia' => 'Collaborative, user-written online encyclopedia.',
          'DepositFiles' => 'International file hosting and sharing service.',
          'Wired.com' => 'Online magazine.',
          'Windscribe' => 'VPN traffic generated by Windscribe.',
          'Concur' => 'Business travel site.',
          'McAfee' => 'McAfee Antivirus/Security software download and updates.',
          'Rediff.com' => 'Online news, information and web portal.',
          'ICQ' => 'Internet chat client.',
          'Ngrok' => 'Multiplatform tunnelling, reverse proxy software.',
          'Rubicon Project' => 'Online advertising infrastructure company.',
          'Pocket' => 'App to save web pages.',
          'GNU Project' => 'Aggregates free software for Unix-compatible system.',
          'Channel 4' => 'British based streaming television.',
          'Demio' => 'Demio is a webinar platform.',
          'eBay' => 'An online auction and shopping website.',
          'Dell' => 'Computer and related technologies retailer.',
          'Power BI' => 'Microsoft Business analytics tools.',
          'Sony' => 'Official website for Sony Corporation.',
          'Commvault' => 'Enterprise data backup and storage management software.',
          '500px' => 'Online photo sharing.',
          'Aliyun' => 'Chinese web portal.',
          'ZipCloud' => 'Cloud-based backup service.',
          'NHL.com' => 'The National Hockey League official website.',
          'Tunnelbear Login' => 'Logins to Tunnelbear, a web browsing anonymizer service.',
          'DataLogicx' => 'Advertisement site.',
          'Media6Degrees' => 'Advertisement site.',
          'Reddit' => 'Social news link site.',
          'Uploading.com' => 'File transfer website.',
          'Bitbucket' => 'Source code hosting site.',
          'AdXpose' => 'Advertisement site.',
          'Ivacy Login' => 'Logging into Ivacy VPN, a firewall-bypassing service.',
          'VEVO.com' => 'Website for music videos.',
          'Mention' => 'Site that will generate alerts and updates regarding topics you are interested in.',
          'MailChimp' => 'Email service provider.',
          'FireAMP' => 'Cloud-based real time antivirus protection.',
          'Adtegrity' => 'Advertisement site.',
          '17173.com' => 'Chinese social networking site.',
          'Picasa' => 'Google picasa is an image organizer and image viewer for organizing and editing digital photos, plus an integrated photo-sharing website.',
          'TISTORY' => 'Korean Blog publishing service.',
          'ContextWeb' => 'Advertisement site.',
          'Sports Illustrated' => 'Web portal for sports news and updates.',
          'Yandex' => 'Russian search engine.',
          'Boxcar.io' => 'Social media and RSS aggregator. Different site than boxcar.com.',
          'GMX' => 'Free webmail and email service provider.',
          'The New York Times' => 'Newspaper website.',
          'TomTom' => 'Gadget which provides traffic related details.',
          'Freewheel' => 'Advertisement site.',
          'APNS' => 'Apple Push Notification Service.',
          'SBS' => 'Korean Online TV shows and Movies.',
          'iCloud' => 'Apple cloud storage service.',
          'Azure cloud portal' => 'Microsoft Azure cloud service portal.',
          'Showbox' => 'Mobile application providing streaming video content.',
          'The Internet Archive' => 'Internet content provider.',
          'NrData' => 'Category B ISP',
          'NASA' => 'Web portal for NASA.',
          'Sears' => 'Department store retailer.',
          'Sharepoint Online' => 'Traffic generated by web access for sharepoint Online.',
          'E*TRADE' => 'Financial services company with a focus on online stock brokerage.',
          'BBB' => 'Better Business Bureau - non-profit organization providing reliable business review.',
          'Brightcove' => 'Video hosting platform.',
          'ESTsoft' => 'Provides software tools and online games.',
          'Trend Micro' => 'Security software company.',
          'Fidelity' => 'Mutual fund and financial services company.',
          'WorldCat' => 'Library catalogue aggregator.',
          'Kickass Torrents' => 'Torrent site.',
          'BitComet' => 'BitTorrent client.',
          'Okurin' => 'Japanese file upload site.',
          'Allegro.pl' => 'Polish auction website.',
          'OpenDNS' => 'DNS service for reliability and security for internet surfers.',
          'Siri' => 'Voice interactive agent for Apple\'s iOS.',
          'Spotify' => 'Social Music Player.',
          'Bing Maps' => 'Microsoft online mapping and directions service.',
          'Twinkl' => 'Official website for Twinkl educational resources',
          'Chartbeat' => 'Realtime Website data for Collection.',
          'eRoom' => 'Collaborative software site.',
          'Wikispaces' => 'Wiki hosting site.',
          'Box' => 'File storage and transfer site.',
          'Hideman Login' => 'Logging into Hideman internet anonymizer.',
          'GoodSync' => 'File transfer and synchronization service.',
          'Aliexpress' => 'Online shopping portal.',
          'ShorTel Sky Communicator' => 'Unified communications software.',
          'Tagged' => 'Social networking site based in California.',
          'Shutterstock' => 'Online collection of Stock photographs and illustrations.',
          'Mercado Livre' => 'Brazil online auction and shopping website.',
          'Sourcefire.com' => 'Company website for Network security and Intrusion Detection engine.',
          'Zmags' => 'Digital publisher for branded products to customer.',
          'SiteScout' => 'Company targetting powerful and easy-to-use tech for real-time ads.',
          'Discover' => 'Financial services company.',
          'Atlas Advertiser Suite' => 'Tools for online advertising.',
          'Naverisk' => 'Cloud-based remote monitoring and management software.',
          'Microsoft CRM Dynamics' => 'Microsoft product for sales, marketing and service sector.',
          'OpenX' => 'Closed advertising platform.',
          'Siteimprove' => 'Ad site.',
          'Jingdong (360buy.com)' => 'Chinese e-commerce site.',
          '1000mercis' => 'Advertising and analytics site.',
          'OneDrive' => 'Microsoft cloud storage offering, successor to SkyDrive.',
          'Twitter' => 'Social networking and microblogging site.',
          'TextNow' => 'Instant text and voice services.',
          'VPNReactor' => 'An anonymizer that obfuscates web usage.',
          'Seterus' => 'Loan servicing company.',
          'Ando Media' => 'Metrics and analytics for Internet radio.',
          'Imgur' => 'Image hosting website.',
          'Skype' => 'A software application that allows users to chat, make voice/video calls, and transfer files over the Internet.',
          'HIKE' => 'Mobile App for Instant Messaging.',
          'Mint.com' => 'Web-based personal finance tool.',
          'Conduit' => 'Online website to create community toolbar.',
          'Zattoo' => 'Internet protocol television.',
          'MyPCBackup' => 'Cloud-based backup service.',
          'Samsung' => 'Electronics retail site.',
          'DeNA websites' => 'Traffic generated by browsing DeNA Comm website and some other sites that belong to DeNA.',
          'HSBC' => 'Global banking and financial services company.',
          'Target' => 'Discount retailer.',
          'Compuware' => 'Advertisement site.',
          'LeapFILE' => 'Managed file transfer site.',
          'Adtech' => 'Advertisement site.',
          'CBS Interactive' => 'Division of CBS Corporation which coordinates ad sales and television programs together.',
          'Fluxiom' => 'Cloud storage, collaboration, and file management.',
          'Break.com' => 'Web portal for sharing funny videos and pictures.',
          'Tus Files' => 'File upload/download site.',
          'Limelight' => 'Content delivery network.',
          'SuperNews' => 'A Usenet/newsgroup service provider.',
          'TOR' => 'The Onion Router. A client which allows a user to send and relay internet traffic anonymously.',
          '4shared' => 'File sharing and storage service.',
          'Tencent' => 'Chinese portal for Internet service.',
          'New Relic' => 'Web metrics site.',
          'Effective Measure' => 'Advertisement site.',
          'Zulily' => 'Online shopping aimed for Moms with childerns apparel and home decor items.',
          'The Pirate Bay' => 'BitTorrent index and search engine.',
          'Rsupport' => 'A remote management application for PC support.',
          'Dwolla' => 'Online Payment service.',
          'AdRoll' => 'Online advertising and Retargetting website vistor.',
          'MediaFire' => 'File and image hosting site.',
          'Carbonite' => 'Cloud-based backup service.',
          'F-Prot' => 'F-Prot Antivirus/Security software download and updates.',
          'Bomgar' => 'Remote desktop control and file transfer software.',
          'Funshion' => 'Chinese site for online games, videos, and shopping.',
          'Apple iForgot' => 'Password reset portal for Apple.',
          'Cisco' => 'Official website for Cisco.',
          'Microsoft Visual Studio' => 'Microsoft Integrated Developer Environment and toolchain designed to make it easier to develop software for Microsoft platforms.',
          'Plex TV' => 'Allows users to stream their own media from one device to others over the Plex TV network.',
          'SVN' => 'Managing Subversion servers.',
          'LogMeIn' => 'Remote access and PC desktop control.',
          'Cisco Jabber' => 'Cisco\'s version of the Jabber XMPP client.',
          'Fancy' => 'Social media to share and buy items.',
          '58 City' => 'Classified information about 58 cities in China.',
          'Paybill' => 'Online secure payment and billing service.',
          'ZenMate' => 'Proxy and security add-on to browser.',
          'Rambler' => 'Russian search engine.',
          'Smart AdServer' => 'Advertisement site.',
          'UOL' => 'Brazilian web portal for news and entertainment.',
          'Bet365' => 'Online gambling website.',
          'MaxPoint Interactive' => 'Advertisement site.',
          'Victoria\'s Secret' => 'Woman\'s wear, lingerie, and beauty product retailer.',
          'DepartApp' => 'Platform for measurement, collection, analysis and reporting of web data',
          'Woopra' => 'Real time customer service and solutions.',
          'Fotki' => 'Photo sharing site.',
          'Match.com' => 'Dating website.',
          'United Airlines' => 'Online Flight reservation from United Airlines.',
          'HBO GO' => 'Mobile app for HBO subscribers to watch HBO programming.',
          'Wordpress' => 'An online blogging community.',
          'Amp' => 'AMP is a web component framework and a website publishing technology',
          'GNOME' => 'Official website for GNOME, a desktop environment and graphical UI.',
          'JSTOR' => 'Digital library for academic journals and books.',
          'Admeld' => 'Ad delivery company servicing online publishers.',
          'Nuance' => 'Airline services and travel planner.',
          'Disney Plus' => 'Disney+ is a video on-demand streaming subscription',
          'CCP Games' => 'Video game developer and publisher.',
          'Backblaze' => 'Online backup tool for Windows and Mac users.',
          'Arizona Public Media' => 'Web portal by University of Arizona to connect people.',
          'Disney' => 'Official Disney website.',
          'Leboncoin' => 'Auction and classified seller website.',
          'Outlook' => 'Microsoft email service.',
          'CSDN' => 'Chinese IT community/forum for Software related issues.',
          'Shopkick' => 'Mobile app for shopping.',
          'The Guardian' => 'Online news portal.',
          'DoubleDownCasino' => 'Facebook casino games.',
          'ADrive' => 'Online file storage and backup.',
          'QQ Music' => 'Tencent streaming music.',
          'Minecraft' => 'Online game.',
          'Microsoft Ads' => 'Web advertisement services.',
          'Bandcamp' => 'Explore online music posted by independendent artist.',
          'Freelancer' => 'Site for job listings for temporary work.',
          'Xanga' => 'A website that hosts weblogs, photoblogs, and social networking profiles.',
          'Gravatar' => 'Profile picture management for comments and discussion forum.',
          'GitHub' => 'Code management portal for open Source projects.',
          'WeTransfer' => 'Online file transferring platform.',
          'Twiddla' => 'Web based collaboration tool.',
          'PayPal' => 'E-commerce website for handling online transactions.',
          'Hotspot Shield' => 'Anonymizer and tunnel that encrypts communications.',
          'Periscope' => 'Mobile app for live video streaming.',
          'Square Inc.' => 'Electronic payment service through mobile phones.',
          'Sky.com' => 'Web portal for news.',
          'LivingSocial' => 'Deals website.',
          'Bloomberg' => 'Financial news and research.',
          'Battle.net site' => 'Website for Battle.net.',
          'Airbnb' => 'Online accommodation rental service.',
          'SurveyMonkey' => 'A site for distributing surveys.',
          'XiTi' => 'Advertising and analytics site.',
          'Brighttalk' => 'Online webinar and video provider.',
          'PixelMags' => 'Content delivery network for digital versions of magazine.',
          'Chase' => 'Consumer and commercial banking company.',
          'Connextra' => 'Advertisement site.',
          'Conviva' => 'Ad site.',
          'Eventbrite' => 'Event organization and invite site.',
          'Connexity' => 'Advertisement site.',
          'Groupon' => 'Gift certificate website.',
          'Webtrends' => 'Advertisement site.',
          'TechInline' => 'Website that offers remote desktop control.',
          'Marca' => 'Primarily Spanish video streaming site.',
          'Zanox' => 'Advertising and analytics site.',
          'FriendFinder' => 'Online friend finder and dating site.',
          'Lotame' => 'Online advertising and marketing research platform.',
          'AdGear' => 'Advertisement site.',
          'SendSpace' => 'File sharing and hosting.',
          'Six Apart' => 'Advertisement site.',
          'MLive' => 'News local to the American state of Michigan.',
          'Criteo' => 'Advertisement site.',
          'Presto' => 'Printable emails and photos.',
          'Newegg' => 'Computer hardware and software retailer.',
          'Telly' => 'Video sharing and streaming site.',
          'Zynga' => 'Social network game developer.',
          'Craigslist' => 'Popular online classifieds.',
          'Lycos' => 'Search engine also offers email, web hosting and social networking.',
          'HBO' => 'Offical website for HBO shows.',
          'Improve Digital' => 'European sell side online ad service.',
          'Hangame' => 'Korean online game portal.',
          'Starbucks' => 'Mobile application for a ubiquitous chain of coffee shops.',
          'Envato' => 'Combined software education and marketplace site.',
          'Akamai' => 'Internet content delivery network and SSL certificate provider.',
          'eFax' => 'Internet fax service.',
          'Sway' => 'Microsoft collaboration tool.',
          'Weborama' => 'Video ad site.',
          'Onehub' => 'A cloud storage provider.',
          'JoinMe' => 'Video, Audio and Text Conferencing provider.',
          'Mendeley' => 'A tool for sharing, storing, and organizing reference material such as PDFs.',
          'Zerodha' => 'Financial services company with a focus on online stock brokerage.',
          'Instagram' => 'Mobile phone photo sharing.',
          'phpBB' => 'PHP based open source bulletin board software.',
          'Redbox' => 'Online movie rental and video streaming.',
          'Nintendo' => 'Content delivery and web traffic from Nintendo, a Japanese company.',
          'Garmin' => 'Offcial website for Garmin, GPS manufacturer.',
          'EA Games' => 'Web portal for Electronics Arts, a video games distributor.',
          'Tencent Cloud' => 'Tencent cloud services.',
          'Venmo' => 'A free digital wallet that lets you make and share payments with friends.',
          'GoToMyPC' => 'PC remote control software.',
          'Spiegel Online' => 'Web portal for the Germans magazine Der Speigel.',
          'Alibaba' => 'International trade site.',
          'Pandora' => 'Audio streaming.',
          'Podio' => 'Project Management software.',
          'MovieTickets.com' => 'Webportal for advanced movie ticketing, reviews and celebrity interviews.',
          'contnet' => 'Advertisement site.',
          'Line2' => 'Mobile VoIP application with support for text messaging.',
          'Launchpad' => 'Web based bug tracking and project management tool.',
          'PNC Bank' => 'Banking and Financial services.',
          'lynda.com' => 'Online education site focusing on aspects of web design.',
          'Fifth Third Bank' => 'A bank.',
          'BioDigital Human' => 'A web-based medical imaging app.',
          'Pivotal Tracker' => 'Project management and collaborative software.',
          'ezhelp' => 'Allows remote access.',
          'J.P. Morgan' => 'Financial services arm of J.P. Morgan Chase & Co.',
          'Flipboard' => 'News aggregator Mobile application.',
          'TwitchTV' => 'Justin.tv gaming specific livestreaming platform.'
        };

--]]

require "DetectorCommon"


local DC = DetectorCommon

DetectorPackageInfo = {
    name =  "ssl_host_group_334",
    proto =  DC.ipproto.tcp,
    client = {
        init =  'DetectorInit',
        clean =  'DetectorClean',
        minimum_matches =  1
    }
}

gSSLHostPatternList = {
    -- Disney Plus
    {0, 4617, 'disney-plus.net', },
    {0, 4617, 'disneyplus.com', },
    {0, 4617, 'disneyplus.com.ssl.sc.omtrdc.net', },
    {0, 4617, 'dssott.com', },
    {0, 4617, 'dssott.com.akamaized.net', },
    {0, 4617, 'disneyplus.bn5x.net', },
    {0, 4617, 'cdn.registerdisney.go.com', },
    {0, 4617, 'disney-portal.my.onetrust.com', },
    {0, 4617, 'bamgrid.com', },
    -- Apple TV Plus
    {0, 4619, 'tv.apple.com', },
    -- Apple News
    {0, 4623, 'apple.news', },
    {0, 4623, 'news-events.apple.com', },
    {0, 4623, 'news-edge.apple.com', },
    -- Monster VPN
    {0, 4618, 'monstervpn.tech', },
    -- Demio
    {0, 4620, 'demio.com', },
    {0, 4620, 'event.demio.com', },
    -- Smartsheet
    {0, 4621, 'smartsheet.com', },
    {0, 4621, 'app.smartsheet.com', },
    {0, 4621, 'app.10000ft.com', },
    -- Marco Polo
    {0, 4622, 'marcopolo.me', },
}

gSSLCnamePatternList = {

    -- Webshots
    { 0, 1021, 'www.sosbinario.com.br', },
    -- TwitchTV
    { 0, 1051, 'twitch.map.fastly.net' },
    -- DepositFiles
    { 0, 1054, 'depositfiles.com' },
    -- Tagged
    { 0, 1065, 'tagged.com' },
    -- Odnoklassniki
    { 0, 1070, 'ok.ru' },
    -- PayPal
    { 0, 1134, 't.paypal.com' },
    { 0, 1134, 'www.paypal.com' },
    -- The Pirate Bay
    { 0, 1136, 'hcpes.me' },
    { 0, 1136, 'offlinebay.com' },
    { 0, 1136, 'onion.ly' },
    { 0, 1136, 'parkingcrew.net' },
    { 0, 1136, 'pirateaccess.xyz' },
    { 0, 1136, 'pirateproxy.party' },
    { 0, 1136, 'pirateproxy.site' },
    { 0, 1136, 'proxybay.club' },
    { 0, 1136, 'thebay.tv' },
    { 0, 1136, 'thehiddenbay.info' },
    { 0, 1136, 'thepiratebay-org.prox.icu' },
    { 0, 1136, 'thepiratebay.blue' },
    { 0, 1136, 'thepiratebay.fyi' },
    { 0, 1136, 'thepiratebay2.se' },
    { 0, 1136, 'thepiratebay2.unblocked.ms' },
    { 0, 1136, 'tpb.run' },
    { 0, 1136, 'tpb.tw' },
    { 0, 1136, 'ukpirate.org' },
    { 0, 1136, 'ukpiratebay.site' },
    -- Hotspot Shield
    { 0, 1140, 'anchorfree.com' },
    { 0, 1140, 'esellerate.net' },
    { 0, 1140, 'event.shelljacket.us' },
    { 0, 1140, 'hotspotshield.com' },
    { 0, 1140, 'hsselite.com' },
    { 0, 1140, 'hsselite.zendesk.com' },
    -- WhatsApp
    { 0, 1143, 'whatsapp.net' },
    -- Pinger
    { 0, 1148, 'pinger.com' },
    -- Line2
    { 0, 1149, 'j2global.com' },
    -- Spotify
    { 0, 1158, 'spotify.com' },
    -- Answers.com
    { 0, 1168, 'www.answers.com' },
    -- Classmates
    { 0, 1169, 'classmates.com' },
    -- IBM
    { 0, 1173, 'ibm.com' },
    -- Open Webmail
    { 0, 1175, 'openwebmail.org' },
    -- SlideShare
    { 0, 1176, 'www.slideshare.net' },
    -- Sourceforge
    { 0, 1177, 'sf.net' },
    { 0, 1177, 'sourceforge.net' },
    -- SurveyMonkey
    { 0, 1178, 'surveymonkey.com' },
    -- Weebly
    { 0, 1181, 'www.weebly.com' },
    -- APNS
    { 0, 1184, 'courier.push.apple.com' },
    -- Apple sites
    { 0, 1185, 'imacsources.com' },
    { 0, 1185, 'mr-apple-com2.apple.com' },
    { 0, 1185, 'www.apple.com' },
    { 0, 1185, 'www.cups.org' },
    -- Apple News
    {0, 4623, 'apple.news', },
    {0, 4623, 'news-events.apple.com', },
    {0, 4623, 'news-edge.apple.com', },
    -- iCloud
    { 0, 1187, 'americasred3.apple.com' },
    { 0, 1187, 'catch-trunk.com' },
    { 0, 1187, 'icloud.com' },
    { 0, 1187, 'www.icloud.com' },
    -- Apple Music
    { 0, 1190, 'sdk.beemray.com' },
    { 0, 1190, 'turner-tls.map.fastly.net' },
    -- NBC News
    { 0, 1192, 'msn.com' },
    { 0, 1192, 'nbcnews.com' },
    { 0, 1192, 'today.com' },
    -- Mint.com
    { 0, 1193, 'mint.com' },
    { 0, 1193, 'www.mint.com' },
    -- Bild.de
    { 0, 1196, 'bild.de' },
    -- Bing Maps
    { 0, 1197, 'www.virtualearth.org' },
    --Bet365
    { 0, 1209, 'bet365.com' },
    { 0, 1209, 'www.bet365careers.com' },
    -- Brighttalk
    { 0, 1211, 'brighttalk.com' },
    -- Envato
    { 0, 1213, 'envato.com' },
    -- goo.ne.jp
    { 0, 1216, 'goo.ne.jp' },
    { 0, 1216, 'www.xgoo.jp' },
    -- Leboncoin
    { 0, 1219, 'leboncoin.fr' },
    -- Online File Folder
    { 0, 1223, 'www.onlinefilefolder.com' },
    -- Webs
    { 0, 1228, 'websimages.com' },
    -- DoubleDownCasino
    { 0, 1234, 'doubledowncasino.com' },
    -- Mesmo Games
    { 0, 1240, 'mesmo.tv' },
    -- Slotomania
    { 0, 1243, 'slotomania.com' },
    -- Dropbox
    { 0, 125, 'cfl.dropboxstatic.com' },
    { 0, 125, 'dl.dropboxusercontent.com' },
    { 0, 125, 'www.dropbox.com' },
    -- Bloomberg
    { 0, 1259, 'bloomberg.com' },
    { 0, 1259, 'bloomberg.net' },
    { 0, 1259, 'bloomberg.tv' },
    { 0, 1259, 'bloombergbriefs.com' },
    { 0, 1259, 'bloombergtradebook.com' },
    { 0, 1259, 'bloombergview.com' },
    { 0, 1259, 'businessweek.com' },
    { 0, 1259, 'origin.bnef.com' },
    { 0, 1259, 'www.bgov.com' },
    { 0, 1259, 'www.bloomberg.com' },
    { 0, 1259, 'www.bloomberglaw.com' },
    { 0, 1259, 'www.bna.com' },
    { 0, 1259, 'rdr2.bloomberg.com' },
    -- Mozilla
    { 0, 1261, 'mozilla.org' },
    { 0, 1261, 'redirect-san.mozilla.org' },
    -- Avast
    { 0, 1264, 'avast.com' },
    -- Evernote
    { 0, 1267, 'evernote.com' },
    -- Wooga
    { 0, 1298, 'wooga.com' },
    -- The New York Times
    { 0, 1299, 'nytimes.com' },
    -- DoubleClick
    { 0, 1313, 'doubleclick.net' },
    -- Pubmatic
    { 0, 1315, 'pubmatic.com' },
    { 0, 1315, 'www.pubmatic.co.jp' },
    -- eBay
    { 0, 132, 'ebaykorea.com' },
    { 0, 132, 'epages.ebay.com' },
    { 0, 132, 'ru.g.ebay.com' },
    { 0, 132, 'shipping.ebay.cn' },
    { 0, 132, 'www.ebay.co.jp' },
    -- Acrobat.com
    { 0, 1322, 'acrobat.com' },
    -- Box
    { 0, 1326, 'box.com' },
    { 0, 1326, 'box.net' },
    { 0, 1326, 'boxcloud.com' },
    { 0, 1326, 'litmos.com' },
    { 0, 1326, 'www2.box.com' },
    -- CBS
    { 0, 1332, 'cbsnews.com' },
    { 0, 1332, 'tampa.cbslocal.com' },
    -- Microsoft Ads
    { 0, 1336, 'ads.microsoft.com' },
    -- Samsung
    { 0, 1357, 'samsung.com' },
    { 0, 1357, 'samsungapps.com' },
    -- TweetDeck Dashboard app to manage Twitter and Facebook
    { 0, 1360, 'tweetdeck.twitter.com' },
    { 0, 1360, 'tweetdeck.com' },
    -- ZEDO
    { 0, 1362, 'target.zedo.com' },
    -- ESPN Online sports update
    { 0, 1364, 'redirect.espn.com' },
    -- Outbrain Online help for bloggers and publishers
    { 0, 1369, 'outbrain.com' },
    -- Ask.com Search engine
    { 0, 1371, 'cdncert.askmediagroup.com' },
    -- Etsy E-commerce for homemade items
    { 0, 1374, 'etsy.com' },
    -- Conduit Web portal
    { 0, 1375, 'como.com' },
    -- ATT
    { 0, 1380, 'att.com' },
    { 0, 1380, 'att.net' },
    -- Verizon Wireless
    { 0, 1388, 'verizonwireless.com' },
    -- AWS
    { 0, 1392, 'portal.aws.amazon.com' },
    { 0, 1392, 's3-external-1.amazonaws.com' },
    { 0, 1392, 'signin.aws.amazon.com' },
    -- Sourcefire
    { 0, 1398, 'sourcefire.com' },
    -- TED
    { 0, 1403, 'ted.com' },
    -- Eclipse
    { 0, 1413, 'eclipse.org' },
    -- NASA
    { 0, 1417, 'nasa.gov' },
    -- AOL
    { 0, 1419, 'aol.it' },
    -- Eset
    { 0, 143, 'www.eset.com' },
    -- Sports Illustrated
    { 0, 1456, 'saymedia2.map.fastly.net' },
    -- Chartbeat
    { 0, 1460, 'chartbeat.com' },
    -- LivingSocial
    { 0, 1495, 'livingsocial.com' },
    -- US Bank
    { 0, 1500, 'supplierpreferpay.com' },
    -- Disney
    { 0, 1515, 'static.matterhorn.disney.io' },
    { 0, 1521, 'us-dallas.statcounter.com' },
    -- Shutterfly
    { 0, 1543, 'shutterfly.com' },
    -- T-Mobile
    { 0, 1545, 'www.t-mobile.com' },
    -- Mail.ru
    { 0, 1551, 'mail.ru' },
    -- Square Inc.
    { 0, 1568, 'www.square.com' },
    { 0, 1568, 'www.squareup.com' },
    -- flickr
    { 0, 159, 'flickr.com' },
    { 0, 159, 'static.flickr.com' },
    -- biodigitalhuman
    { 0, 1595, 'biodigital.com' },
    { 0, 1595, 'biodigitalhuman.com' },
    -- Apple Developer
    { 0, 1596, 'developer.apple.com' },
    { 0, 1596, 'test.edgekey.net' },
    -- Geewa
    { 0, 1597, 'geewa.com' },
    -- GoToMyPC
    { 0, 1598, 'www.gotomypc.com' },
    -- usps
    { 0, 1601, 'usps.com' },
    { 0, 1601, 'www.uspspostalone.com' },
    { 0, 1601, 'ofx.usps.com' },
    -- Siri
    { 0, 1603, 'guzzoni.apple.com' },
    -- Shutterstock
    { 0, 1614, 'shutterstock.com' },
    { 0, 1614, 'stockphotoeditor.com' },
    -- Yandex
    { 0, 1616, 'static.yandex.net' },
    { 0, 1616, 'yandex.ru' },
    -- Adcash
    { 0, 1617, 'adcash.com' },
    -- The Guardian
    { 0, 1618, 'guardian.map.fastly.net' },
    -- F-Prot
    { 0, 162, 'cyren.com' },
    -- The Telegraph
    { 0, 1620, 'telegraph.co.uk' },
    -- Rediff.com
    { 0, 1624, 'rediff.com' },
    -- Spiegel Online
    { 0, 1625, 'www.spiegel.de' },
    -- UOL
    { 0, 1626, 'www.uol.com.br' },
    { 0, 1626, 'uol.com.br' },
    -- Jingdong
    { 0, 1627, 'jd.com' },
    -- ShowMyPC
    { 0, 1630, 'showmypc.com' },
    -- Airtime
    { 0, 1645, 'airtime.com' },
    -- CSDN
    { 0, 1646, 'csdn.net' },
    -- Aliexpress
    { 0, 1648, 'aliexpress.com' },
    -- 58 City
    { 0, 1649, '58.com' },
    -- Rakuten
    { 0, 1652, 'rakuten.co.jp' },
    -- Airbnb
    { 0, 1655, 'airbnb.com' },
    -- Urban Airship
    { 0, 1657, 'urbanairship.com' },
    -- Akamai
    { 0, 1659, 'www.akamai.com' },
    -- Loyalty Innovations
    { 0, 1660, 'www.loyaltyinnovations.com' },
    -- Dwolla
    { 0, 1664, 'dwolla.com' },
    -- LINE
    { 0, 1667, 'line.me' },
    -- Fancy
    { 0, 1668, 'fancy.com' },
    -- GitHub
    { 0, 1670, 'github.com' },
    { 0, 1670, 'githubapp.com' },
    -- Trend Micro
    { 0, 1671, 'trendmicro.com' },
    { 0, 1671, 'antivirus.com' },
    -- QualysGuard
    { 0, 1675, 'www.qualys.com' },
    -- ADrive
    { 0, 17, 'adrive.com' },
    -- Vine
    { 0, 1700, 'vine.co' },
    -- MyLife
    { 0, 1702, 'www.mylife.com' },
    -- Ning
    { 0, 1703, 'ning.com' },
    -- Gravatar
    { 0, 1704, 'gravatar.com' },
    -- Kickstarter
    { 0, 1705, 'b3.shared.global.fastly.net' },
    -- The Washington Post
    { 0, 1709, 'washingtonpost.com' },
    -- H&R Block
    { 0, 1792, 'www.hrblock.com' },
    -- Constant Contact
    { 0, 1793, 'constantcontact.com' },
    -- Pivotal tracker
    { 0, 1794, 'pivotaltracker.com' },
    -- Podio
    { 0, 1796, 'podio.com' },
    -- Minecraft
    { 0, 1802, 'minecraft.net' },
    { 0, 1802, 'mojang.com' },
    -- Rotten Tomatoes
    { 0, 1803, 'rottentomatoes.com' },
    -- Backupgrid
    { 0, 1812, 'backupgrid.net' },
    -- Carbonite
    { 0, 1813, 'carbonite.com' },
    -- iBackup
    { 0, 1814, 'ibackup.com' },
    -- JustCloud
    { 0, 1815, 'justcloud.com' },
    -- MyPCBackup
    { 0, 1817, 'mypcbackup.com' },
    -- SOS Online Backup
    { 0, 1818, 'sosonlinebackup.com' },
    -- SugarSync
    { 0, 1819, 'sugarsync.com' },
    -- ZipCloud
    { 0, 1820, 'zipcloud.com' },
    -- Redbox
    { 0, 1830, 'ojrq.net' },
    { 0, 1830, 'redbox.com' },
    -- Google
    { 0, 184, 'google.ac' },
    { 0, 184, 'google.ad' },
    { 0, 184, 'google.ae' },
    { 0, 184, 'google.al' },
    { 0, 184, 'google.am' },
    { 0, 184, 'google.as' },
    { 0, 184, 'google.at' },
    { 0, 184, 'google.az' },
    { 0, 184, 'google.ba' },
    { 0, 184, 'google.be' },
    { 0, 184, 'google.bf' },
    { 0, 184, 'google.bg' },
    { 0, 184, 'google.bi' },
    { 0, 184, 'google.bj' },
    { 0, 184, 'google.bs' },
    { 0, 184, 'google.bt' },
    { 0, 184, 'google.ca' },
    { 0, 184, 'google.cat' },
    { 0, 184, 'google.cc' },
    { 0, 184, 'google.cd' },
    { 0, 184, 'google.cf' },
    { 0, 184, 'google.cg' },
    { 0, 184, 'google.ch' },
    { 0, 184, 'google.ci' },
    { 0, 184, 'google.cl' },
    { 0, 184, 'google.cm' },
    { 0, 184, 'google.co.ao' },
    { 0, 184, 'google.co.bw' },
    { 0, 184, 'google.co.ck' },
    { 0, 184, 'google.co.cr' },
    { 0, 184, 'google.co.hu' },
    { 0, 184, 'google.co.id' },
    { 0, 184, 'google.co.il' },
    { 0, 184, 'google.co.im' },
    { 0, 184, 'google.co.in' },
    { 0, 184, 'google.co.je' },
    { 0, 184, 'google.co.jp' },
    { 0, 184, 'google.co.ke' },
    { 0, 184, 'google.co.kr' },
    { 0, 184, 'google.co.ls' },
    { 0, 184, 'google.co.ma' },
    { 0, 184, 'google.co.mz' },
    { 0, 184, 'google.co.nz' },
    { 0, 184, 'google.co.th' },
    { 0, 184, 'google.co.tz' },
    { 0, 184, 'google.co.ug' },
    { 0, 184, 'google.co.uk' },
    { 0, 184, 'google.co.uz' },
    { 0, 184, 'google.co.ve' },
    { 0, 184, 'google.co.vi' },
    { 0, 184, 'google.co.za' },
    { 0, 184, 'google.co.zm' },
    { 0, 184, 'google.co.zw' },
    { 0, 184, 'google.com.af' },
    { 0, 184, 'google.com.ag' },
    { 0, 184, 'google.com.ai' },
    { 0, 184, 'google.com.ar' },
    { 0, 184, 'google.com.au' },
    { 0, 184, 'google.com.bd' },
    { 0, 184, 'google.com.bh' },
    { 0, 184, 'google.com.bn' },
    { 0, 184, 'google.com.bo' },
    { 0, 184, 'google.com.br' },
    { 0, 184, 'google.com.by' },
    { 0, 184, 'google.com.bz' },
    { 0, 184, 'google.com.co' },
    { 0, 184, 'google.com.cu' },
    { 0, 184, 'google.com.cy' },
    { 0, 184, 'google.com.do' },
    { 0, 184, 'google.com.ec' },
    { 0, 184, 'google.com.eg' },
    { 0, 184, 'google.com.et' },
    { 0, 184, 'google.com.fj' },
    { 0, 184, 'google.com.ge' },
    { 0, 184, 'google.com.gh' },
    { 0, 184, 'google.com.gi' },
    { 0, 184, 'google.com.gt' },
    { 0, 184, 'google.com.hk' },
    { 0, 184, 'google.com.iq' },
    { 0, 184, 'google.com.jm' },
    { 0, 184, 'google.com.jo' },
    { 0, 184, 'google.com.kh' },
    { 0, 184, 'google.com.kw' },
    { 0, 184, 'google.com.lb' },
    { 0, 184, 'google.com.ly' },
    { 0, 184, 'google.com.mm' },
    { 0, 184, 'google.com.mt' },
    { 0, 184, 'google.com.mx' },
    { 0, 184, 'google.com.my' },
    { 0, 184, 'google.com.na' },
    { 0, 184, 'google.com.nf' },
    { 0, 184, 'google.com.ng' },
    { 0, 184, 'google.com.ni' },
    { 0, 184, 'google.com.np' },
    { 0, 184, 'google.com.nr' },
    { 0, 184, 'google.com.om' },
    { 0, 184, 'google.com.pa' },
    { 0, 184, 'google.com.pe' },
    { 0, 184, 'google.com.pg' },
    { 0, 184, 'google.com.ph' },
    { 0, 184, 'google.com.pk' },
    { 0, 184, 'google.com.pr' },
    { 0, 184, 'google.com.py' },
    { 0, 184, 'google.com.qa' },
    { 0, 184, 'google.com.ru' },
    { 0, 184, 'google.com.sa' },
    { 0, 184, 'google.com.sb' },
    { 0, 184, 'google.com.sg' },
    { 0, 184, 'google.com.sl' },
    { 0, 184, 'google.com.sv' },
    { 0, 184, 'google.com.tj' },
    { 0, 184, 'google.com.tn' },
    { 0, 184, 'google.com.tr' },
    { 0, 184, 'google.com.tw' },
    { 0, 184, 'google.com.ua' },
    { 0, 184, 'google.com.uy' },
    { 0, 184, 'google.com.vc' },
    { 0, 184, 'google.com.vn' },
    { 0, 184, 'google.cv' },
    { 0, 184, 'google.cz' },
    { 0, 184, 'google.de' },
    { 0, 184, 'google.dj' },
    { 0, 184, 'google.dk' },
    { 0, 184, 'google.dm' },
    { 0, 184, 'google.dz' },
    { 0, 184, 'google.ee' },
    { 0, 184, 'google.es' },
    { 0, 184, 'google.fi' },
    { 0, 184, 'google.fm' },
    { 0, 184, 'google.fr' },
    { 0, 184, 'google.ga' },
    { 0, 184, 'google.gg' },
    { 0, 184, 'google.gl' },
    { 0, 184, 'google.gm' },
    { 0, 184, 'google.gp' },
    { 0, 184, 'google.gr' },
    { 0, 184, 'google.gy' },
    { 0, 184, 'google.hn' },
    { 0, 184, 'google.hr' },
    { 0, 184, 'google.ht' },
    { 0, 184, 'google.ie' },
    { 0, 184, 'google.is' },
    { 0, 184, 'google.it' },
    { 0, 184, 'google.kg' },
    { 0, 184, 'google.ki' },
    { 0, 184, 'google.kz' },
    { 0, 184, 'google.la' },
    { 0, 184, 'google.li' },
    { 0, 184, 'google.lk' },
    { 0, 184, 'google.lt' },
    { 0, 184, 'google.lu' },
    { 0, 184, 'google.lv' },
    { 0, 184, 'google.md' },
    { 0, 184, 'google.me' },
    { 0, 184, 'google.mg' },
    { 0, 184, 'google.mk' },
    { 0, 184, 'google.ml' },
    { 0, 184, 'google.mn' },
    { 0, 184, 'google.ms' },
    { 0, 184, 'google.mu' },
    { 0, 184, 'google.mv' },
    { 0, 184, 'google.mw' },
    { 0, 184, 'google.ne' },
    { 0, 184, 'google.net' },
    { 0, 184, 'google.nl' },
    { 0, 184, 'google.no' },
    { 0, 184, 'google.nu' },
    { 0, 184, 'google.pl' },
    { 0, 184, 'google.pn' },
    { 0, 184, 'google.ps' },
    { 0, 184, 'google.pt' },
    { 0, 184, 'google.ro' },
    { 0, 184, 'google.rs' },
    { 0, 184, 'google.rw' },
    { 0, 184, 'google.sc' },
    { 0, 184, 'google.se' },
    { 0, 184, 'google.sh' },
    { 0, 184, 'google.si' },
    { 0, 184, 'google.sk' },
    { 0, 184, 'google.sm' },
    { 0, 184, 'google.sn' },
    { 0, 184, 'google.so' },
    { 0, 184, 'google.sr' },
    { 0, 184, 'google.st' },
    { 0, 184, 'google.td' },
    { 0, 184, 'google.tg' },
    { 0, 184, 'google.tk' },
    { 0, 184, 'google.tl' },
    { 0, 184, 'google.tm' },
    { 0, 184, 'google.to' },
    { 0, 184, 'google.tt' },
    { 0, 184, 'google.vg' },
    { 0, 184, 'google.vu' },
    { 0, 184, 'google.ws' },
    -- NBA
    { 0, 1939, 'nba.com' },
    { 0, 1939, 'redirect.nba.com' },
    -- NBC
    { 0, 1988, 'www.nbc.com' },
    -- PixelMag
    { 0, 1993, 'pixel-mags.com' },
    -- Zmags
    { 0, 1994, '5764017373052928-fe3.pantheonsite.io' },
    -- GNOME
    { 0, 1995, 'gnome.org' },
    -- ESTsoft
    { 0, 1996, 'estgames.com' },
    --ALTools
    { 0, 1998, 'altools.com' },
    -- Ubuntu
    { 0, 2003, 'ubuntu.com' },
    { 0, 2003, '360.canonical.com' },
    -- Wired.com
    { 0, 2005, 'condenast.com' },
    -- NHL
    { 0, 2007, 'nhlnetwork.viewerlink.tv' },
    -- Presto
    { 0, 2008, 'presto.com' },
    -- Brightcove
    { 0, 2019, 'brightcove.com' },
    -- Atlassian
    { 0, 2038, 'atlassian.com' },
    { 0, 2038, 'atlassian.net' },
    { 0, 2038, 'services.atlassian.com' },
    -- Prezi
    { 0, 2040, 'prezi.com' },
    -- IFTTT
    { 0, 2041, 'ifttt.com' },
    -- Apple iForgot
    { 0, 2045, 'iforgot.apple.com' },
    -- OpenSuse
    { 0, 2056, 'opensuse.org' },
    -- DSW
    { 0, 2059, 'www.designerbrands.com' },
    -- BoldChat
    { 0, 2067, 'boldchat.com' },
    -- Woopra
    { 0, 2069, 'woopra.com' },
    -- Ooyala
    { 0, 2072, 'ooyala.com' },
    { 0, 2072, 'www.dalet.com' },
    -- lynda.com
    { 0, 2086, 'lynda.com' },
    -- FriendFinder
    { 0, 2093, 'friendfinder.com' },
    -- Audible.com
    { 0, 2094, 'www.audible.com' },
    -- Microsoft Azure
    { 0, 2111, 'azure.com' },
    { 0, 2111, 'azure.microsoft.com' },
    { 0, 2111, 'policykeyservice.dc.ad.msft.net' },
    { 0, 2111, 'secure.aadcdn.microsoftonline-p.com' },
    { 0, 2111, 'windowsazure.com' },
    -- Zendesk
    { 0, 2128, 'zendesk.com' },
    -- Eventbrite
    { 0, 2139, 'eventbrite.com' },
    -- J.P. Morgan
    { 0, 2140, 'jpmm.com' },
    -- GoBank
    { 0, 2141, 'gobank.com' },
    -- Nvidia
    { 0, 2150, 'nvidia.com' },
    -- Progressive
    { 0, 2152, 'www.progressive.com' },
    -- State Farm
    { 0, 2153, 'online2.statefarm.com' },
    { 0, 2153, 'www.statefarm.com' },
    -- Allstate
    { 0, 2154, 'www.allstate.com' },
    -- Geico
    { 0, 2155, 'geico.com' },
    -- Liberty Mutual
    { 0, 2156, 'www.libertymutual.com' },
    -- PNC Bank
    { 0, 2172, 'www.pnc.com' },
    -- Red Hat
    { 0, 2173, 'redhat.com' },
    -- Unite Airlines
    { 0, 2174, 'www.united.com' },
    -- TextNow
    { 0, 2176, 'www.textnow.com' },
    -- FedEx
    { 0, 2177, 'www.fedex.com' },
    -- American Airlines
    { 0, 2178, 'www.aa.com' },
    { 0, 2178, 'www.usairways.com' },
    -- Nuance
    { 0, 2179, 'netmng.com' },
    { 0, 2179, 'nuance.com' },
    -- MLive
    { 0, 2182, 'star4.arcpublishing.com' },
    -- Bitbucket
    { 0, 2185, 'bitbucket.org' },
    -- Yammer
    { 0, 2198, 'yammer.com' },
    -- Zapier
    { 0, 2206, 'zapier.com' },
    -- Sony
    { 0, 2234, 'sony.com' },
    -- WeTransfer
    { 0, 2236, 'wetransfer.com' },
    -- Sorify
    { 0, 2237, 'storify.com' },
    -- Oracle sites
    { 0, 2245, 'oracle.com' },
    -- Fifth Third Bank
    { 0, 2257, 'www.53.com' },
    -- Campfire
    { 0, 2270, 'campfirenow.com' },
    -- TechInline
    { 0, 2351, 'fixme.it' },
    { 0, 2351, 'techinline.com' },
    -- wikidot
    { 0, 2352, 'wdfiles.com' },
    { 0, 2352, 'wikidot.com' },
    -- CBS Interactive
    { 0, 2354, 'cbspressexpress.com' },
    -- Foursquare
    { 0, 2357, 'foursquare.com' },
    -- The Internet Archive
    { 0, 2358, 'archive.org' },
    -- Adenin / Dynamic Intranet
    { 0, 2360, 'adenin.com' },
    -- Groupon
    { 0, 2361, 'groupon.com' },
    -- Match.com
    { 0, 2363, 'www.match.com' },
    -- Uploading.com
    { 0, 2366, 'api.uploading.com' },
    -- Tango
    { 0, 2379, 'tango.me' },
    -- Apple Maps
    { 0, 2381, 'mapsconnect.apple.com' },
    -- SendSpace
    { 0, 2382, 'sendspace.com' },
    -- Sogou
    { 0, 2383, 'sogou.com' },
    -- 17173.com
    { 0, 2385, '17173.com' },
    -- Alibaba
    { 0, 2386, 'alibaba.com' },
    -- Aliyun
    { 0, 2389, 'aliyun.com' },
    -- Naverisk
    { 0, 2390, 'ecisolutions.com' },
    { 0, 2390, 'naverisk.com' },
    -- Funshion
    { 0, 2391, 'fun.tv' },
    { 0, 2391, 'funshion.com' },
    -- amazon
    { 0, 24, 'bw.peg.a2z.com' },
    { 0, 24, 'bx.peg.a2z.com' },
    { 0, 24, 'cy.peg.a2z.com' },
    { 0, 24, 'images-na.ssl-images-amazon.com' },
    { 0, 24, 'jobs.amazon.co.uk' },
    { 0, 24, 'peg.a2z.com' },
    -- Google ads
    { 0, 2403, 'googleadservices.com' },
    -- RichRelevance
    { 0, 2404, 'richrelevance.com' },
    -- Quantcast
    { 0, 2405, 'quantcast.com' },
    -- Scorecard Research
    { 0, 2408, 'scorecardresearch.com' },
    -- AppNexus
    { 0, 2413, 'appnexus.com' },
    -- OpenX
    { 0, 2415, 'openx.com' },
    -- Rubicon Project
    { 0, 2417, 'rubiconproject.com' },
    -- Svpply
    { 0, 2425, 'raas.ebay.com' },
    -- Pinboard
    { 0, 2437, 'pinboard.in' },
    -- Improve Digital
    { 0, 2451, '360yield.com' },
    { 0, 2451, 'improvedigital.com' },
    -- BlueKai
    { 0, 2452, 'bluekai.com' },
    -- Admeld
    { 0, 2454, 'misc.google.com' },
    -- Atlas Advertiser Suite
    { 0, 2456, 'atlassolutions.com' },
    -- Silverpop
    { 0, 2460, 'www.silverpop.com' },
    -- Infonline
    { 0, 2461, 'infonline.de' },
    -- comScore
    { 0, 2462, 'comscore.com' },
    -- Lotame
    { 0, 2465, 'lotame.com' },
    -- Krux
    { 0, 2466, 'logtails.stark-mesa-1789.herokuspace.com' },
    -- Nielsen
    { 0, 2468, 'careers.nielsen.com' },
    -- PDBox
    { 0, 2471, 'filecity.co.kr' },
    -- Freelancer
    { 0, 2483, 'freelancer.co.id' },
    { 0, 2483, 'freelancer.com.al' },
    { 0, 2483, 'freelancer.com' },
    { 0, 2483, 'freelancer.ie' },
    { 0, 2483, 'freelancer.pk' },
    -- Squidoo
    { 0, 2485, 'hubpages.com' },
    -- Marca
    { 0, 2486, 'marca.com' },
    -- Telly
    { 0, 2487, 'telly.com' },
    -- Wikispaces
    { 0, 2488, 'wikispaces.com' },
    { 0, 2488, 'wikispaces.net' },
    -- SLI Systems
    { 0, 2494, 'www.sli-systems.com' },
    -- AdGear
    { 0, 2500, 'adgear.com' },
    -- MediaV
    { 0, 2501, 'mediav.com' },
    -- ClickTale
    { 0, 2502, 'clicktale.com' },
    -- Adtech
    { 0, 2503, 'ad-tech.sg' },
    { 0, 2503, 'adtechaustralia.com' },
    -- LeadBolt
    { 0, 2505, 'www.leadbolt.com' },
    -- Evidon
    { 0, 2510, 'evidon.com' },
    -- Brilig
    { 0, 2511, 'bcbs3-cos-lb02.novalocal' },
    -- Casale
    { 0, 2512, 'indexexchange.com' },
    { 0, 2512, 'medianet.com' },
    -- Criteo
    { 0, 2514, 'criteo.com' },
    -- Effective Measure
    { 0, 2516, 'effectivemeasure.com' },
    -- eXelate
    { 0, 2517, 'exelator.com' },
    -- Vibrant
    { 0, 2519, 'vibrantmedia.com' },
    -- Media6Degrees
    { 0, 2522, 'dstillery.com' },
    -- Motrixi
    { 0, 2525, 'motrixi.com' },
    -- Connextra
    { 0, 2529, 'betgenius.com' },
    -- Integral Ad Science
    { 0, 2532, 'integralads.com' },
    { 0, 2532, 'integralplatform.com' },
    -- CloudFlare
    { 0, 2535, 'cloudflare.com' },
    -- Neustar Information Services
    { 0, 2537, 'neustar.biz' },
    { 0, 2537, 'neustarlocaleze.biz' },
    -- AdXpose
    { 0, 2538, 'adxpose.com' },
    -- EQ Ads
    { 0, 2539, 'EQWorks.com' },
    -- Xaxis
    { 0, 2541, 'xaxis.com' },
    -- DataLogicx
    { 0, 2542, 'www-legacy.oracle.com' },
    -- Aggregate Knowledge
    { 0, 2547, 'neustar.biz' },
    -- SpotXchange
    { 0, 2548, 'spotxchange.com' },
    -- engage BDR
    { 0, 2554, 'first-impression.com' },
    -- Connexity
    { 0, 2555, 'www.connexity.com' },
    -- Bizo
    { 0, 2557, 'microsites.linkedin.com' },
    -- Six Apart
    { 0, 2560, 'movabletype.com' },
    { 0, 2560, 'sixapart.jp' },
    -- MaxPoint Interactive
    { 0, 2561, 'valassisdigital.com' },
    { 0, 2561, 'valassis.com' },
    -- contnet
    { 0, 2566, 'your-server.de' },
    -- Smart AdServer
    { 0, 2568, 'smartadserver.com' },
    -- ADMETA
    { 0, 2569, 'admeta.com' },
    -- ContextWeb
    { 0, 2571, 'contextweb.com' },
    -- cXense
    { 0, 2572, 'cxense.com' },
    -- Freewheel
    { 0, 2574, 'freewheel.com' },
    { 0, 2574, 'freewheel.tv' },
    -- Adtegrity
    { 0, 2577, 'adtegrity.com' },
    -- Compuware
    { 0, 2579, 'compuware.com' },
    -- Polldaddy
    { 0, 2582, 'polldaddy.com' },
    -- VoiceFive
    { 0, 2584, 'voicefive.com' },
    -- ClickBooth
    { 0, 2585, 'clickbooth.com' },
    -- MyBuys
    { 0, 2586, 'mybuys.com' },
    -- Webtrends
    { 0, 2587, 'webtrends.com' },
    -- Skimlinks
    { 0, 2590, 'skimlinks.com' },
    -- Mixpanel
    { 0, 2593, 'mixpanel.com' },
    -- Softonic
    { 0, 2599, 'softonic.com' },
    -- Booking.com
    { 0, 2600, 'booking.com' },
    { 0, 2600, 'workingatbooking.com' },
    -- Concur
    { 0, 2601, 'concur.com' },
    { 0, 2601, 'www.concur.com' },
    -- Rambler
    { 0, 2603, 'rambler.ru' },
    -- Boxcar.io
    { 0, 2605, 'boxcar.io' },
    -- TechCrunch
    { 0, 2607, 'techcrunch.com' },
    -- LA Times
    { 0, 2609, 'latimes.com' },
    -- Last.fm
    { 0, 261, 'last.fm' },
    -- WeChat
    { 0, 2618, 'comm.weixin.qq.com' },
    { 0, 2618, 'map.qq.com' },
    -- ShareThis
    { 0, 2635, 'sharethis.com' },
    { 0, 2640, 'gomtv.com' },
    -- VyprVPN Login
    { 0, 2644, 'api.goldenfrog.com' },
    -- Tunnelbear
    { 0, 2645, 'tunnelbear.com' },
    -- Ivacy Login
    { 0, 2646, 'ivacy.com' },
    -- Hide My Ass!
    { 0, 2648, 'hidemyass.com' },
    -- VEVO.com
    { 0, 2650, 'vevo.map.fastly.net' },
    -- HBO
    { 0, 2652, 'hbo.com' },
    -- Stitcher
    { 0, 2653, 'stitcher.com' },
    -- Panoramio
    { 0, 2654, 'panoramio.com' },
    -- Cisco
    { 0, 2655, 'www.cisco.com' },
    -- Hotels.com
    { 0, 2659, 'hotels.com' },
    -- JSTOR
    { 0, 2660, 'www.jstor.org' },
    -- Xiami.com
    { 0, 2661, 'xiami.com' },
    -- Ando Media
    { 0, 2665, 'andomedia.com' },
    -- Break.com
    { 0, 2666, 'break.com' },
    { 0, 2669, 'albert.apple.com' },
    { 0, 2669, 'gs.apple.com' },
    -- Hideman
    { 0, 2681, 'hideman.net' },
    -- Cloudnymous Login
    { 0, 2682, 'cloudnymous.com' },
    -- mathworks
    { 0, 2687, 'www.mathworks.com' },
    { 0, 2687, 'mathworks.com' },
    -- GoodSync
    { 0, 2688, 'goodsync.com' },
    -- UpToDate
    { 0, 2689, 'uptodate.com' },
    -- new relic
    { 0, 2690, 'newrelic.com' },
    -- WorldCat
    { 0, 2691, 'worldcat.org' },
    -- Sky.com
    { 0, 2699, 'sky.com' },
    -- LogMeIn
    { 0, 270, 'logmein.com' },
    -- Arizona Public Media
    { 0, 2700, 'azpm.org' },
    -- EA Games
    { 0, 2701, 'www.origin.com' },
    { 0, 2701, 'origin.com' },
    -- TomTom
    { 0, 2703, 'tomtom.com' },
    -- OpenDNS
    { 0, 2704, 'www.opendns.com' },
    -- Sophos Live Protection
    { 0, 2707, 'sophos.com' },
    -- HBO Go
    { 0, 2711, 'hbonow.com' },
    -- RealNetworks
    { 0, 2726, 'real.com' },
    -- Garmin
    { 0, 2729, 'garmin.com' },
    -- Dropcam
    { 0, 2739, 'dropcam.com' },
    -- nest
    { 0, 2749, 'www.nest.com' },
    -- Indiegogo
    { 0, 2752, 'indiegogo.com' },
    -- MailChimp
    { 0, 2754, 'mailchimp.com' },
    -- MovieTickets.com
    { 0, 2755, 'www.movietickets.com' },
    -- Comcast Mail
    { 0, 2756, 'login.comcast.net' },
    -- Coursera
    { 0, 2757, 'coursera.org' },
    -- Bandcamp
    { 0, 2762, 'bandcamp.com' },
    -- Bluehost
    { 0, 2764, 'bluehost-cdn.com' },
    { 0, 2764, 'bluehost.com' },
    -- OverBlog
    { 0, 2767, 'over-blog.com' },
    -- BBB
    { 0, 2768, 'bbb.org' },
    -- TIME.com
    { 0, 2770, 'time.com' },
    -- phpBB
    { 0, 2772, 'phpbb.com' },
    -- GNU Project
    { 0, 2774, 'emacs.org' },
    -- Lycos
    { 0, 2775, 'lycos.com' },
    -- Creative Commons
    { 0, 2777, 'creativecommons.net' },
    -- NAI
    { 0, 2778, 'web-prod.networkadvertising.org' },
    -- Stanford University
    { 0, 2783, 'stanford.edu' },
    -- bitly
    { 0, 2787, 'bit.ly' },
    { 0, 2787, 'bitly.com' },
    -- Viddler
    { 0, 2788, 'viddler.com' },
    -- Websense
    { 0, 2790, 'websense.com' },
    -- Zbigz
    { 0, 2791, 'zbigz.com' },
    -- Zulily
    { 0, 2792, 'zulily.com' },
    -- Zattoo
    { 0, 2793, 'www.zattoo.com' },
    { 0, 2793, 'zattoo.com' },
    -- McAfee
    { 0, 280, 'mcafee.com' },
    -- DuckDuckGo
    { 0, 2805, 'duckduckgo.com' },
    -- Exchange Online
    { 0, 2810, 'outlook.com' },
    { 0, 2810, 'Outlook.office.com' },
    { 0, 2810, 'res.outlook.com' },
    -- Office 365
    { 0, 2812, 'activation-v2.sls.microsoft.com' },
    { 0, 2812, 'client.hip.live.com' },
    { 0, 2812, 'config.officeapps.live.com' },
    { 0, 2812, 'mem.gfx.ms' },
    { 0, 2812, 'msocdn.com' },
    { 0, 2812, 'nexus.officeapps.live.com' },
    { 0, 2812, 'o365weve.com' },
    { 0, 2812, 'ocsa.officeapps.live.com' },
    { 0, 2812, 'office365.com' },
    { 0, 2812, 'officeapps.live.com' },
    { 0, 2812, 'officecdn.microsoft.com' },
    { 0, 2812, 'ols.officeapps.live.com' },
    { 0, 2812, 'portal.officeppe.com' },
    { 0, 2812, 'stamp2.login.microsoftonline.com' },
    { 0, 2812, 'support.microsoft.com' },
    { 0, 2812, 'testconnectivity.microsoft.com' },
    { 0, 2812, 'videobreakdown.com' },
    { 0, 2812, 'wildcard.onestore.ms' },
    -- Sharepoint Online
    { 0, 2813, 'cdn.onenote.net' },
    { 0, 2813, 'sharepointonline.com' },
    { 0, 2813, 'svc.ms' },
    -- Tencent
    { 0, 2815, 'tencent.com' },
    -- Fluxiom
    { 0, 2818, 'blog.fluxiom.com' },
    { 0, 2818, 'fluxiom.com' },
    -- LeapFILE
    { 0, 2820, 'leapfile.net' },
    -- Okurin
    { 0, 2822, 'www.bitpark.co.jp' },
    -- Fotki
    { 0, 2824, 'fotki.com' },
    -- eRoom
    { 0, 2826, 'rdgw.opentext.com' },
    -- GREE
    { 0, 2828, 'gree.jp' },
    -- Hangame
    { 0, 2832, 'hangame.com' },
    -- Megaproxy
    { 0, 2834, 'www.megaproxy.com' },
    -- KProxy
    { 0, 2835, 'kproxy.com' },
    -- Guardster
    { 0, 2836, 'guardster.com' },
    -- Twiddla
    { 0, 2841, 'twiddla.com' },
    -- Quora
    { 0, 2843, 'quora.com' },
    -- Yahoo! Mobage
    { 0, 2844, 'ssl.yahoo-mbga.jp' },
    -- Ado Tube
    { 0, 2847, 'adotube.com' },
    -- AdRoll
    { 0, 2848, 'adroll.com' },
    -- mediafire
    { 0, 285, 'mediafire.com' },
    -- AD-X Tracking
    { 0, 2850, 'ad-x.co.uk' },
    -- Allegro.pl
    { 0, 2851, 'allegro.pl' },
    -- iStock
    { 0, 2858, 'www.istockphoto.com' },
    -- Mercado Livre
    { 0, 2860, 'mercadolibre.cl' },
    { 0, 2860, 'mercadolibre.co.cr' },
    { 0, 2860, 'mercadolibre.com.ar' },
    { 0, 2860, 'mercadolibre.com.co' },
    { 0, 2860, 'mercadolibre.com.do' },
    { 0, 2860, 'mercadolibre.com.ec' },
    { 0, 2860, 'mercadolibre.com.mx' },
    { 0, 2860, 'mercadolibre.com.pa' },
    { 0, 2860, 'mercadolibre.com.pe' },
    { 0, 2860, 'mercadolibre.com.uy' },
    { 0, 2860, 'mercadolibre.com.ve' },
    { 0, 2860, 'mercadolivre.com.br' },
    { 0, 2860, 'mercadoshops.com.br' },
    { 0, 2860, 'www.mercadolibre.com' },
    { 0, 2860, 'www.mercadolivre.com' },
    { 0, 2860, 'www.mercadopago.com.br' },
    { 0, 2860, 'www.mercadopago.com' },
    -- Mop.com
    { 0, 2862, 'mop.com' },
    -- Motley Fool
    { 0, 2863, 'fool.ca' },
    { 0, 2863, 'fool.co.uk' },
    { 0, 2863, 'fool.com.au' },
    { 0, 2863, 'fool.com' },
    { 0, 2863, 'fool.sg' },
    -- SiteScout
    { 0, 2864, 'sitescout.com' },
    -- Bloglovin
    { 0, 2867, 'bloglovin.com' },
    -- Microsoft CRM Dynamic
    { 0, 2871, 'dynamics.microsoft.com' },
    { 0, 2871, 'videobreakdown.com' },
    -- SVN
    { 0, 2887, 'www.visualsvn.com' },
    -- GMX
    { 0, 2892, 'gmx.co.uk' },
    { 0, 2892, 'gmx.com' },
    { 0, 2892, 'gmx.net' },
    -- YiXin
    { 0, 2914, 'yixin.im' },
    -- Shareman
    { 0, 2918, 'shareman.tv' },
    -- DeNA websites
    { 0, 2946, 'applizemi.com' },
    { 0, 2946, 'arukikata.com' },
    { 0, 2946, 'aumall.jp' },
    { 0, 2946, 'chirashiru.jp' },
    { 0, 2946, 'dena.com' },
    { 0, 2946, 'dena.jp' },
    { 0, 2946, 'estar.jp' },
    { 0, 2946, 'm.mbok.jp' },
    { 0, 2946, 'mangabox.me' },
    { 0, 2946, 'mycode.jp' },
    { 0, 2946, 'netsea.jp' },
    { 0, 2946, 'showroom-live.com' },
    { 0, 2946, 'smcb.jp' },
    { 0, 2946, 'sougouhoken.jp' },
    { 0, 2946, 'ssl.mbga.jp' },
    { 0, 2946, 'www.dena-ec.com' },
    { 0, 32, 'swcdn.apple.com' },
    -- Apple Update
    { 0, 32, 'swdist.apple.com' },
    -- NovaBACKU
    { 0, 336, 'novabackup.com' },
    -- Panda
    { 0, 359, 'pandasecurity.com' },
    -- VPNReactor
    { 0, 3652, 'vpnreactor.com' },
    -- CyberGhost VPN
    { 0, 3653, 'cyberghostvpn.com' },
    -- MelOn
    { 0, 3659, 'melon.com' },
    -- Plaxo
    { 0, 369, 'plaxo.com' },
    -- GG
    { 0, 3706, 'gadu-gadu.pl' },
    { 0, 3706, 'gg.pl' },
    -- 1000mercis
    { 0, 3715, '1000mercis.com' },
    -- Piksel
    { 0, 3716, 'carelink.co.uk' },
    -- Surikate
    { 0, 3719, 'preprod.mozoo.com' },
    -- Weborama
    { 0, 3723, 'weborama.com' },
    -- XiTi
    { 0, 3724, 'xiti.com' },
    -- Zanox
    { 0, 3725, 'softgarden.io' },
    { 0, 3725, 'zanox.com' },
    -- QQ Games
    { 0, 3727, 'bns.qq.com' },
    { 0, 3727, 'game.gtimg.cn' },
    { 0, 3727, 'game.qq.com' },
    { 0, 3727, 'minigame.qq.com' },
    { 0, 3727, 'oct01.sparta.3g.qq.com' },
    -- OneDrive
    { 0, 3735, 'onedrive.com' },
    -- LinkedIn Contacts
    { 0, 3736, 'platform.linkedin.com' },
    -- Rackspace
    { 0, 3737, 'my.rackspace.com' },
    -- ServiceNow
    { 0, 3738, 'www.servicenow.com' },
    -- T-Online
    { 0, 3739, 'tcmt.t-online.de' },
    { 0, 3739, 'www.t-online.de' },
    -- Web.de
    { 0, 3740, 'web.de' },
    -- Workday
    { 0, 3741, 'workday.com' },
    -- Battle.net site
    { 0, 3749, 'www.battle.net' },
    -- y! box
    { 0, 3757, 'box.yahoo.co.jp' },
    -- LogMeIn Rescue
    { 0, 3784, 'secure.logmeinrescue.com' },
    -- Mendeley
    { 0, 3785, 'mendeley.com' },
    -- Onehub
    { 0, 3786, 'onehub.com' },
    -- eFax
    { 0, 3789, 'www.efax.com' },
    -- Amazon Instant Video
    { 0, 3793, 'api.us-east-1.aiv-delivery.net' },
    { 0, 3793, 'atv-ext-eu.amazon.com' },
    { 0, 3793, 'atv-ps.amazon.com' },
    { 0, 3793, 'dp-gw-na.amazon.com' },
    { 0, 3793, 'www.primevideo.com' },
    -- TISTORY
    { 0, 3798, 'www.tistory.com' },
    -- Astraweb
    { 0, 38, 'astraweb.com' },
    -- ezhelp
    { 0, 3803, 'www.ezhelp.co.kr' },
    -- Net2Phone
    { 0, 3806, 'net2phone.com' },
    -- Channel 4
    { 0, 3811, 'www.channel4.com' },
    { 0, 3811, 'channel4.com' },
    -- Mgoon
    { 0, 3816, 'mgoon.com' },
    -- SBS
    { 0, 3818, 'sbs.co.kr' },
    -- HipChat
    { 0, 3858, 'hipchat.com' },
    -- Neobux
    { 0, 3867, 'www.neobux.com' },
    -- Kickass Torrents
    { 0, 3870, 'kat.cr' },
    { 0, 3870, 'katcr.co' },
    { 0, 3870, 'kickass.cr' },
    { 0, 3870, 'kickass.la' },
    -- RevenueHits
    { 0, 3873, 'revenuehits.com' },
    { 0, 3873, 'www.myfood.ltd' },
    -- Info.com
    { 0, 3876, 'info.com' },
    -- Tencent Cloud
    { 0, 3880, 'qcloud.com' },
    { 0, 3880, 'weixin.qq.com' },
    -- QQ Mail
    { 0, 3882, 'exmail.qq.com' },
    { 0, 3882, 'mail.qq.com' },
    { 0, 3882, 'pop.qq.com' },
    -- QQ Pay
    { 0, 3883, 'api.unipay.qq.com' },
    -- Demandbase
    { 0, 3890, 'demandbase.com' },
    -- Intralinks
    { 0, 3891, 'www.intralinks.com' },
    -- Conviva
    { 0, 3931, 'www.conviva.com' },
    -- Marketo
    { 0, 3940, 'marketo.com' },
    -- QQ Music
    { 0, 3941, 'wetv.acc.qq.com' },
    -- Tencent Video
    { 0, 3942, 'v.qq.com' },
    -- Siteimprove
    { 0, 3943, 'siteimprove.com' },
    -- espncricinfo
    { 0, 3978, 'espncricinfo.com' },
    -- Microsoft Visual Studio
    { 0, 3979, 'dc.services.visualstudio.com' },
    { 0, 3979, 'vortex.data.microsoft.com' },
    -- Malwarebytes
    { 0, 3990, 'malwarebytes.com' },
    -- Periscope
    { 0, 3992, 'periscope.tv' },
    { 0, 3992, 'pscp.tv' },
    -- ZenMate
    { 0, 3994, 'zenguard.zendesk.com' },
    { 0, 3994, 'zenmate.com' },
    -- ibVPN
    { 0, 3996, 'ibvpn.com' },
    -- CCP Games
    { 0, 4005, 'ccpgames.com' },
    -- WPS Office
    { 0, 4010, 'wps.com' },
    -- Seterus
    { 0, 4017, 'seterus.com' },
    -- Hola
    { 0, 4041, 'h-vpn.org' },
    { 0, 4041, 'hola.org' },
    { 0, 4041, 'holacdn.com' },
    { 0, 4041, 'holaspark.com' },
    { 0, 4041, 'lum-bext.com' },
    { 0, 4041, 'lum-cn.co' },
    { 0, 4041, 'lum-cn.io' },
    { 0, 4041, 'lum-lpm.com' },
    { 0, 4041, 'luminati-china.biz' },
    { 0, 4041, 'luminati-china.co' },
    { 0, 4041, 'luminati-china.io' },
    { 0, 4041, 'luminati.io' },
    { 0, 4041, 'lumtest.com' },
    { 0, 4041, 'svd-cdn.com' },
    -- Slack
    { 0, 4045, 'slack.com' },
    -- Sway
    { 0, 4069, 'c.msn.com' },
    { 0, 4069, 'sway.office.com' },
    { 0, 4069, 'www.sway-cdn.com' },
    -- Planner
    { 0, 4070, 'tasks.office.com' },
    -- Office Mobile
    { 0, 4072, 'appex-rf.msn.com' },
    { 0, 4072, 'msagfx.live.com' },
    { 0, 4072, 'msft.sts.microsoft.com' },
    { 0, 4072, 'roaming.officeapps.live.com' },
    -- blackbox
    { 0, 4078, 'www.blackbox.com' },
    -- Webex teams
    { 0, 4080, 'ciscospark.com' },
    -- Synology DSM
    { 0, 4089, 'synology.com' },
    -- Browsec
    { 0, 4094, 'www.browsec.com' },
    -- Zalmos
    { 0, 4106, 'zalmos.com' },
    -- Bomgar
    { 0, 4107, 'bomgar.com' },
    -- Rsupport
    { 0, 4110, 'www.startsupport.com' },
    -- EdgeCast
    { 0, 4111, 'edgecast.com' },
    -- ShorTel Sky Communicator
    { 0, 4115, 'ip-50-116-28-202.cloudezapp.io' },
    -- Telegram
    { 0, 4116, 'tdesktop.com' },
    { 0, 4116, 'telegram.me' },
    { 0, 4116, 'telegram.org' },
    -- Nintendo
    { 0, 4130, 'nintendo-europe.com' },
    { 0, 4130, 'nintendo.co.kr' },
    { 0, 4130, 'nintendo.com' },
    { 0, 4130, 'nintendo.se' },
    -- Ngrok
    { 0, 4134, 'ngrok.io' },
    { 0, 4134, 'ngrok.com' },
    -- Paybill
    { 0, 4135, 'paybill.com' },
    -- Elephant Drive
    { 0, 4143, 'elephantdrive.com' },
    { 0, 4143, 'svc.elephantdrive.com' },
    -- Open Drive
    { 0, 4144, 'od.lk' },
    { 0, 4144, 'opendrive.com' },
    -- AnyDesk
    { 0, 4145, 'anydesk.com' },
    { 0, 4145, 'anydesk.cz' },
    { 0, 4145, 'anydesk.de' },
    { 0, 4145, 'anydesk.dk' },
    { 0, 4145, 'anydesk.es' },
    { 0, 4145, 'anydesk.fr' },
    { 0, 4145, 'anydesk.gr' },
    { 0, 4145, 'anydesk.it' },
    { 0, 4145, 'anydesk.pl' },
    { 0, 4145, 'anydesk.pt' },
    { 0, 4145, 'anydesk.se' },
    { 0, 4145, 'anydesk.sk' },
    -- NetSarang
    { 0, 4146, 'netsarang.com' },
    -- Flightradar24
    { 0, 4148, 'flightradar24.com' },
    -- Showbox
    { 0, 4149, '10bo.365zg.org' },
    { 0, 4149, 'showboxa.com' },
    { 0, 4149, 'showboxdownload.site' },
    -- Hotstar
    { 0, 4153, 'hotstar.com' },
    { 0, 4153, 'gravityrd-services.com' },
    -- TikTok
    { 0, 4154, 'tiktok.com' },
    -- DingDing
    { 0, 4163, 'dingtalk.com' },
    -- Venmo
    { 0, 4387, 'ops.venmo.com' },
    { 0, 4387, 'venmo.com' },
    -- Tus Files
    { 0, 4515, 'tusfiles.net' },
    { 0, 4515, 'tusfiles.com' },
    -- Power BI
    { 0, 4520, 'powerbi.com' },
    -- Azure cloud portal
    { 0, 4533, 'azureexpertprod.westeurope.cloudapp.azure.com' },
    { 0, 4533, 'cus.rp.core.security.azure.com' },
    { 0, 4533, 'fpt.microsoft.com' },
    { 0, 4533, 'functions.azure.com' },
    { 0, 4533, 'gallery.azure.com' },
    { 0, 4533, 'hosting.portal.azure.net' },
    { 0, 4533, 'management.azure.com' },
    { 0, 4533, 'portal.azure.com' },
    -- SuperNews
    { 0, 454, 'supernews.com' },
    -- Office 365 admin portal
    { 0, 4540, 'syncservice.eu.microsoftonline.com' },
    -- Windscribe
    { 0, 4541, 'windscribe.com' },
    -- microsoft Stream
    { 0, 4553, 'api.microsoftstream.com' },
    { 0, 4553, 'www.web.microsoftstream.com' },
    -- Helpshift
    { 0, 4568, 'helpshift.com' },
    -- Symantec
    { 0, 459, 'shasta-ars.norton.com' },
    { 0, 459, 'www.broadcom.com' },
    -- Adobe Fonts
    { 0, 4602, 'fonts.adobe.com' },
    -- Amp
    { 0, 4603, 'amp.dev' },
    -- NrData
    { 0, 4607, '1gramstore.com' },
    -- Twinkl
    { 0, 4608, 'www.twinkl.co.uk' },
    { 0, 4608, 'www.twinkl.com' },
    -- Zerodha
    { 0, 4609, 'zerodha.com' },
    -- Ballina Beach Village
    { 0, 4610, 'www.ballinabeachvillage.com.au' },
    { 0, 4610, 'ballinabeachpark.com' },
    -- TAFE NSW
    { 0, 4611, 'marketing.tafensw.edu.au' },
    -- DepartApp
    { 0, 4613, 'tracker.departapp.com' },
    -- Microsoft teams
    { 0, 4616, 'teams.microsoft.com' },
    -- Backblaze
    { 0, 47, 'backblaze.com' },
    -- TOR
    { 0, 473, 'torproject.org' },
    -- Tumblr
    { 0, 475, 'www.tumblr.com' },
    { 0, 475, 'tumblr.com' },
    -- Wikipedia
    { 0, 501, 'wikipedia.org' },
    -- Wordpress
    { 0, 506, 'wordpress.com' },
    { 0, 506, 'wp.com' },
    -- Xanga
    { 0, 510, 'xanga.com' },
    -- Zynga
    { 0, 533, 'api.zynga.com' },
    { 0, 533, 'zynga.com' },
    -- American Express
    { 0, 544, 'm.americanexpress.com' },
    { 0, 544, 'www.americanexpress.com' },
    -- AOL Mail
    { 0, 546, 'ycpi.mail.aol.com' },
    -- Apple Store
    { 0, 551, 'ppq.apple.com' },
    { 0, 551, 'store.apple.com' },
    { 0, 551, 'store.storeimages.cdn-apple.com' },
    -- bankofamerica
    { 0, 560, 'bankofamerica.com' },
    { 0, 560, 'www.bankofamerica.com' },
    -- Barnes and Noble
    { 0, 561, 'nook.com' },
    { 0, 561, 'barnesandnoble.com' },
    -- Basecamp
    { 0, 563, 'basecamp.com' },
    -- blogger
    { 0, 576, 'blogger.com' },
    -- bing
    { 0, 58, 'www.bing.com' },
    -- capitalone
    { 0, 582, 'capitalone.com' },
    { 0, 582, 'www.capitalone.com' },
    -- chase
    { 0, 587, 'www.chase.com' },
    -- citi
    { 0, 590, 'citi.bridgetrack.com' },
    { 0, 590, 'www.citibank.com' },
    { 0, 590, 'www.citi.com' },
    -- craigslist
    { 0, 594, 'accounts.craigslist.org' },
    { 0, 594, 'craigslist.org' },
    -- Dailymotion
    { 0, 600, 'dailymotion.com' },
    -- dell
    { 0, 606, 'Dell.com' },
    -- discover
    { 0, 615, 'www.discover.com' },
    { 0, 615, 'www.discovercard.com' },
    -- E*Trade
    { 0, 621, 'wsod.com' },
    { 0, 621, 'www.etrade.com' },
    -- fidelity
    { 0, 636, 'fidelity.com' },
    -- Gmail
    { 0, 655, 'gmail.com' },
    { 0, 655, 'mail.google.com' },
    -- google news
    { 0, 663, 'news.google.com' },
    -- hsbc
    { 0, 675, 'hsbc.com' },
    -- ICQ
    { 0, 679, 'icq.com' },
    { 0, 679, 'icq.net' },
    -- ign
    { 0, 680, 'ign.com' },
    -- imageshack
    { 0, 682, 'imageshack.com' },
    { 0, 682, 'imageshack.us' },
    -- imgur
    { 0, 684, 'imgur.com' },
    -- imo.im
    { 0, 685, 'imo.im' },
    -- Launchpad
    { 0, 708, 'launchpad.net' },
    { 0, 708, 'launchpadlibrarian.net' },
    -- Limelight
    { 0, 711, 'hs.llnwd.net' },
    -- LinkedIn
    { 0, 713, 'www.linkedin.com' },
    -- Lokalisten
    { 0, 718, '7tv.de' },
    -- Metacafe
    { 0, 728, 'metacafe.com' },
    -- Microsoft Update
    { 0, 731, 'www.update.microsoft.com' },
    -- netflix
    { 0, 756, 'www.netflix.com' },
    -- newegg
    { 0, 759, 'ssl-images.newegg.com' },
    -- Outlook
    { 0, 776, 'diagnostics.outlook.com' },
    -- Pandora
    { 0, 779, 'pandora.com' },
    -- Photobucket
    { 0, 784, 'photobucket.com' },
    -- Picasa
    { 0, 785, 'googlebrandlab.com' },
    -- Reddit
    { 0, 804, 'reddit.com' },
    -- Sears
    { 0, 821, 'searshomepro.com' },
    { 0, 821, 'searshomeservices.com' },
    { 0, 821, 'searsoptical.com' },
    { 0, 821, 'searsoutlet.com' },
    { 0, 821, 'searspartsdirect.com' },
    { 0, 821, 'searsvacations.com' },
    { 0, 821, 'ux.sears.com' },
    { 0, 821, 'www.kenmoredirect.com' },
    { 0, 821, 'www.sears.com' },
    { 0, 821, 'www.searsdrivingschools.com' },
    { 0, 821, 'www.searsflowers.com' },
    -- HP Home & Home Office Store
    { 0, 827, 'store.hp.com' },
    { 0, 827, 'www.shopping.hp.com' },
    -- SHOUTCast Radio
    { 0, 829, 'shoutcast.com' },
    -- Skype
    { 0, 832, 'www.skype.com' },
    -- Stumbleupon
    { 0, 852, 'stumbleupon.com' },
    -- Target
    { 0, 858, 'sites.target.com' },
    -- Twitter
    { 0, 882, 'twitter.com' },
    -- victoriassecret
    { 0, 892 , 'victoriassecret.com' },
    -- walmart
    { 0, 901, 'prod.walmart.ca' },
    { 0, 901, 'www.walmart.com' },
    -- WebEx
    { 0, 905, 'files-prod-us-east-2.webexcontent.com' },
    { 0, 905, 'www.webex.com' },
    -- wellsfargo
    { 0, 907, 'wellsfargo.com' },
    { 0, 907, 'www.wellsfargo.com' },
    -- FireAMP
    { 0, 934, 'amp.sourcefire.com' },
    -- 4shared
    { 0, 948, '4shared.com' },
    -- Megaupload
    { 0, 949, 'mega.co.nz' },
    -- salesforce
    { 0, 950, 'www.salesforce.com' },
    -- TeamViewer
    { 0, 958, 'teamviewer.com' },
    -- Commvault
    { 0, 96, 'www.commvault.com' },
    -- GMX Mail
    { 0, 977, 'gmx.at' },
    { 0, 977, 'gmx.ch' },
    { 0, 977, 'gmx.net' },
    -- habbo
    { 0, 980, 'www.habbo.com' },
    -- hushmail
    { 0, 981, 'www.hushmail.com' },
    -- jango
    { 0, 987, 'airwave.systems' },
    -- kaixin001
    { 0, 989, 'kaixin001.com' },
    -- Pinterest
    { 0, 1135, 'pinterest.com' },
    -- Instagram
    { 0, 1233, 'instagram.com' },
    -- Flipboard
    { 0, 1402, 'flipboard.com' },
    -- Kakao
    { 0, 1405, 'kakao.com' },
    -- Java Update
    { 0, 1569, 'downloads-jau.oracle.com' },
    { 0, 1569, 'www.java.com' },
    -- 500px
    { 0, 1654, 'j79-prod.500px.net' },
    -- Avaya Live
    { 0, 1661, 'avayalive.com' },
    -- Mention
    { 0, 1798, 'mention.net' },
    -- Glympse
    { 0, 1808, 'glympse.com' },
    -- Game Center
    { 0, 2092, 'profile.gc.apple.com' },
    -- Starbucks
    { 0, 2112, 'starbucks.com' },
    -- Pocket
    { 0, 2431, 'getpocket.com' },
    -- Instapaper
    { 0, 2434, 'instapaper.com' },
    -- Pushover
    { 0, 2438, 'pushover.net' },
    -- Parallels
    { 0, 2802, 'www.parallels.com' },
    -- Shopkick
    { 0, 2831, 'shopkick.com' },
    -- SoftEther
    { 0, 3809, 'public.softether.com' },
    { 0, 3809, 'www.softether.com' },
    -- Cisco Jabber
    { 0, 3971, 'identity.webex.com' },
    { 0, 3971, 'isj3cmx.webexconnect.com' },
    { 0, 3971, 'wbx2.com' },
    -- EA Download Manager
    { 0, 4016, 'avatar.dm.origin.com' },
    { 0, 4016, 'darkside.ea.com' },
    { 0, 4016, 'groups.gameservices.ea.com' },
    -- JoinMe
    { 0, 4019, 'join.me' },
    -- HIKE Messenger
    { 0, 4132, 'im.hike.in' },
    -- RealVNC
    { 0, 4142, 'vnc.com' },
    { 0, 4142, 'realvnc.com' },
    -- Plex TV
    { 0, 4524, 'plex.tv' },
    -- BitComet
    { 0, 4552, 'bitcomet.com' },
    -- Demio
    {0, 4620, 'demio.com' },
    {0, 4620, 'event.demio.com' },
    -- Smartsheet
    { 0, 4621, 'smartsheet.com' },
    { 0, 4621, 'app.smartsheet.com' },
    { 0, 4621, 'app.10000ft.com' },
    -- Marco Polo
    { 0, 4622, 'marcopolo.me' },
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



