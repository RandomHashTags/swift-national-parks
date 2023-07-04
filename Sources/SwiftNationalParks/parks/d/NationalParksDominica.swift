//
//  NationalParksDominica.swift
//  
//
//  Created by Evan Anderson on 8/8/22.
//

import Foundation
import SwiftSovereignStates

public enum NationalParksDominica : String, NationalPark { // https://en.wikipedia.org/wiki/List_of_national_parks_of_Dominica
    case cabrits
    case morne_diablotin
    case morne_trois
    
    public var country : Country {
        return Country.dominica
    }
    public var countries : [Country] {
        return [Country.dominica]
    }
    public var subdivisions : [any SovereignStateSubdivision] {
        switch self {
        case .cabrits: return [SubdivisionsDominica.saint_john]
        case .morne_diablotin: return [SubdivisionsDominica.saint_peter, SubdivisionsDominica.saint_andrew, SubdivisionsDominica.saint_joseph]
        case .morne_trois: return [SubdivisionsDominica.saint_paul, SubdivisionsDominica.saint_david]
        }
    }
    
    public var wikipedia_image_url_id : String? {
        switch self {
        case .cabrits: return "6/68/Tanetane-Dominica.jpg"
        case .morne_diablotin: return "1/16/Morne_Diablotins.jpg"
        case .morne_trois: return nil
        }
    }
}
