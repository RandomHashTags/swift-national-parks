// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftSovereignStates

enum SwiftNationalParks {
    static func get(
        rawValue: String,
        country: Country,
        countries: [Country],
        subdivisions: [any SovereignStateSubdivision],
        wikipedia_image_url_id: String?
    ) -> NationalPark {
        return NationalPark(rawValue: rawValue, id: (country.iso_alpha_2 ?? "?") + "." + rawValue, country: country, countries: countries, subdivisions: subdivisions.map({ $0.wrapped() }), wikipedia_url: "https://en.wikipedia.org/wiki/" + rawValue.replacingOccurrences(of: "_", with: " ").url_encoded() + "_National_Park", wikipedia_image_url: get_wikipedia_image_url(wikipedia_image_url_id))
    }
    private static func get_wikipedia_image_url(_ id: String?) -> String? {
        guard let id:String = id?.url_encoded() else { return nil }
        let suffix:String = id.split(separator: "/").last_nonoptional.as_string
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/" + id + "/%quality%px-" + suffix
    }
}