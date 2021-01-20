// Created on 20/01/21. 

import UIKit

public class VMFavoriteButton: UIButton, VMViewCode {

    public init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var selectedTintColor: UIColor? = VMColor.primary.color {
        didSet {
            checkCurrentColor()
        }
    }

    public var unselectedTintColor: UIColor? = VMColor.neutralLight.color {
        didSet {
            checkCurrentColor()
        }
    }

    public override var isSelected: Bool {
        get { super.isSelected }
        set {
            super.isSelected = newValue
            checkCurrentColor()
        }
    }

    public func buildHierarchy() {

    }

    public func setupConstraints() {
        snp.makeConstraints { maker in
            maker.height.equalTo(24)
            maker.width.equalTo(24)
        }
    }

    public func configViews() {
        backgroundColor = .clear

        setImage(VMImage.heart.image, for: .normal)

        addTarget(self, action: #selector(didTouchUpInside), for: .touchUpInside)

        checkCurrentColor()
    }

    @objc private func didTouchUpInside() {
        isSelected.toggle()
    }

    private func checkCurrentColor() {
        tintColor = isSelected ? selectedTintColor : unselectedTintColor
    }

}
