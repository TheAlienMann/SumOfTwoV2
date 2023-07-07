import XCTest
@testable import SumOfTwoV2

final class SumOfTwoV2Tests: XCTestCase {
    func test_sumOfTwo_givenAnEmptyArray_shouldReturnEmptyArray() {
        XCTAssertEqual(sumOfTwo([], 12), [])
    }

    func test_sumOfTwo_givenArrayWithOneItem_shouldReturnEmptyArray() {
        XCTAssertEqual(sumOfTwo([1], 12), [])
    }

    func test_sumOfTwo_givenArrayWith2Items_shouldReturnDesiredArray() {
        XCTAssertEqual(sumOfTwo([-2, 1, 3, 4, 6, 7, 8], 2), [-2, 4])
    }

    func test_sumOfTwo_givenArrayWithMoreThan2Items_shouldFail() {
        XCTAssertEqual(sumOfTwo([-2, 1, 3, 4, 6, 7, 8], 15), [-2, 4])
    }
}
