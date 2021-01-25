// Created on 25/01/21. 

import Foundation

open class VMBaseNavigationController: UINavigationController {

    open override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.barTintColor = VMColor.primary.color
        navigationBar.tintColor = VMColor.secondary.color

        if #available(iOS 13.0, *) {
            let navBarAppearance = VMNavigationBarApperance()
            navigationItem.standardAppearance = navBarAppearance
            navigationItem.scrollEdgeAppearance = navBarAppearance
        }
    }

}
