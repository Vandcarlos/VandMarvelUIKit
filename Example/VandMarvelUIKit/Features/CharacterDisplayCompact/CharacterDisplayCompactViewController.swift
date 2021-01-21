// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import UIKit

class CharacterDisplayCompactViewController: UIViewController {

    private let characterDisplayCompactView = CharacterDisplayCompactView()

    override func loadView() {
        view = characterDisplayCompactView
    }

}
