// Copyright © 2023 Snap, Inc. All rights reserved.

import UIKit
import Firebase

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    var hasCheckedWhetherUserIsLoggedIn = false
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        checkIfUserIsLoggedIn()
    }
    
    // MARK: - API
    
    func checkIfUserIsLoggedIn() {
        if Auth.auth().currentUser == nil, !hasCheckedWhetherUserIsLoggedIn {
            let controller = LoginController()
            let nav = UINavigationController(rootViewController: controller)
            nav.modalPresentationStyle = .fullScreen
            self.present(nav, animated: true, completion: nil)
        }
        hasCheckedWhetherUserIsLoggedIn = true
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white

        let feedLayout = UICollectionViewFlowLayout()
        let feed = templateNavigationController(unselectedImage: UIImage(named: "home_unselected")!, selectedImage: UIImage(named: "home_selected")!, rootViewController: FeedController(collectionViewLayout: feedLayout))
        let search = templateNavigationController(unselectedImage: UIImage(named: "search_unselected")!, selectedImage: UIImage(named: "search_selected")!, rootViewController: SearchController())
        let imageSelector = templateNavigationController(unselectedImage: UIImage(named: "plus_unselected")!, selectedImage: UIImage(named: "plus_unselected")!, rootViewController: ImageSelectorController())
        let notifications = templateNavigationController(unselectedImage: UIImage(named: "like_unselected")!, selectedImage: UIImage(named: "like_selected")!, rootViewController: NotificationsController())
        let profileLayout = UICollectionViewFlowLayout()
        let profile = templateNavigationController(unselectedImage: UIImage(named: "profile_unselected")!, selectedImage: UIImage(named: "profile_selected")!, rootViewController: ProfileController(collectionViewLayout: profileLayout))
        
        viewControllers = [feed, search, imageSelector, notifications, profile]
        
        tabBar.tintColor = .black
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
    
}
