//
//  DemoURL.swift
//  PhotoApp
//
//  Created by hyejeong seo on 2018. 6. 29..
//  Copyright © 2018년 hyejeong seo. All rights reserved.
//

import Foundation

struct DemoURL {
    static let Stanford = "https://comm.stanford.edu/mm/2016/07/facebook-art.jpg"
    
    static let NASA = [
        "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
    ]
    
    static func NASAImageNamed(imageName: String?) -> NSURL? {
        if let urlstring = NASA[imageName ?? ""] {
            return NSURL(string: urlstring)
        } else {
            return nil
        }
    }
}
