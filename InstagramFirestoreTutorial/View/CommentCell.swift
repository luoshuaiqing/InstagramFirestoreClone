// Copyright © 2023 Snap, Inc. All rights reserved.

import UIKit

class CommentCell: UICollectionViewCell {

    // MARK: - Properties

    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .lightGray
        iv.setDimensions(height: 40, width: 40)
        iv.layer.cornerRadius = 40 / 2
        return iv
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(profileImageView)
        profileImageView.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 8)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
