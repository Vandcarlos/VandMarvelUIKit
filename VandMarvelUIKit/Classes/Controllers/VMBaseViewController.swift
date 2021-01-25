// Created on 21/01/21. 

import UIKit

open class VMBaseViewController: UIViewController {

    open override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = VMColor.background.color

        if #available(iOS 13.0, *) {
            let navBarAppearance = VMNavigationBarApperance()
            navigationItem.standardAppearance = navBarAppearance
            navigationItem.scrollEdgeAppearance = navBarAppearance
        }
    }

}
