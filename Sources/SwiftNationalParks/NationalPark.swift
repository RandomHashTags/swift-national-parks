//
//  NationalPark.swift
//  
//
//  Created by Evan Anderson on 8/8/22.
//

import Foundation
import SwiftSovereignStates

public protocol AnyNationalPark {
    var rawValue : String { get }
    var name : String { get }
    /// Primary country this NationalPark is located in.
    var country : Country { get }
    /// Countries where this NationalPark is located in.
    var countries : [Country] { get }
    /// SovereignStateSubdivisions where this NationalPark is located in.
    var subdivisions : [any SovereignStateSubdivision] { get }
    
    var wikipedia_url : String? { get }
    var wikipedia_image_url : String? { get }
}
public extension AnyNationalPark {
    var id : String { (country.iso_alpha_2 ?? "?") + "." + rawValue }
    var name : String { rawValue } // TODO: fix
}

public protocol NationalParkCases : AnyNationalPark, CaseIterable, RawRepresentable where RawValue == String {
    var park : NationalPark { get }

    var wikipedia_image_url_id : String? { get }
}

public extension NationalParkCases {
    var park : NationalPark { SwiftNationalParks.get(rawValue: rawValue, country: country, countries: countries, subdivisions: subdivisions, wikipedia_image_url_id: wikipedia_image_url_id) }

    var wikipedia_url : String? {
        return "https://en.wikipedia.org/wiki/" + id.replacingOccurrences(of: "_", with: " ").url_encoded() + "_National_Park"
    }
    var wikipedia_image_url : String? {
        guard let id:String = wikipedia_image_url_id?.url_encoded() else { return nil }
        let suffix:String = id.split(separator: "/").last_nonoptional.as_string
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/" + id + "/%quality%px-" + suffix
    }
}

public struct NationalPark : Hashable, AnyNationalPark {
    public static func == (left: Self, right: Self) -> Bool {
        return left.id == right.id
    }

    public let rawValue:String
    public let id:String
    public let country:Country
    public let countries:[Country]
    public let subdivisions:[any SovereignStateSubdivision]
    
    public let wikipedia_url:String?
    public let wikipedia_image_url:String?

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

public extension Country {
    var national_parks : [AnyNationalPark]? {
        return national_park_type?.allCases as? [AnyNationalPark]
    }
    
    var national_park_type : (any NationalParkCases.Type)? {
        switch self {
        case .dominica:      return NationalParksDominica.self
        case .mexico:        return NationalParksMexico.self
        case .united_states: return NationalParksUnitedStates.self
        default:             return nil
        }
    }
}

public extension SovereignStateSubdivision {
    var national_parks : [AnyNationalPark]? {
        guard var parks:[AnyNationalPark] = country.national_parks else { return nil }
        let id:String = "\(self)"
        parks.removeAll(where: { !$0.subdivisions.contains(where: { id.elementsEqual("\($0)") }) })
        return parks.isEmpty ? nil : parks
    }
}