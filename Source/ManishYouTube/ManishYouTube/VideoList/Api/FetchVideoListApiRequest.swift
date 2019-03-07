//
//  FetchVideoListApiRequest.swift
//  ManishYouTube
//
//  Created by Manish Rathi on 08/03/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

struct FetchVideoListApiRequest: ApiRequest {
    var path: String
    
    var body: Dictionary<String, Any>?
    
    var query: Dictionary<String, String>?
    
    var headers: Dictionary<String, String>?
    
    init() {
        self.path = ApiPath.fetchVideos
    }
}
