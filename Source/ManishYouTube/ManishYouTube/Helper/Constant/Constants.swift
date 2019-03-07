//
//  Constants.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 05/03/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

/**
 `Constants` is the contant value used by YouTube project. It encompasses a few different types of constants,
 each with their own associated value.
 */
struct Constants {
    /**
     `Constants` youTubeApiKey:   Returned YouTube Api Key, which is use to fetch Youtube Videos.
     */
    static let youTubeApiKey =  "AIzaSyBPB3MJriCsicB1MhDWCmjXBFMHf3dkl1w"
    
    /**
     `Constants` maxResultCount:   Returned max result count, which will use, while fetch videos from Youtube search Api.
     */
    static let maxResultCount = 10
    
    /**
     `Constants` searchingWord:  which will use, while fetch videos from Youtube search Api. (Hard-Coded Only for demo.)
     */
    static let searchingWord = "sachin tendulkar"
}


// Web-service Api path(s).
struct ApiPath {
    static let fetchVideos = "search?part=snippet&regionCode=IN&relevanceLanguage=en&type=video&order=relevance&maxResults=%d&key=%@&q=%@"
    //more to go...
}


// UITableView Cell Indetifier(s).
struct UITableViewCellIndentifier {
    static let userProfile = "UserProfileTableViewCell"
    //more to go...
}


// Image Name(s).
struct ImageName {
    static let noImage = "no-image"
    //more to go...
}


// Segue Identifier(s).
struct SegueIndentifier {
    static let userProfileListToDetail = "UserProfileListToDetail"
    //more to go...
}
