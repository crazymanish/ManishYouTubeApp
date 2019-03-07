//
//  VideoModel.swift
//  ManishYouTube
//
//  Created by Manish Rathi on 08/03/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

struct VideoModel: CodableModel {
    let id: VideoIdModel
    let info: VideoInfoModel
    
    enum CodingKeys: String, CodingKey {
        case info = "snippet"
        case id
    }
}

struct VideoIdModel: CodableModel {
    let videoId: String
    let kind: String
}

struct VideoInfoModel: CodableModel {
    let title: String
    let channelTitle: String
    let thumbnails: VideoThumbnailsModel
}

struct VideoThumbnailsModel: CodableModel {
    let medium: ThumbnailModel
    let high: ThumbnailModel
}

struct ThumbnailModel: CodableModel {
    let url: String
    let width: Int
    let height: Int
}
