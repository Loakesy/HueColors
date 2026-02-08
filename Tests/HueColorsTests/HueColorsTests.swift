import XCTest
@testable import HueColors

final class HueColorsTests: XCTestCase {
    func testAllColorsCount() {
        XCTAssertEqual(HueColor.allColors.count, 11)
    }
}
