import XCTest
@testable import SumOfTwoV2

final class SumOfTwoV2Tests: XCTestCase {
    func test_sumOfTwo_givenAnEmptyArray_shouldReturnEmptyArray() {
        XCTAssertEqual(sumOfTwo([], 12), [])
    }
}
