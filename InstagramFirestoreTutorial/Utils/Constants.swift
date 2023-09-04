// Copyright © 2023 Snap, Inc. All rights reserved.

import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWERS = Firestore.firestore().collection("followers")
let COLLECTION_FOLLOWINGS = Firestore.firestore().collection("followings")
