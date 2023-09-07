// Copyright © 2023 Snap, Inc. All rights reserved.

import UIKit

struct CommentViewModel {

    private let comment: Comment

    var profileImageUrl: URL? {
        return URL(string: comment.profileImageUrl)
    }

    private var username: String {
        return comment.username
    }

    private var commentText: String {
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

    func size(forWidth width: CGFloat) -> CGSize {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = comment.comment
        label.lineBreakMode = .byWordWrapping
        label.setWidth(width)
        return label.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
    }
}
