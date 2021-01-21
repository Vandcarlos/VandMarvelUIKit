// Created on 21/01/21. Copyright © 2021 Vand. All rights reserved.

import VandMarvelUIKit

class CharacterDisplayInlineView: UIView, VMViewCode {

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let contentStackView: UIStackView = {
        let stackVew = UIStackView()
        stackVew.axis = .vertical
        stackVew.spacing = 20
        return stackVew
    }()

    private let characterDisplay = VMCharacterDisplayInlineView()
    private let characterDisplayLoading = VMCharacterDisplayInlineView()

    func buildHierarchy() {
        contentStackView.addArrangedSubview(characterDisplay)
        contentStackView.addArrangedSubview(characterDisplayLoading)
        contentStackView.addSpace()

        addSubview(contentStackView)
    }

    func setupConstraints() {
        contentStackView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }

    func configViews() {
        backgroundColor = .white

        characterDisplay.thumbnail = UIImage(named: "iron_man")
        characterDisplay.name = "Character display"

        characterDisplayLoading.isLoading = true
    }

}
