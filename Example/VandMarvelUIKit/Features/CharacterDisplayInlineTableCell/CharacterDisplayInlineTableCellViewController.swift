// Created on 21/01/21. Copyright © 2021 Vand. All rights reserved.

import VandMarvelUIKit

class CharacterDisplayInlineTableCellViewController: UIViewController {

    private let characterDisplayInlineTableCellView = CharacterDisplayInlineTableCellView()

    override func loadView() {
        view = characterDisplayInlineTableCellView
    }

}
