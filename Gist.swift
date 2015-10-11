//
//  Gist.swift
//  AlmofireNetworking
//
//  Created by Markus Gaab on 11.10.15.
//  Copyright © 2015 Markus Gaab. All rights reserved.
//

import Foundation
import SwiftyJSON



class Gist {
    var id: String?
    var description: String?
    var ownerLogin: String?
    var ownerAvatarURL: String?
    var url: String?
    
    required init(json: JSON) {
        self.description = json["description"].string
        self.id = json["id"].string
        self.ownerLogin = json["description"].string
        self.ownerAvatarURL = json["owner"]["avatar_url"].string
        self.url = json["url"].string
    }
    
    required init () {
        
    }
    
}
