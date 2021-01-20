// Created on 20/01/21. 

import UIKit

public enum VMImage: String {

    case heart

    public var image: UIImage {
        UIImage(named: rawValue, in: Bundle(for: VandMarvelUIKit.self), compatibleWith: nil) ?? UIImage()
    }

}
