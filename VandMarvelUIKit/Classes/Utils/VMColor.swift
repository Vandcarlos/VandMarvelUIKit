// Created on 20/01/21. 

import Foundation

public enum VMColor: String {

    case primary
    case primaryLight = "primary_light"
    case primaryDark = "primary_dark"

    case secondary
    case secondaryLight = "secondary_light"
    case secondaryDark = "secondary_dark"

    case tertiary
    case tertiaryLight = "tertiary_light"
    case tertiaryDark = "tertiary_dark"

    case neutral
    case neutralLight = "neutral_light"
    case neutralDark = "neutral_dark"

    case success
    case alert
    case error

    case background

    var color: UIColor { VandMarvelUIKit.shared.colorLoader.loadColor(named: rawValue) }

}

public protocol VMColorLoader {

    func loadColor(named: String) -> UIColor

}

public class VMColorLoaderDefault: VMColorLoader {

    public func loadColor(named: String) -> UIColor {
        UIColor(
            named: "\(named)_color",
            in: Bundle(for: VandMarvelUIKit.self),
            compatibleWith: nil
        ) ?? .clear
    }

}
