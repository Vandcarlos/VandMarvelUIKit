// Created on 20/01/21. 

import UIKit
import SnapKit

public class VMCharacterDisplayCompactView: UIStackView, VMViewCode {

    public typealias FavoriteHandler = () -> Void

    public init() {
        super.init(frame: .zero)
        setupView()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var favoriteHandler: FavoriteHandler?

    public var thumbnail: UIImage? {
        get { thumbnailChracterImageView.image }
        set { thumbnailChracterImageView.image = newValue }
    }

    public var name: String? {
        get { nameLabel.text }
        set { nameLabel.text = newValue }
    }

    public var isFavorited: Bool {
        get { favoriteButton.isSelected }
        set { favoriteButton.isSelected = newValue }
    }

    private let favoriteButtonOffset = 10.0

    // MARK: Subviews

    private let thumbnailChracterImageView = VMCharacterImageView()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = VMFont.body(size: .md).font
        label.textColor = VMColor.neutral.color
        label.numberOfLines = 2
        return label
    }()

    private let favoriteButton = VMFavoriteButton()

    // MARK: View funcs
    open override func layoutSubviews() {
        super.layoutSubviews()
        layoutSkeletonIfNeeded()
    }

    // MARK: VMViewCode

    public func buildHierarchy() {
        addArrangedSubview(thumbnailChracterImageView)
        addSpace()
        addArrangedSubview(nameLabel)

        addSubview(favoriteButton)
    }

    public func setupConstraints() {
        thumbnailChracterImageView.snp.makeConstraints { maker in
            maker.height.equalTo(safeAreaLayoutGuide).multipliedBy(0.8)
        }

        favoriteButton.snp.makeConstraints { maker in
            maker.top.equalTo(safeAreaLayoutGuide).offset(favoriteButtonOffset)
            maker.trailing.equalTo(safeAreaLayoutGuide).offset(-favoriteButtonOffset)
        }
    }

    public func configViews() {
        axis = .vertical

        distribution = .fill

        layer.borderWidth = 1
        layer.borderColor = VMColor.neutralLight.color?.cgColor
        layer.cornerRadius = 8
        layer.masksToBounds = true

        favoriteButton.addTarget(self, action: #selector(favoriteButtonTouchUpInside), for: .touchUpInside)
    }

    // MARK: Private funcs

    @objc private func favoriteButtonTouchUpInside() {
        favoriteHandler?()
    }

}
