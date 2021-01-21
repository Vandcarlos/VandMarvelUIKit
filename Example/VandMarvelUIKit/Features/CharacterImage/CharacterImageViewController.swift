// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import UIKit

class CharacterImageViewController: UIViewController {

    private let characterImageView = CharacterImageView()

    override func loadView() {
        view = characterImageView
    }

}
