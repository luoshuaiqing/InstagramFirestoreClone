// Copyright © 2023 Snap, Inc. All rights reserved.

import Foundation
import Firebase

struct User {
    let email: String
    let fullname: String
    let profileImageUrl: String
    let username: String
    let uid: String
    
    var stats = UserStats(followers: 0, followings: 0)
    
    var isFollowed: Bool?
    
    var isCurrentUser: Bool {
        return Auth.auth().currentUser?.uid == uid
    }
    
    init(dictionary: [String: Any]) {
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}

struct UserStats {
    let followers: Int
    let followings: Int
}
