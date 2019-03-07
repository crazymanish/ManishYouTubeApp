//
//  VideoModel.swift
//  ManishYouTube
//
//  Created by Manish Rathi on 08/03/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

struct VideoModel: CodableModel {
    let id: Int
    let info: VideoInfoModel
    
    enum CodingKeys: String, CodingKey {
        case info = "snippet"
        case id
    }
}

struct VideoInfoModel: CodableModel {
    let title: String
    let channelTitle: String
    let thumbnails: VideoThumbnailsModel
}

struct VideoThumbnailsModel: CodableModel {
    let standard: ThumbnailModel
    let medium: ThumbnailModel
    let high: ThumbnailModel
}

struct ThumbnailModel: CodableModel {
    let url: String
    let width: Int
    let height: Int
}
