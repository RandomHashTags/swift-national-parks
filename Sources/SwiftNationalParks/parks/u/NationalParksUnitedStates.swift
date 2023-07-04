//
//  NationalParksUnitedStates.swift
//  
//
//  Created by Evan Anderson on 8/8/22.
//

import Foundation
import SwiftSovereignStates

public enum NationalParksUnitedStates : String, NationalPark { // https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States
    case acadia
    case american_samoa
    case arches
    case badlands
    case big_bend
    case biscayne
    case black_canyon_of_the_gunnison
    case bryce_canyon
    case canyonlands
    case capitol_reef
    case carlsbad_caverns
    case channel_islands
    case congaree
    case crater_lake
    case cuyahoga_valley
    case death_valley
    case denali
    case dry_tortugas
    case everglades
    case gates_of_the_arctic
    case gateway_arch
    case glacier_bay
    case glacier
    case grand_canyon
    case grand_teton
    case great_basin
    case great_sand_dunes
    case great_smoky_mountains
    case guadalupe_mountains
    case haleakala
    case hawaii_volcanoes
    case hot_springs
    case indiana_dunes
    case isle_royale
    case joshua_tree
    case katmai
    case kenai_fjords
    case kings_canyon
    case kobuk_valley
    case lake_clark
    case lassen_volcanic
    case mammoth_cave
    case mesa_verde
    case mount_rainier
    case new_river_gorge
    case north_cascades
    case olympic
    case petrified_forest
    case pinnacles
    case redwood
    case rocky_mountain
    case saguaro
    case sequoia
    case shenandoah
    case theodore_roosevelt
    case virgin_islands
    case voyageurs
    case white_sands
    case wind_cave
    case wrangell_st_elias
    case yellowstone
    case yosmite
    case zion
    
    public var country : Country {
        return Country.united_states
    }
    
    public var countries : [Country] {
        switch self {
        case .american_samoa:
            return [Country.american_samoa]
        case .virgin_islands:
            return [Country.united_states_virgin_islands]
        default:
            return [Country.united_states]
        }
    }
    
    public var subdivisions : [any SovereignStateSubdivision] {
        switch self {
        case .acadia: return [SubdivisionsUnitedStates.maine]
        case .american_samoa: return []
        case .arches: return [SubdivisionsUnitedStates.utah]
        case .badlands: return [SubdivisionsUnitedStates.south_dakota]
        case .big_bend: return [SubdivisionsUnitedStates.texas]
        case .biscayne: return [SubdivisionsUnitedStates.florida]
        case .black_canyon_of_the_gunnison: return [SubdivisionsUnitedStates.colorado]
        case .bryce_canyon: return [SubdivisionsUnitedStates.utah]
        case .canyonlands: return [SubdivisionsUnitedStates.utah]
        case .capitol_reef: return [SubdivisionsUnitedStates.utah]
        case .carlsbad_caverns: return [SubdivisionsUnitedStates.new_mexico]
        case .channel_islands: return [SubdivisionsUnitedStates.california]
        case .congaree: return [SubdivisionsUnitedStates.south_carolina]
        case .crater_lake: return [SubdivisionsUnitedStates.oregon]
        case .cuyahoga_valley: return [SubdivisionsUnitedStates.ohio]
        case .death_valley: return [SubdivisionsUnitedStates.california, SubdivisionsUnitedStates.nevada]
        case .denali: return [SubdivisionsUnitedStates.alaska]
        case .dry_tortugas: return [SubdivisionsUnitedStates.florida]
        case .everglades: return [SubdivisionsUnitedStates.florida]
        case .gates_of_the_arctic: return [SubdivisionsUnitedStates.alaska]
        case .gateway_arch: return [SubdivisionsUnitedStates.missouri]
        case .glacier_bay: return [SubdivisionsUnitedStates.alaska]
        case .glacier: return [SubdivisionsUnitedStates.montana]
        case .grand_canyon: return [SubdivisionsUnitedStates.arizona]
        case .grand_teton: return [SubdivisionsUnitedStates.wyoming]
        case .great_basin: return [SubdivisionsUnitedStates.nevada]
        case .great_sand_dunes: return [SubdivisionsUnitedStates.colorado]
        case .great_smoky_mountains: return [SubdivisionsUnitedStates.north_carolina, SubdivisionsUnitedStates.tennessee]
        case .guadalupe_mountains: return [SubdivisionsUnitedStates.texas]
        case .haleakala: return [SubdivisionsUnitedStates.hawaii]
        case .hawaii_volcanoes: return [SubdivisionsUnitedStates.hawaii]
        case .hot_springs: return [SubdivisionsUnitedStates.arkansas]
        case .indiana_dunes: return [SubdivisionsUnitedStates.indiana]
        case .isle_royale: return [SubdivisionsUnitedStates.michigan]
        case .joshua_tree: return [SubdivisionsUnitedStates.california]
        case .katmai: return [SubdivisionsUnitedStates.alaska]
        case .kenai_fjords: return [SubdivisionsUnitedStates.alaska]
        case .kings_canyon: return [SubdivisionsUnitedStates.california]
        case .kobuk_valley: return [SubdivisionsUnitedStates.alaska]
        case .lake_clark: return [SubdivisionsUnitedStates.alaska]
        case .lassen_volcanic: return [SubdivisionsUnitedStates.california]
        case .mammoth_cave: return [SubdivisionsUnitedStates.kentucky]
        case .mesa_verde: return [SubdivisionsUnitedStates.colorado]
        case .mount_rainier: return [SubdivisionsUnitedStates.washington]
        case .new_river_gorge: return [SubdivisionsUnitedStates.west_virginia]
        case .north_cascades: return [SubdivisionsUnitedStates.washington]
        case .olympic: return [SubdivisionsUnitedStates.washington]
        case .petrified_forest: return [SubdivisionsUnitedStates.arizona]
        case .pinnacles: return [SubdivisionsUnitedStates.california]
        case .redwood: return [SubdivisionsUnitedStates.california]
        case .rocky_mountain: return [SubdivisionsUnitedStates.colorado]
        case .saguaro: return [SubdivisionsUnitedStates.arizona]
        case .sequoia: return [SubdivisionsUnitedStates.california]
        case .shenandoah: return [SubdivisionsUnitedStates.virginia]
        case .theodore_roosevelt: return [SubdivisionsUnitedStates.north_dakota]
        case .virgin_islands: return []
        case .voyageurs: return [SubdivisionsUnitedStates.minnesota]
        case .white_sands: return [SubdivisionsUnitedStates.new_mexico]
        case .wind_cave: return [SubdivisionsUnitedStates.south_dakota]
        case .wrangell_st_elias: return [SubdivisionsUnitedStates.alaska]
        case .yellowstone: return [SubdivisionsUnitedStates.wyoming, SubdivisionsUnitedStates.montana, SubdivisionsUnitedStates.idaho]
        case .yosmite: return [SubdivisionsUnitedStates.california]
        case .zion: return [SubdivisionsUnitedStates.utah]
        }
    }
    
