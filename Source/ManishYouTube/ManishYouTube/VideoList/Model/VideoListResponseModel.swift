//
//  VideoListResponseModel.swift
//  ManishYouTube
//
//  Created by Manish Rathi on 08/03/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

struct VideoListResponseModel: CodableModel {
    let nextPageToken: String
    let pageInfo: PageInfoModel
    let videos: [VideoModel]
    
    enum CodingKeys: String, CodingKey {
        case videos = "items"
        case nextPageToken
        case pageInfo
    }
}


struct PageInfoModel: CodableModel {
    let totalResults: Int
    let resultsPerPage: Int
}
