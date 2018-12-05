//
//  Tweet.swift
//  DotsSwiftTwitterClient
//
//  Created by 短期学部 on 2018/12/05.
//  Copyright © 2018年 RiChangryo. All rights reserved.
//

import Foundation

struct Tweet {
    
    // Tweetのid
    let id: String
    
    // Tweetの本文
    let text: String
    
    // このTweetの主
    let user: User
    
}
