// Copyright © 2023 Snap, Inc. All rights reserved.

import Foundation

struct CommentViewModel {

    private let comment: Comment

    var profileImageUrl: URL? {
        return URL(string: comment.profileImageUrl)
    }

    var username: String {
        return comment.username
    }

    var commentText: String {
        return comment.comment
    }

    init(comment: Comment) {
        self.comment = comment
    }
}
