// Created on 20/01/21. 

import UIKit

public class VMCharacterDisplayCollectionViewCell: UICollectionViewCell, VMViewCode {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override var isLoading: Bool {
        get { characterDisplay.isLoading }
        set { characterDisplay.isLoading = newValue }
    }

    public var favoriteHandler: VMCharacterDisplayCompactView.FavoriteHandler? {
        get { characterDisplay.favoriteHandler }
        set { characterDisplay.favoriteHandler = newValue }
    }

    public var thumbnail: UIImage? {
        get { characterDisplay.thumbnail }
        set { characterDisplay.thumbnail = newValue }
    }

    public var name: String? {
        get { characterDisplay.name }
        set { characterDisplay.name = newValue }
    }

    public var isFavorited: Bool {
        get { characterDisplay.isFavorited }
        set { characterDisplay.isFavorited = newValue }
    }

    private let characterDisplay = VMCharacterDisplayCompactView()

    public func buildHierarchy() {
        contentView.addSubview(characterDisplay)
    }

    public func setupConstraints() {
        characterDisplay.snp.makeConstraints { maker in
            maker.edges.equalTo(contentView.safeAreaLayoutGuide)
        }
    }

    public func configViews() {

    }

}
