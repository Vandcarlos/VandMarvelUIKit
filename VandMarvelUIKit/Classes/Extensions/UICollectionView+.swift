// Created on 20/01/21. 

import UIKit

public extension UICollectionView {

    func register<Cell: UICollectionViewCell>(_ cellType: Cell.Type) {
        register(cellType, forCellWithReuseIdentifier: cellType.resuseIdentifier )
    }

    func dequeueReusableCell<Cell: UICollectionViewCell>(
        _ cellType: Cell.Type,
        for indexPath: IndexPath
    ) -> Cell {
        let cell = dequeueReusableCell(withReuseIdentifier: cellType.resuseIdentifier, for: indexPath)

        return cell as? Cell ?? Cell()
    }

}
