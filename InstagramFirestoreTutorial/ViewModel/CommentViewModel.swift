// Copyright © 2023 Snap, Inc. All rights reserved.

import UIKit

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

    func commentLabelText() -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: "\(username) ", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedString.append(NSAttributedString(string: commentText, attributes: [.font: UIFont.systemFont(ofSize: 14)]))
        return attributedString
    }
}
