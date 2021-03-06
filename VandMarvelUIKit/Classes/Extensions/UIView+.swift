// Created on 20/01/21. 

import UIKit
import SnapKit
import SkeletonView

public extension UIView {

    @objc var isLoading: Bool {
        get {
            isSkeletonActive
        }
        set {
            isSkeletonable = newValue
            newValue ? showAnimatedGradientSkeleton() : hideSkeleton()
        }
    }

    class func spaceView(
        height: Double? = nil,
        width: Double? = nil,
        backgroundColor: UIColor = .clear
    ) -> UIView {
        let view = UIView()

        view.backgroundColor = backgroundColor

        view.snp.makeConstraints { maker in

            if let height = height {
                maker.height.equalTo(height)
            }

            if let width = width {
                maker.width.equalTo(width)
            }
        }

        return view
    }

}
