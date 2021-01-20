// Created on 20/01/21. 

import Foundation

public enum VMFont {

    case title(size: Size)
    case body(size: Size)

    public enum Size {

        case sm
        case md
        case xl

    }

    public var font: UIFont? { VandMarvelUIKit.shared.fontLoader.loadFont(font: self) }

}

public protocol VMFontLoader {

    func loadFont(font: VMFont) -> UIFont?

}

open class VMFontLoaderDefault: VMFontLoader {

    init() {
        registerFonts()
    }

    enum Font: String, CaseIterable {

        case light = "Montserrat-Light"
        case regular = "Montserrat-Regular"
        case bold = "Montserrat-Medium"

    }

    private func registerFonts() {
        let bundle = Bundle(for: VandMarvelUIKit.self)

        Font.allCases.forEach {
            guard let fontURL = bundle.url(forResource: $0.rawValue, withExtension: "ttf") else { return }
            guard let fontData = try? Data(contentsOf: fontURL) as CFData else { return }
            guard let provider = CGDataProvider(data: fontData) else { return }
            guard let font = CGFont(provider) else { return }

            CTFontManagerRegisterGraphicsFont(font, nil)
        }
    }

    public func loadFont(font: VMFont) -> UIFont? {
        switch font {
        case .title(let size): return titleFont(for: size)
        case .body(let size): return bodyFont(for: size)
        }
    }

    private func titleFont(for size: VMFont.Size) -> UIFont? {
        switch size {
        case .sm: return UIFont(name: Font.bold.rawValue, size: 18)
        case .md: return UIFont(name: Font.regular.rawValue, size: 20)
        case .xl: return UIFont(name: Font.regular.rawValue, size: 22)
        }
    }

    private func bodyFont(for size: VMFont.Size) -> UIFont? {
        switch size {
        case .sm: return UIFont(name: Font.regular.rawValue, size: 14)
        case .md: return UIFont(name: Font.light.rawValue, size: 16)
        case .xl: return UIFont(name: Font.light.rawValue, size: 18)
        }
    }

}
