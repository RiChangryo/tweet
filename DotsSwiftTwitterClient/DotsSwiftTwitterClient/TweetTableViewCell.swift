//
//  TweetTableViewCell.swift
//  DotsSwiftTwitterClient
//
//  Created by 短期学部 on 2018/12/06.
//  Copyright © 2018年 RiChangryo. All rights reserved.
//

// TweetTableViewCell.swift

    import UIKit
    
    class TweetTableViewCell: UITableViewCell {
        
        // アイコンを表示するUIImageView
        @IBOutlet weak var iconImageView: UIImageView!
        
        // 名前(ダンボー田中フレンズ)を表示するUILabel
        @IBOutlet weak var nameLabel: UILabel!
        
        // スクリーンネーム(@ktanaka117)を表示するUILabel
        @IBOutlet weak var screenNameLabel: UILabel!
        
        // ツイート本文を表示するUILabel
        @IBOutlet weak var textContentLabel: UILabel!
        
        func fill(tweet: Tweet) {
            
            // profileImageURLから画像をダウンロードしてくる処理
            let downloadTask = URLSession.shared.dataTask(with: URL(string: tweet.user.profileImageURL)!) { [weak self] data, response, error in if let error = error {
                    print(error)
                    return
                }
                
                DispatchQueue.main.async {
                    // iconImageViewにダウンロードしてきた画像を代入する処理
                    self?.iconImageView.image = UIImage(data: data!)
                }
            }
            downloadTask.resume()
            
            // tweetから値を取り出して、UIにセットする
            nameLabel.text = tweet.user.name
            textContentLabel.text = tweet.text
            // screenNameには "@" が含まれていないので、頭に "@" を入れてあげる必要がある
            screenNameLabel.text = "@" + tweet.user.screenName
        }
        
    }
