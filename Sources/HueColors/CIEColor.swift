import UIKit

public enum CIEColor {

    /// Convert a UIColor to CIE 1931 xy chromaticity coordinates.
    /// Returns nil if the color cannot be decomposed into RGB.
    public static func xyFromUIColor(_ color: UIColor) -> (x: Double, y: Double)? {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        guard color.getRed(&r, green: &g, blue: &b, alpha: &a) else {
            return nil
        }

        func gammaCorrect(_ c: CGFloat) -> CGFloat {
            c > 0.04045 ? pow((c + 0.055) / 1.055, 2.4) : c / 12.92
        }

        let R = gammaCorrect(r)
        let G = gammaCorrect(g)
        let B = gammaCorrect(b)

        let X = R * 0.4124 + G * 0.3576 + B * 0.1805
        let Y = R * 0.2126 + G * 0.7152 + B * 0.0722
        let Z = R * 0.0193 + G * 0.1192 + B * 0.9505

        let sum = X + Y + Z
        guard sum > 0 else { return nil }

        return (x: Double(X / sum), y: Double(Y / sum))
    }
}
