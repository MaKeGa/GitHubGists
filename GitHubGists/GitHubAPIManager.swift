//
//  GitHubAPIManager.swift
//  GitHubGists
//
//  Created by Markus Gaab on 10.10.15.
//  Copyright © 2015 Markus Gaab. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class GitHubAPIManager {
    
    static let sharedInstance = GitHubAPIManager()
    
    
    func printPublicGists() -> Void {
        Alamofire.request(.GET, "https://api.github.com/gists/public")
        .responseString { _, _, result in
            if let receivedString = result.value {
                print(receivedString)
            }
        }
    }
    
}


