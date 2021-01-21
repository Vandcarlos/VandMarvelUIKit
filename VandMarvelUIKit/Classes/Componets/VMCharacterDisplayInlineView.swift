// Created on 21/01/21. 

import UIKit

public class VMCharacterDisplayInlineView: UIStackView, VMViewCode {

    public init() {
        super.init(frame: .zero)
        setupView()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override var isLoading: Bool {
        get { itemsIsLoading }
        set {
            itemsIsLoading = newValue
            nameLabel.isLoading = newValue
            thumbnailChracterImageView.isLoading = newValue
        }
    }

    public var thumbnail: UIImage? {
        get { thumbnailChracterImageView.image }
        set { thumbnailChracterImageView.image = newValue }
    }

    public var name: String? {
        get { nameLabel.text }
        set { nameLabel.text = newValue }
    }

    private let thumbnailSize = CGSize(width: 100, height: 120)

    private var itemsIsLoading: Bool = false

    // MARK: Subviews

    private let thumbnailChracterImageView = VMCharacterImageView()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = VMFont.body(size: .md).font
        label.textColor = VMColor.neutral.color
        label.numberOfLines = 4
        return label
    }()

    // MARK: View funcs
    open override func layoutSubviews() {
        super.layoutSubviews()
        layoutSkeletonIfNeeded()
    }

    // MARK: VMViewCode

    public func buildHierarchy() {
        addArrangedSubview(thumbnailChracterImageView)
        addArrangedSubview(nameLabel)
    }

    public func setupConstraints() {
        thumbnailChracterImageView.snp.makeConstraints { maker in
            maker.height.equalTo(thumbnailSize.height)
            maker.width.equalTo(thumbnailSize.width)
        }
    }

    public func configViews() {
        axis = .horizontal
        alignment = .center
        spacing = 4

        layer.borderWidth = 1
        layer.borderColor = VMColor.neutralLight.color?.cgColor
        layer.cornerRadius = 8
        layer.masksToBounds = true
    }

}
