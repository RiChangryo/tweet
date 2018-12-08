//
//  TimelineViewController.swift
//  DotsSwiftTwitterClient
//
//  Created by 短期学部 on 2018/12/06.
//  Copyright © 2018年 RiChangryo. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    // テーブル表示用のデータソース
    var tweets: [Tweet] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // ダミーデータの生成
        print("1")
        let user = User(id: "1", screenName: "ktanaka117", name: "ダンボー田中", profileImageURL: "https://pbs.twimg.com/profile_images/832034247414206464/PCKoQRPD.jpg")
        print("2")
        let tweet = Tweet(id: "01", text: "Twitterクライアント作成なう", user: user)
        print("3")
        let tweets = [tweet]
        print("4")
        self.tweets = tweets
        print("5")
        // tableViewのリロード
        tableView.reloadData()
        print("6")
        
    }
}

extension TimelineViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("セルがタップされたよ！")
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

extension TimelineViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetTableViewCell") as! TweetTableViewCell
        print("7")
        // TweetTableViewCellの描画内容となるtweetを渡す
        //cell.fill(tweet: tweets[indexPath.row])
        print("8")
        return cell
    }
            }



