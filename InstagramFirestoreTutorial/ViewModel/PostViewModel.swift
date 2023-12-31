// Copyright © 2023 Snap, Inc. All rights reserved.

import UIKit

struct PostViewModel {
    var post: Post

    var imageUrl: URL? {
        return URL(string: post.imageUrl)
    }

    var userProfileImageUrl: URL? {
        return URL(string: post.ownerImageUrl)
    }

    var username: String {
        return post.ownerUsername
    }

    var caption: String {
        return post.caption
    }
    
    var likeButtonTintColor: UIColor {
        return post.didLike ? .red : .black
    }
    
    var likeButtonImage: UIImage! {
        let imageName = post.didLike ? "like_selected" : "like_unselected"
        return UIImage(named: imageName)
    }

    var likesLabelText: String {
        if post.likes != 1 {
            return "\(post.likes) likes"
        } else {
            return "\(post.likes) like"
        }
    }
}
