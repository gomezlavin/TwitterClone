//
//  TweetCell.swift
//  TwitterCloneCodepath
//
//  Created by SGLMR on 30/10/16.
//  Copyright © 2016 Golavs. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    
    @IBOutlet weak var actionImageView: UIImageView!
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userHandleLabel: UILabel!
    @IBOutlet weak var tweetTimestampLabel: UILabel!
    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var retweetsLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    
    var tweet: Tweet! {
        didSet {
            userImageView.setImageWith(tweet.userImageUrl!)
            userNameLabel.text = tweet.userName
            userHandleLabel.text = "@\(tweet.userHandle!)"
//            tweetTimestampLabel = 
            tweetTextLabel.text = tweet.text
            retweetsLabel.text = String(tweet.retweetCount)
            likesLabel.text = String(tweet.favoritesCount)
            actionLabel.text = tweet.retweeterName
            
            if tweet.favorited == true {
                let fv = UIImage(named: "like.png")
                actionImageView.image = fv
                actionLabel.text = "\(tweet.retweeterName) liked this"
            }
            
            if tweet.retweeted == true {
                let rt = UIImage(named: "retweet.png")
                actionImageView.image = rt
                actionLabel.text = "\(tweet.retweeterName) Retweeted"
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        userImageView.layer.cornerRadius = 5
        userImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
