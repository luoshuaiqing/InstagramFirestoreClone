// Copyright © 2023 Snap, Inc. All rights reserved.

import Foundation

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
        return user.isCurrentUser ? "Following" : "Follow"
    }
    
    init(user: User) {
        self.user = user
    }
}
