// Created on 20/01/21. 

import Foundation

public class VMCharacterImageView: UIImageView, VMViewCode {

    public init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override var image: UIImage? {
        get { super.image }
        set { super.image = newValue ?? placeholder }
    }

    public var placeholder: UIImage? = VMImage.characterThumbnail.image {
        didSet {
            super.image = image ?? placeholder
        }
    }

    public func buildHierarchy() {}

    public func setupConstraints() {}

    public func configViews() {
        image = placeholder
    }

}
