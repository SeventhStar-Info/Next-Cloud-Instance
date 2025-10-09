import UIKit
import SwiftUI

// Convenience accessors for branded colors defined in Assets.xcassets
public extension UIColor {
    static var primaryBrand: UIColor {
        UIColor(named: "PrimaryColor") ?? NCBrandColor.shared.customer
    }

    static var secondaryBrand: UIColor {
        UIColor(named: "SecondaryColor") ?? .systemGray
    }

    static var accentBrand: UIColor {
        UIColor(named: "AccentColor") ?? .systemYellow
    }
}

public extension Color {
    static var primaryBrand: Color { Color("PrimaryColor") }
    static var secondaryBrand: Color { Color("SecondaryColor") }
    static var accentBrand: Color { Color("AccentColor") }
}

