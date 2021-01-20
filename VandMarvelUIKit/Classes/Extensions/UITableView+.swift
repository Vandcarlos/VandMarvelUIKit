// Created on 20/01/21. 

import UIKit

public extension UITableView {

    func register<Cell: UITableViewCell>(_ cellType: Cell.Type) {
        register(cellType, forCellReuseIdentifier: cellType.resuseIdentifier )
    }

    func dequeueReusableCell<Cell: UITableViewCell>(_ cellType: Cell.Type, for indexPath: IndexPath) -> Cell {
        let cell = dequeueReusableCell(withIdentifier: cellType.resuseIdentifier, for: indexPath)

        return cell as? Cell ?? Cell(style: .default, reuseIdentifier: cellType.resuseIdentifier)
    }

}
