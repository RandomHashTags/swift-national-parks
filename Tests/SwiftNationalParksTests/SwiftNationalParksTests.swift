import XCTest
@testable import SwiftNationalParks
import SwiftSovereignStates

final class SwiftNationalParksTests: XCTestCase {
    func testExample() throws {
        for country in Country.allCases {
            let country_id:String = country.rawValue
            if let national_parks:[any NationalPark] = country.national_parks {
                for park in national_parks {
                    XCTAssert(!park.name.elementsEqual("\(park)"), "missing name for \(country_id) national park \(park.rawValue)")
                }
            }
        }
    }
}
