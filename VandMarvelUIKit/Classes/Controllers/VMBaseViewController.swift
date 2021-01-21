// Created on 21/01/21. 

import UIKit

open class VMBaseViewController: UIViewController {

    open override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupNavigation()
        setupTabBar()
    }

    private func setupView() {
        view.backgroundColor = VMColor.background.color
    }

    private func setupNavigation() {
        navigationController?.navigationBar.barTintColor = VMColor.primary.color
        navigationController?.navigationBar.tintColor = VMColor.secondary.color
    }

    private func setupTabBar() {
        tabBarController?.tabBar.barTintColor = VMColor.primary.color
        tabBarController?.tabBar.tintColor = VMColor.secondary.color
    }

}