    public var wikipedia_image_url_id : String? {
        switch self {
        case .acadia: return "9/93/Bass_Harbor_Head_Light_Station_2016.jpg"
        case .american_samoa: return "6/6d/Ofu_Beach_American_Samoa_US_National_Park_Service.jpg"
        case .arches: return "7/78/USA_Arches_NP_Delicate_Arch%281%29.jpg"
        case .badlands: return "0/0e/Golden_Glow_Canyon.jpg"
        case .big_bend: return "4/40/On_the_Border_%2839960085292%29.jpg"
        case .biscayne: return "d/df/Biscayne_NP_snorkeling.jpg"
        case .black_canyon_of_the_gunnison: return "9/9e/Black_canyon_gunnison_Colorado.jpg"
        case .bryce_canyon: return "c/c3/Inspiration_Point_Bryce_Canyon_November_2018_panorama.jpg"
        case .canyonlands: return "7/78/Canyonlands_National_Park…Needles_area_%286294480744%29.jpg"
        case .capitol_reef: return "4/40/Cassidy_Arch%2C_Capitol_Reef_National_Park.JPG"
        case .carlsbad_caverns: return "0/02/Carlsbad_Caverns.jpg"
        case .channel_islands: return "8/82/Santa_Cruz_Island_CA_DSC_4323_ad.JPG"
        case .congaree: return "6/6e/Bald_cypress_and_creek_%287166139814%29.jpg"
        case .crater_lake: return "0/01/Crater_Lake_winter_pano2.jpg"
        case .cuyahoga_valley: return "a/a4/Cuyahoga_Valley_National_Park_20.jpg"
        case .death_valley: return "d/d8/Isolated_Desert.jpg"
        case .denali: return "9/91/Wonder_Lake_and_Denali.jpg"
        case .dry_tortugas: return "5/5f/Fort-Jefferson_Dry-Tortugas.jpg"
        case .everglades: return "b/b3/Pinelands_Sunrise_%281%29_NPSPhoto%2C_Sarah_Zenner_%289255147763%29.jpg"
        case .gates_of_the_arctic: return "f/fc/Remote_river_in_Gates_of_the_Arctic_%2816524035298%29.jpg"
        case .gateway_arch: return "d/de/St_Louis_night_expblend.jpg"
        case .glacier_bay: return "5/5f/Glacier_Bay_National_Park%2C_July_28%2C_2012.jpg"
        case .glacier: return "5/51/Mountain_Goat_at_Hidden_Lake.jpg"
        case .grand_canyon: return "f/f9/USA_09847_Grand_Canyon_Luca_Galuzzi_2007.jpg"
        case .grand_teton: return "e/e8/Cathedral_Group_GTNP1.jpg"
        case .great_basin: return "7/78/Upper_Lehman_Creek.jpg"
        case .great_sand_dunes: return "7/74/Sun_and_Shadow_Patterns_on_Dunes_%2828471118064%29.jpg"
        case .great_smoky_mountains: return "f/f1/Foothills_Parkway%2C_November_2018--Joye_Ardyn_Durham_%2831031302587%29.jpg"
        case .guadalupe_mountains: return "a/a8/El_Capitan_from_US_Route_62_DSC_5495_ed_ad.jpg"
        case .haleakala: return "4/48/Haleakala_National_Park_02.jpg"
        case .hawaii_volcanoes: return "0/0c/Sulfur_dioxide_emissions_from_the_Halemaumau_vent_04-08-1_1.jpg"
        case .hot_springs: return "a/a4/Hots_Springs_National_Park_aerial.jpg"
        case .indiana_dunes: return "7/7c/2010-11-26_3060x2040_portage_indiana_dunes.jpg"
        case .isle_royale: return "7/7c/IsleRoyalePlane.jpg"
        case .joshua_tree: return "9/9e/Joshua_Tree_-_Rock_formation_in_Real_Hidden_Valley_1.jpg"
        case .katmai: return "e/e0/Grizzly_mama_bear_with_spring_cubs._Naknek_Lake%2C_Katmai_National_Park%2C_Alaska.jpg"
        case .kenai_fjords: return "0/00/Kenai_Fjords_National_Park_ENBLA20.jpg"
        case .kings_canyon: return "3/38/Copper_Creek_Trail.jpg"
        case .kobuk_valley: return "6/6b/Wetlands_along_the_Kobuk_River_%288029770162%29.jpg"
        case .lake_clark: return "9/9f/Lake_Clark_Place_Name_Project_images._Credit_Dev_Charm_Khalsa_NPS._%2836bde271-64b3-447a-b18a-9421e5e07284%29.jpg"
        case .lassen_volcanic: return "6/6b/Lake_Helen%2C_Lassen_Volcanic_National_Park%2C_in_June_2020.jpg"
        case .mammoth_cave: return "f/f5/Mammoth_Cave_National_Park_007.jpg"
        case .mesa_verde: return "e/eb/Mesa_Verde_National_Park_Cliff_Palace_2006_09_12.jpg"
        case .mount_rainier: return "1/10/Tatoosh_Range_WA_MRNP1.jpg"
        case .new_river_gorge: return "1/11/New_River_Gorge_Bridge.jpg"
        case .north_cascades: return "b/b3/Cascade_Pass.jpg"
        case .olympic: return "1/19/Acer_macrophyllum_in_Hoh_ValleyB.jpg"
        case .petrified_forest: return "e/e8/The_PEFO_Tepees.jpg"
        case .pinnacles: return "b/b9/Pinnacles_National_Park.jpg"
        case .redwood: return "d/de/Redwood_National_Park%2C_fog_in_the_forest.jpg"
        case .rocky_mountain: return "1/1b/Bierstadt_Lake%2C_Rocky_Mountain_National_Park%2C_USA.jpg"
        case .saguaro: return "4/47/Saguaronationalparl17102008.jpg"
        case .sequoia: return "7/7c/Giant_sequoias_in_Sequoia_National_Park_2013.jpg"
        case .shenandoah: return "6/63/Early_Fall_at_Dark_Hollow_Falls_%2822028259442%29.jpg"
        case .theodore_roosevelt: return "3/34/View_of_Theodore_Roosevelt_National_Park.jpg"
        case .virgin_islands: return "5/55/St_John_Trunk_Bay_1.jpg"
        case .voyageurs: return "b/bd/Voyageurs_National_Park.jpg"
        case .white_sands: return "1/10/White_Sands_New_Mexico_USA.jpg"
        case .wind_cave: return "b/b5/Wind_Cave_lower.jpg"
        case .wrangell_st_elias: return "e/e2/Rain_in_the_Wrangell_Mountains.jpg"
        case .yellowstone: return "8/89/Grand_Prismatic_Spring_2013.jpg"
        case .yosmite: return "d/d6/Half_Dome_from_Glacier_Point%2C_Yosemite_NP_-_Diliff.jpg"
        case .zion: return "9/9e/Angels_Landing.jpg"
        }
    }
}
