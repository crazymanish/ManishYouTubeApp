//
//  ApiClientManager+VideoList.swift
//  ManishYouTube
//
//  Created by Manish Rathi on 08/03/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

extension ApiClientManager {
    /**
     Fetch YouTube Video List by using "https://www.googleapis.com/youtube/v3/search".
     */
    func fetchVideos(pageToken: String, completionBlock: @escaping (VideoListResponseModel?, Error?) -> Void) {
        // Create Instance of `Fetch Videos Api Request`
        var apiRequest = FetchVideoListApiRequest()
        apiRequest.path = String(format: apiRequest.path, Constants.maxResultCount, Constants.youTubeApiKey, Constants.searchingWord, pageToken)
        apiRequest.path = apiRequest.path.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        // Call "GET" Videos Api.
        self.get(apiRequest) { (response) in
            if response.isValid {
                completionBlock(VideoListResponseModel.initWithResponse(response), response.error)
            } else {
                completionBlock(nil, response.error)
            }
        }
    }
    
    
    /**
     TODO: Write here more Videos related Api(s).
     */
}
