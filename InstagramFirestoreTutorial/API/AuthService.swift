// Copyright © 2023 Snap, Inc. All rights reserved.

import Foundation
import UIKit

struct AuthCredentials {
    let email: String
    let password: String
    let fullname: String
    let username: String
    let profileImage: UIImage
}

struct AuthService {
    static func registerUser(withCredentials credentials: AuthCredentials, completion: @escaping(Error?) -> Void) {
        
    }
}
