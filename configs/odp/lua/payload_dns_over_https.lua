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
detection_name: DNS over HTTPS
version: 1
description: DNS traffic that is encrypted and obfuscated with HTTPS.
--]]

require "DetectorCommon"

local DC = DetectorCommon                                                                           
                                                                                                    
DetectorPackageInfo = {                                                                             
    name =  "payload_dns_over_https",                                                                
    proto =  DC.ipproto.tcp,                                                                        
    client = {                                                                                      
        init =  'DetectorInit',                                                                     
        clean =  'DetectorClean',                                                                   
        minimum_matches =  1                                                                        
    }                                                                                               
}

gSSLHostPatternList = {
    -- AdGuard
    { 0, 4624, 'dns.adguard.com' },
    { 0, 4624, 'dns-family.adguard.com' },

    -- CleanBrowsing
    { 0, 4624, 'doh.cleanbrowsing.org' },
    { 0, 4624, 'family-filter-dns.cleanbrowsing.org' },
    { 0, 4624, 'adult-filter-dns.cleanbrowsing.org' },                                             
    { 0, 4624, 'security-filter-dns.cleanbrowsing.org' },

    -- CloudFlare
    { 0, 4624, 'cloudflare-dns.com' },
    { 0, 4624, 'mozilla.cloudflare-dns.com' },                                                              
    { 0, 4624, 'security.cloudflare-dns.com' },                                                             
    { 0, 4624, 'family.cloudflare-dns.com' },                                                     
    { 0, 4624, '1dot1dot1dot1.cloudflare-dns.com' },

    -- Google 
    { 0, 4624, 'dns.google' },
    { 0, 4624, 'google-public-dns-a.google.com' },                                                                      
    { 0, 4624, 'google-public-dns-b.google.com' },

    -- Cisco Umbrella / OpenDNS
    { 0, 4624, 'doh.opendns.com' },                                                  
    { 0, 4624, 'doh.familyshield.opendns.com' },

    -- Quad9
    { 0, 4624, 'dns.quad9.net' },
    { 0, 4624, 'dns9.quad9.net' },
    { 0, 4624, 'dns10.quad9.net' },
    { 0, 4624, 'dns11.quad9.net' },
    { 0, 4624, 'dns-nosec.quad9.net' },

    -- Comcast
    { 0, 4624, 'doh.xfinity.com' }, 

    -- CZ.NIC
    { 0, 4624, 'odvr.nic.cz' },

    -- DNSlify
    { 0, 4624, 'doh.dnslify.com' },

    -- nextdns.io
    { 0, 4624, 'dns.nextdns.io' },

    -- DNS.SB
    { 0, 4624, 'doh.dns.sb' },

    -- IIJ
    { 0, 4624, 'public.dns.iij.jp' },
}

gHostPortAppList = {           
    -- AdGuard                                                                     
    { 0, 4624, "176.103.130.130", 443, DC.ipproto.tcp},
    { 0, 4624, "176.103.130.131", 443, DC.ipproto.tcp},
    { 0, 4624, "176.103.130.132", 443, DC.ipproto.tcp},
    { 0, 4624, "176.103.130.134", 443, DC.ipproto.tcp},

    -- CleanBrowsing
    { 0, 4624, "185.228.168.168", 443, DC.ipproto.tcp},
    { 0, 4624, "185.228.169.168", 443, DC.ipproto.tcp},
    { 0, 4624, "185.228.168.10", 443, DC.ipproto.tcp},
    { 0, 4624, "185.228.169.11", 443, DC.ipproto.tcp},
    { 0, 4624, "185.228.168.9", 443, DC.ipproto.tcp},
    { 0, 4624, "185.228.169.9", 443, DC.ipproto.tcp},

    -- CloudFlare
    { 0, 4624, "104.16.249.249", 443, DC.ipproto.tcp},
    { 0, 4624, "104.18.2.55", 443, DC.ipproto.tcp},
    { 0, 4624, "104.18.27.128", 443, DC.ipproto.tcp},
    { 0, 4624, "1.1.1.1", 443, DC.ipproto.tcp},
    { 0, 4624, "1.0.0.1", 443, DC.ipproto.tcp},
    { 0, 4624, "1.1.1.2", 443, DC.ipproto.tcp},
    { 0, 4624, "1.0.0.2", 443, DC.ipproto.tcp},
    { 0, 4624, "1.1.1.3", 443, DC.ipproto.tcp},
    { 0, 4624, "1.0.0.3", 443, DC.ipproto.tcp},

    -- Google
    { 0, 4624, "8.8.8.8", 443, DC.ipproto.tcp},
    { 0, 4624, "8.8.4.4", 443, DC.ipproto.tcp},

    -- Cisco Umbrella / OpenDNS
    { 0, 4624, "208.67.222.222", 443, DC.ipproto.tcp},
    { 0, 4624, "208.67.220.220", 443, DC.ipproto.tcp},
    { 0, 4624, "208.67.222.123", 443, DC.ipproto.tcp},
    { 0, 4624, "208.67.220.123", 443, DC.ipproto.tcp},
    { 0, 4624, "208.67.222.2", 443, DC.ipproto.tcp},
    { 0, 4624, "208.67.220.2", 443, DC.ipproto.tcp},
    { 0, 4624, "146.112.41.2", 443, DC.ipproto.tcp},                                                
    { 0, 4624, "146.112.41.3", 443, DC.ipproto.tcp},

    -- Quad9
    { 0, 4624, "9.9.9.9", 443, DC.ipproto.tcp},
    { 0, 4624, "9.9.9.10", 443, DC.ipproto.tcp},
    { 0, 4624, "149.112.112.9", 443, DC.ipproto.tcp},
    { 0, 4624, "149.112.112.10", 443, DC.ipproto.tcp},
    { 0, 4624, "149.112.112.11", 443, DC.ipproto.tcp},
    { 0, 4624, "149.112.112.112", 443, DC.ipproto.tcp},

    -- Comcast
    { 0, 4624, "96.113.151.148", 443, DC.ipproto.tcp},

    -- CZ.NIC
    { 0, 4624, "185.43.135.1", 443, DC.ipproto.tcp},

    -- DNSlify
    { 0, 4624, "185.235.81.1", 443, DC.ipproto.tcp},

    -- nextdns.io
    { 0, 4624, "45.90.28.0", 443, DC.ipproto.tcp},

    -- DNS.SB
    { 0, 4624, "104.27.159.178", 443, DC.ipproto.tcp},

    -- IIJ
    { 0, 4624, "103.2.57.5", 443, DC.ipproto.tcp},
}

function DetectorInit(detectorInstance) 
    gDetector = detectorInstance;
    if gDetector.addHostPortApp then                                                                
        for i,v in ipairs(gHostPortAppList) do                                                      
            gDetector:addHostPortApp(v[1],v[2],v[3],v[4],v[5]);                                     
        end                                                                                         
    end
    if gDetector.addSSLCertPattern then                                                             
        for i,v in ipairs(gSSLHostPatternList) do                                                   
            gDetector:addSSLCertPattern(v[1],v[2],v[3]);                                            
        end                                                                                         
    end  
    return gDetector;                                                                               
end

function DetectorClean()                                                                            
end
