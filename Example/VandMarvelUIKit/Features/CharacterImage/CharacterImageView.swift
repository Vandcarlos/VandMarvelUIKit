// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import VandMarvelUIKit

class CharacterImageView: UIView, VMViewCode {

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let characterImage = VMCharacterImageView()

    func buildHierarchy() {
        addSubview(characterImage)
    }

    func setupConstraints() {
        characterImage.snp.makeConstraints { maker in
            maker.top.equalTo(self.safeAreaLayoutGuide)
            maker.centerX.equalTo(self.safeAreaLayoutGuide)
            maker.height.equalTo(200)
            maker.width.equalTo(200)
        }
    }

    func configViews() {
        backgroundColor = .white
        characterImage.image = UIImage(named: "iron_man")
    }

}
