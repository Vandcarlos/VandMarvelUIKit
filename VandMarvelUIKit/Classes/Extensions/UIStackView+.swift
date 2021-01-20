// Created on 20/01/21. 

import UIKit

public extension UIStackView {

    func addSpace(
        height: Double? = nil,
        width: Double? = nil,
        backgroundColor: UIColor = .clear
    ) {
        let spacer = UIView.spaceView(height: height, width: width, backgroundColor: backgroundColor)
        addArrangedSubview(spacer)
    }

}
