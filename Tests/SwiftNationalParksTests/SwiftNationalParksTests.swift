import XCTest
@testable import SwiftNationalParks
import SwiftSovereignStates

final class SwiftNationalParksTests: XCTestCase {
    func testExample() throws {
        for country in Country.allCases {
            if let national_parks:[AnyNationalPark] = country.national_parks {
                for park in national_parks {
                    XCTAssertNotEqual(park.name, "\(park)")
                }
            }
        }
    }
}
