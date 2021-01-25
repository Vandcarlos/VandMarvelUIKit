// Created on 25/01/21. 

import UIKit

open class VMBaseTabBarController: UITabBarController {

    open override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = VMColor.primary.color
        tabBar.tintColor = VMColor.secondary.color

        if #available(iOS 13.0, *) {
            let navBarAppearance = VMNavigationBarApperance()
            navigationItem.standardAppearance = navBarAppearance
            navigationItem.scrollEdgeAppearance = navBarAppearance
        }
    }

}
