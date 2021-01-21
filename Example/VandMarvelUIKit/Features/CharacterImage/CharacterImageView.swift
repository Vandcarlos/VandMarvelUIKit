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

    private let contentStackView: UIStackView = {
        let stackVew = UIStackView()
        stackVew.axis = .vertical
        stackVew.alignment = .center
        stackVew.spacing = 20
        return stackVew
    }()

    private let characterImage = VMCharacterImageView()
    private let characterImageLoading = VMCharacterImageView()
    private let characterImageNoImage = VMCharacterImageView()

    func buildHierarchy() {
        contentStackView.addArrangedSubview(characterImage)
        contentStackView.addArrangedSubview(characterImageLoading)
        contentStackView.addArrangedSubview(characterImageNoImage)
        contentStackView.addSpace()

        addSubview(contentStackView)
    }

    func setupConstraints() {
        contentStackView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.safeAreaLayoutGuide)
        }

        characterImage.snp.makeConstraints { maker in
            maker.height.equalTo(100)
            maker.width.equalTo(100)
        }

        characterImageLoading.snp.makeConstraints { maker in
            maker.height.equalTo(100)
            maker.width.equalTo(100)
        }

        characterImageNoImage.snp.makeConstraints { maker in
            maker.height.equalTo(100)
            maker.width.equalTo(100)
        }
    }

    func configViews() {
        backgroundColor = .white
        characterImage.image = UIImage(named: "iron_man")
        characterImageLoading.isLoading = true
        characterImageNoImage.image = nil
    }

}
