// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import VandMarvelUIKit

class CharacterDisplayCompactView: UIView, VMViewCode {

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
        stackVew.alignment = .center
        stackVew.spacing = 20
        return stackVew
    }()

    private let characterDisplay = VMCharacterDisplayCompactView()
    private let characterDisplayLoading = VMCharacterDisplayCompactView()

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

        characterDisplay.snp.makeConstraints { maker in
            maker.height.equalTo(150)
        }

        characterDisplayLoading.snp.makeConstraints { maker in
            maker.height.equalTo(150)
        }
    }

    func configViews() {
        backgroundColor = .white

        characterDisplay.thumbnail = UIImage(named: "iron_man")
        characterDisplay.name = "Character display"
        characterDisplay.favoriteHandler = {
            debugPrint("Character display")
        }

        characterDisplayLoading.isLoading = true
    }

}
