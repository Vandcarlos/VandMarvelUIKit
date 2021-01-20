//
//  MainViewController.swift
//  VandMarvelUIKit
//
//  Created by Vandcarlos on 01/19/2021.
//  Copyright (c) 2021 Vandcarlos. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    private lazy var mainView: MainView = {
        let view = MainView()
        view.delegate = self
        return view
    }()

    override func loadView() {
        view = mainView
    }

}

extension MainViewController: MainViewDelegate {

    func mainView(_ mainView: MainView, didSelectOption option: MainView.Option) {
        navigationController?.pushViewController(option.viewController(), animated: true)
    }

}
