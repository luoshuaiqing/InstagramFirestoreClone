// Copyright © 2023 Snap, Inc. All rights reserved.

import UIKit

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    var followButtonText: String {
        if user.isCurrentUser {
            return "Edit Profile"
        }
        guard let isFollowed = user.isFollowed else {
            return "Loading..."
        }
        return isFollowed ? "Following" : "Follow"
    }
    
    var followButtonBackgroundColor: UIColor {
        return user.isCurrentUser ? .white : .systemBlue
    }
    
    var followButtonTextColor: UIColor {
        return user.isCurrentUser ? .black : .white
    }
    
    var numberOfFollowersText: NSAttributedString {
        return attributedStatText(value: user.stats.followers, label: "followers")
    }
    
    var numberOfFollowingsText: NSAttributedString {
        return attributedStatText(value: user.stats.followings, label: "followings")
    }
    
    var numberOfPostsText: NSAttributedString {
        return attributedStatText(value: 0, label: "posts")
    }
    
    init(user: User) {
        self.user = user
    }
    
    private func attributedStatText(value: Int, label: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: "\(value)\n", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: label, attributes: [.font: UIFont.systemFont(ofSize: 14), .foregroundColor: UIColor.lightGray]))
        return attributedText
    }
}
