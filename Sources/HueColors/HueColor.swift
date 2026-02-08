import UIKit

public struct HueColor {
    public struct XY: Equatable, Hashable {
        public let x: Double
        public let y: Double

        public init(x: Double, y: Double) {
            self.x = x
            self.y = y
        }
    }
    
    
    public let name: String
    public let uiColor: UIColor
    public let xy: (x: Double, y: Double)

    public init(name: String, uiColor: UIColor, xy: (x: Double, y: Double)) {
        self.name = name
        self.uiColor = uiColor
        self.xy = xy
    }

    public static let white  = HueColor(name: "White",  uiColor: .white, xy: (0.3127, 0.3290))
    public static let warm   = HueColor(name: "Warm",   uiColor: UIColor(red: 1.0, green: 0.85, blue: 0.6, alpha: 1.0), xy: (0.4689, 0.4124))
    public static let red    = HueColor(name: "Red",    uiColor: UIColor(red: 1.0, green: 0.1, blue: 0.1, alpha: 1.0), xy: (0.675, 0.322))
    public static let orange = HueColor(name: "Orange", uiColor: UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0), xy: (0.5614, 0.4156))
    public static let yellow = HueColor(name: "Yellow", uiColor: UIColor(red: 1.0, green: 0.95, blue: 0.0, alpha: 1.0), xy: (0.4432, 0.5154))
    public static let lime   = HueColor(name: "Lime",   uiColor: UIColor(red: 0.6, green: 1.0, blue: 0.0, alpha: 1.0), xy: (0.3660, 0.5840))
    public static let green  = HueColor(name: "Green",  uiColor: UIColor(red: 0.0, green: 0.9, blue: 0.2, alpha: 1.0), xy: (0.2151, 0.7106))
    public static let cyan   = HueColor(name: "Cyan",   uiColor: UIColor(red: 0.0, green: 0.9, blue: 0.9, alpha: 1.0), xy: (0.1700, 0.3400))
    public static let blue   = HueColor(name: "Blue",   uiColor: UIColor(red: 0.1, green: 0.3, blue: 1.0, alpha: 1.0), xy: (0.1532, 0.0475))
    public static let purple = HueColor(name: "Purple", uiColor: UIColor(red: 0.6, green: 0.2, blue: 1.0, alpha: 1.0), xy: (0.2303, 0.0916))
    public static let pink   = HueColor(name: "Pink",   uiColor: UIColor(red: 1.0, green: 0.2, blue: 0.6, alpha: 1.0), xy: (0.4026, 0.1768))

    public static let allColors: [HueColor] = [white, warm, red, orange, yellow, lime, green, cyan, blue, purple, pink]
}
