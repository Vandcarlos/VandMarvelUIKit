import UIKit

public final class VandMarvelUIKit {

    private init() {}

    public static let shared = VandMarvelUIKit()

    public var colorLoader: VMColorLoader = VMColorLoaderDefault()
    public var fontLoader: VMFontLoader = VMFontLoaderDefault()

}
