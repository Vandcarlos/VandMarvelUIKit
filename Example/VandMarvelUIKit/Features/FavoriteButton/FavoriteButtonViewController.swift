// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import UIKit

class FavoriteButtonViewController: UIViewController {

    private let favoriteButtonView = FavoriteButtonView()

    override func loadView() {
        view = favoriteButtonView
    }

}
