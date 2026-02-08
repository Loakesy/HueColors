import UIKit

public struct LEDColor {
    public let r: UInt8
    public let g: UInt8
    public let b: UInt8

    public init(uiColor: UIColor) {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        self.r = UInt8(max(0, min(255, red * 255)))
        self.g = UInt8(max(0, min(255, green * 255)))
        self.b = UInt8(max(0, min(255, blue * 255)))
    }

    public init(r: UInt8, g: UInt8, b: UInt8) {
        self.r = r
        self.g = g
        self.b = b
    }
}
