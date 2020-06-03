//
//  SiteTag.swift
//  PGN-Writer
//
//  Created by A.F on 6/3/20.
//  Copyright © 2020 A.F. All rights reserved.
//

import Foundation

class SiteTag: Taggable{
    
    var tag: Tag = .Site
    var city: String?
    var region: String?
    var country: String?
    
    init(city: String, region: String, country: String) {
        self.city = city
        self.region = region
        self.country = country
    }
    
    init() {
        
    }
    
    private func getCountryIOC(country: String) -> String {
        for (key,value) in countries {
            if country == key {
                return value
            }
        }
        return country
    }
    
    func getTag() -> String {
        guard let city = self.city else { return "?"}
        if city == "" && region == "" && country == "" {return "?"}
        let siteDescription = city + space + region! + space + getCountryIOC(country: self.country!)
        let fullTag = getTag(tagKey: tag.rawValue, tagValue: siteDescription)
        return fullTag
    }
    
}

fileprivate var countries: [String: String] =  [
"Afghanistan" : "AFG",
"Albania" : "ALB",
"Algeria" : "ALG",
"American Samoa*" : "ASA",
"Andorra" : "AND",
"Angola" : "ANG",
"Antigua and Barbuda" : "ANT",
"Argentina" : "ARG",
"Armenia" : "ARM",
"Aruba*" : "ARU",
"Australia" : "AUS",
"Austria" : "AUT",
"Azerbaijan" : "AZE",
"The Bahamas" : "BAH",
"Bahrain" : "BRN",
"Bangladesh" : "BAN",
"Barbados" : "BAR",
"Belarus" : "BLR",
"Belgium" : "BEL",
"Belize" : "BIZ",
"Bermuda*" : "BER",
"Benin" : "BEN",
"Bhutan" : "BHU",
"Bolivia" : "BOL",
"Bosnia and Herzegovina" : "BIH",
"Botswana" : "BOT",
"Brazil" : "BRA",
"British Virgin Islands*" : "IVB",
"Brunei" : "BRU",
"Bulgaria" : "BUL",
"Burkina Faso" : "BUR",
"Burundi" : "BDI",
"Cambodia" : "CAM",
"Cameroon" : "CMR",
"Canada" : "CAN",
"Cape Verde" : "CPV",
"Cayman Islands*" : "CAY",
"Central African Republic" : "CAF",
"Chad" : "CHA",
"Chile" : "CHI",
"China" : "CHN",
"Colombia" : "COL",
"Comoros" : "COM",
"Congo, Republic of the" : "CGO",
"Congo, Democratic Republic of the" : "COD",
"Cook Islands*" : "COK",
"Costa Rica" : "CRC",
"Cote d’Ivoire" : "CIV",
"Croatia" : "CRO",
"Cuba" : "CUB",
"Cyprus" : "CYP",
"Czech Republic" : "CZE",
"Denmark" : "DEN",
"Djibouti" : "DJI",
"Dominica" : "DMA",
"Dominican Republic" : "DOM",
"East Timor (Timor-Leste)" : "TLS",
"Ecuador" : "ECU",
"Egypt" : "EGY",
"El Salvador" : "ESA",
"Equatorial Guinea" : "GEQ",
"Eritrea" : "ERI",
"Estonia" : "EST",
"Ethiopia" : "ETH",
"Fiji" : "FIJ",
"Finland" : "FIN",
"France" : "FRA",
"Gabon" : "GAB",
"The Gambia" : "GAM",
"Georgia" : "GEO",
"Germany" : "GER",
"Ghana" : "GHA",
"Greece" : "GRE",
"Grenada" : "GRN",
"Guam*" : "GUM",
"Guatemala" : "GUA",
"Guinea" : "GUI",
"Guinea-Bissau" : "GBS",
"Guyana" : "GUY",
"Haiti" : "HAI",
"Honduras" : "HON",
"Hong Kong*" : "HKG",
"Hungary" : "HUN",
"Iceland" : "ISL",
"India" : "IND",
"Indonesia" : "INA",
"Iran" : "IRI",
"Iraq" : "IRQ",
"Ireland" : "IRL",
"Israel" : "ISR",
"Italy" : "ITA",
"Jamaica" : "JAM",
"Japan" : "JPN",
"Jordan" : "JOR",
"Kazakhstan" : "KAZ",
"Kenya" : "KEN",
"Korea, North (PDR of Korea)" : "PRK",
"Korea, South" : "KOR",
"Kuwait" : "KUW",
"Kyrgyzstan" : "KGZ",
"Laos" : "LAO",
"Latvia" : "LAT",
"Lebanon" : "LIB",
"Lesotho" : "LES",
"Liberia" : "LBR",
"Libya" : "LBA",
"Liechtenstein" : "LIE",
"Lithuania" : "LTU",
"Luxembourg" : "LUX",
"Macedonia" : "MKD",
"Madagascar" : "MAD",
"Malawi" : "MAW",
"Malaysia" : "MAS",
"Maldives" : "MDV",
"Mali" : "MLI",
"Malta" : "MLT",
"Mauritania" : "MTN",
"Mauritius" : "MRI",
"Mexico" : "MEX",
"Federated States of Micronesia" : "FSM",
"Moldova" : "MDA",
"Monaco" : "MON",
"Mongolia" : "MGL",
"Morocco" : "MAR",
"Mozambique" : "MOZ",
"Myanmar (Burma)" : "MYA",
"Namibia" : "NAM",
"Nauru" : "NRU",
"Nepal" : "NEP",
"Netherlands" : "NED",
"Netherlands Antilles*" : "AHO",
"New Zealand" : "NZL",
"Nicaragua" : "NCA",
"Niger" : "NIG",
"Nigeria" : "NGR",
"Norway" : "NOR",
"Oman" : "OMA",
"Pakistan" : "PAK",
"Palau" : "PLW",
"Palestine*" : "PLE",
"Panama" : "PAN",
"Papua New Guinea" : "PNG",
"Paraguay" : "PAR",
"Peru" : "PER",
"Philippines" : "PHI",
"Poland" : "POL",
"Portugal" : "POR",
"Puerto Rico*" : "PUR",
"Qatar" : "QAT",
"Romania" : "ROM",
"Russian Federation" : "RUS",
"Rwanda" : "RWA",
"Saint Kitts and Nevis" : "SKN",
"Saint Lucia" : "LCA",
"Saint Vincent and the Grenadines" : "VIN",
"Samoa" : "SAM",
"San Marino" : "SMR",
"Sao Tome and Principe" : "STP",
"Saudi Arabia" : "KSA",
"Senegal" : "SEN",
"Serbia and Montenegro" : "SCG",
"Seychelles" : "SEY",
"Sierra Leone" : "SLE",
"Singapore" : "SIN",
"Slovakia" : "SVK",
"Slovenia" : "SLO",
"Solomon Islands" : "SOL",
"Somalia" : "SOM",
"South Africa" : "RSA",
"Spain" : "ESP",
"Sri Lanka" : "SRI",
"Sudan" : "SUD",
"Suriname" : "SUR",
"Swaziland" : "SWZ",
"Sweden" : "SWE",
"Switzerland" : "SUI",
"Syria" : "SYR",
"Taiwan (Chinese Taipei)" : "TPE",
"Tajikistan" : "TJK",
"Tanzania" : "TAN",
"Thailand" : "THA",
"Togo" : "TOG",
"Tonga" : "TGA",
"Trinidad and Tobago" : "TRI",
"Tunisia" : "TUN",
"Turkey" : "TUR",
"Turkmenistan" : "TKM",
"Uganda" : "UGA",
"Ukraine" : "UKR",
"United Arab Emirates" : "UAE",
"United Kingdom (Great Britain)" : "GBR",
"United States" : "USA",
"Uruguay" : "URU",
"Uzbekistan" : "UZB",
"Vanuatu" : "VAN",
"Venezuela" : "VEN",
"Vietnam" : "VIE",
"Virgin Islands*" : "ISV",
"Yemen" : "YEM",
"Zambia" : "ZAM",
"Zimbabwe" : "ZIM"
]

