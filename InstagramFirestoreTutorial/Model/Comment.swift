// Copyright © 2023 Snap, Inc. All rights reserved.

import Firebase

struct Comment {
    let uid: String
    let username: String
    let profileImageUrl: String
    let timestamp: Timestamp
    let comment: String

    init(dictionary: [String: Any]) {
        self.uid = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())
        self.comment = dictionary["comment"] as? String ?? ""
    }
}
