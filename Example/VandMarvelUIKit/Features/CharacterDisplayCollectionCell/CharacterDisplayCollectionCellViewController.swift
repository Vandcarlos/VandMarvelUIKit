// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import UIKit

class CharacterDisplayCollectionCellViewController: UIViewController {

    private let characterDisplayCollectionCellView = CharacterDisplayCollectionCellView()

    override func loadView() {
        view = characterDisplayCollectionCellView
    }

}
