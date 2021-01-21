// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import VandMarvelUIKit

class CharacterDisplayCollectionCellView: UIView, VMViewCode {

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let collectionViewLayout: UICollectionViewLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 150, height: 250)
        return layout
    }()

    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.register(VMCharacterDisplayCollectionViewCell.self)
        collectionView.dataSource = self
        collectionView.backgroundColor = .white

        return collectionView
    }()

    func buildHierarchy() {
        addSubview(collectionView)
    }

    func setupConstraints() {
        collectionView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }

    func configViews() {
        backgroundColor = .white
    }

}

extension CharacterDisplayCollectionCellView: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        22
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            VMCharacterDisplayCollectionViewCell.self,
            for: indexPath
        )

        cell.name = "Test\nTest"
        cell.isLoading = indexPath.row % 2 == 0

        return cell
    }

}
