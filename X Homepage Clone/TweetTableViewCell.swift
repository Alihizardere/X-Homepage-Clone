//
//  TweetTableViewCell.swift
//  X Homepage Clone
//
//  Created by alihizardere on 29.09.2023.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userNick: UILabel!
    @IBOutlet weak var userBlueTick: UIImageView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var tweetTime: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    @IBOutlet weak var tweetReply: UILabel!
    @IBOutlet weak var tweetRepost: UILabel!
    @IBOutlet weak var tweetLike: UILabel!
    @IBOutlet weak var tweetView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
