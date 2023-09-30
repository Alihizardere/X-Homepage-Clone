//
//  Tweets.swift
//  X Homepage Clone
//
//  Created by alihizardere on 29.09.2023.
//

import Foundation

class Tweets {
    var userId:Int?
    var userName:String?
    var userNick:String?
    var userBlueTick:String?
    var userImage:String?
    var tweetContent:String?
    var tweetTime:String?
    var tweetReply:String?
    var tweetRepost:String?
    var tweetLike:String?
    var tweetView:String?
    
    init(userId: Int, userName: String, userNick: String, userBlueTick: String, userImage: String, tweetContent: String, tweetTime: String, tweetReply: String, tweetRepost: String, tweetLike: String, tweetView: String) {
        self.userId = userId
        self.userName = userName
        self.userNick = userNick
        self.userBlueTick = userBlueTick
        self.userImage = userImage
        self.tweetContent = tweetContent
        self.tweetTime = tweetTime
        self.tweetReply = tweetReply
        self.tweetRepost = tweetRepost
        self.tweetLike = tweetLike
        self.tweetView = tweetView
    }
    
    
    
    
}
    
