// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import VandMarvelUIKit

class FavoriteButtonView: UIView, VMViewCode {

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private let firstFavoriteButton = VMFavoriteButton()
    private let secondFavoriteButton = VMFavoriteButton()

    func buildHierarchy() {
        contentStackView.addArrangedSubview(firstFavoriteButton)
        contentStackView.addArrangedSubview(secondFavoriteButton)
        contentStackView.addSpace(backgroundColor: .blue)
        addSubview(contentStackView)
    }

    func setupConstraints() {
        contentStackView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }

    func configViews() {
        backgroundColor = .white

        secondFavoriteButton.isSelected = true

        firstFavoriteButton.addTarget(
            self,
            action: #selector(favoriteButtonDidTouchUpInsie),
            for: .touchUpInside
        )
    }

    @objc private func favoriteButtonDidTouchUpInsie(sender: Any?) {
        guard let button = sender as? VMFavoriteButton else { return }
        switch button {
        case firstFavoriteButton: debugPrint("First button tapped")
        case secondFavoriteButton: debugPrint("Second button tapped")
        default: break
        }
    }

}
