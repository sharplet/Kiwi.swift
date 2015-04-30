import Kiwi
import XCTest

class KiwiSpec: KWSpec {
  override class func buildExampleGroups() {
    it("has a test") {
      XCTAssert(1 + 1 == 2)
    }
  }
}
