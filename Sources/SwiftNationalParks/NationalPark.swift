//
//  NationalPark.swift
//  
//
//  Created by Evan Anderson on 8/8/22.
//

import Foundation
import SwiftSovereignStates

public protocol NationalPark : CaseIterable, RawRepresentable where RawValue == String {
    /// Primary country this NationalPark is located in.
    var country : Country { get }
    /// Countries where this NationalPark is located in.
    var countries : [Country] { get }
    /// SovereignStateSubdivisions where this NationalPark is located in.
    var subdivisions : [any SovereignStateSubdivision] { get }
    
    var name : String { get }
    
    var wikipedia_url : String? { get }
    var wikipedia_image_url_id : String? { get }
}

public extension NationalPark {
    var name : String {
        //let value:String.LocalizationValue = String.LocalizationValue(stringLiteral: rawValue)
        let table:String = String(describing: type(of: self))
        //return String(localized: value, table: table, bundle: Bundle.module)
        return table + "." + rawValue // TODO: fix
    }
    var wikipedia_url : String? {
        return "https://en.wikipedia.org/wiki/" + name.url_encoded() + "_National_Park"
    }
    var wikipedia_image_url : String? {
        guard let id:String = wikipedia_image_url_id?.url_encoded() else { return nil }
        let suffix:String = id.split(separator: "/").last_nonoptional.as_string
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/" + id + "/%quality%px-" + suffix
    }
}

public extension Country {
    var national_parks : [any NationalPark]? {
        return national_park_type?.allCases as? [any NationalPark]
    }
    
    var national_park_type : (any NationalPark.Type)? {
        switch self {
        case .dominica:      return NationalParksDominica.self
        case .mexico:        return NationalParksMexico.self
        case .united_states: return NationalParksUnitedStates.self
        default:             return nil
        }
    }
}

public extension SovereignStateSubdivision {
    var national_parks : [any NationalPark]? {
        guard var parks:[any NationalPark] = country.national_parks else { return nil }
        let id:String = "\(self)"
        parks.removeAll(where: { !$0.subdivisions.contains(where: { id.elementsEqual("\($0)") }) })
        return parks.isEmpty ? nil : parks
    }
}
