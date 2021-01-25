// Created on 25/01/21. 

import UIKit

@available(iOS 13.0, *)
public class VMNavigationBarApperance: UINavigationBarAppearance {

    public init() {
        super.init(barAppearance: UIBarAppearance())
        setup()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        titleTextAttributes = [.foregroundColor: VMColor.secondary.color as Any]
        largeTitleTextAttributes = [.foregroundColor: VMColor.secondary.color as Any]
        backgroundColor = VMColor.primary.color
    }

}
