//
//  NationalParksMexico.swift
//  
//
//  Created by Evan Anderson on 8/8/22.
//

import Foundation
import SwiftSovereignStates

public enum NationalParksMexico : String, NationalParkCases { // https://en.wikipedia.org/wiki/List_of_national_parks_of_Mexico
    case arrecife_alacranes
    case arrecife_de_puerto_morelos
    case arrecifes_de_cozumel
    case arrecifes_de_xcalak
    case bahia_de_loreto
    case barranca_del_cupatitzio
    case basaseachic_falls
    case benito_juarez
    case bosencheve
    case cabo_pulmo
    case canon_del_rio_blanco
    case canon_del_sumidero
    case cerro_de_garnica
    case cerro_de_la_estrella
    case cerro_de_las_campanas
    case cofre_de_perote
    case constitution_1857
    case costa_occidental_de_isla_mujeres
    case cumbres_de_majalca
    case cumbres_de_monterrey
    case cumbres_del_ajusco
    case desierto_de_los_leones
    case desierto_del_carmen
    case dzibilchantun
    case el_chico
    case el_cimatario
    case el_gogorron
    case el_historico_coyoacan
    case el_potosi
    case el_sabinal
    case el_tepeyac
    case el_tepozteco
    case el_veladero
    case fuentes_brotantes_de_tlalpan
    case general_juan_n_albarez
    case grutas_de_cacahuamilpa
    case huatulco
    case insurgente_jose_maria_morelos_y_pavon
    case insurgente_miguel_hidalgo_y_costilla
    case isla_contoy
    case isla_isabel
    case islas_marietas
    case iztaccihuatl_popocatepetl
    case la_malinche
    case lago_de_camecuaro
    case lagunas_de_chacahua
    case lagunas_de_montebello
    case lagunas_de_zempoala
    case lomas_de_padierna
    case los_marmoles
    case los_novillos
    case los_remedios
    case molino_de_flores_nezahualcoyotl
    case nevado_de_toluca
    case palenque
    case pico_de_orizaba
    case rayon
    case sacromonte
    case san_lorenzo_marine_archipelago
    case sierra_de_organos
    case sierra_de_san_pedro_martir
    case sistema_arrecifal_veracruzano
    case tula
    case tulum
    case volcan_nevado_de_colima
    case xicotencatl
    
    public var country : Country { Country.mexico }
    public var countries : [Country] { [Country.mexico] }
    
    public var subdivisions : [any SovereignStateSubdivision] {
        switch self {
        case .arrecife_alacranes: return [SubdivisionsMexico.yucatan]
        case .arrecife_de_puerto_morelos: return [SubdivisionsMexico.quintana_roo]
        case .arrecifes_de_cozumel: return [SubdivisionsMexico.quintana_roo]
        case .arrecifes_de_xcalak: return [SubdivisionsMexico.quintana_roo]
        case .bahia_de_loreto: return [SubdivisionsMexico.baja_california_sur]
        case .barranca_del_cupatitzio: return [SubdivisionsMexico.michoacan]
        case .basaseachic_falls: return [SubdivisionsMexico.chihuahua]
        case .benito_juarez: return [SubdivisionsMexico.oaxaca]
        case .bosencheve: return [SubdivisionsMexico.michoacan, SubdivisionsMexico.mexico]
        case .cabo_pulmo: return [SubdivisionsMexico.baja_california_sur]
        case .canon_del_rio_blanco: return [SubdivisionsMexico.veracruz]
        case .canon_del_sumidero: return [SubdivisionsMexico.chiapas]
        case .cerro_de_garnica: return [SubdivisionsMexico.michoacan]
        case .cerro_de_la_estrella: return [SubdivisionsMexico.mexico_city]
        case .cerro_de_las_campanas: return [SubdivisionsMexico.queretaro]
        case .cofre_de_perote: return [SubdivisionsMexico.veracruz]
        case .constitution_1857: return [SubdivisionsMexico.baja_california]
        case .costa_occidental_de_isla_mujeres: return [SubdivisionsMexico.quintana_roo]
        case .cumbres_de_majalca: return [SubdivisionsMexico.chihuahua]
        case .cumbres_de_monterrey: return [SubdivisionsMexico.nuevo_leon]
        case .cumbres_del_ajusco: return [SubdivisionsMexico.mexico_city]
        case .desierto_de_los_leones: return [SubdivisionsMexico.mexico_city]
        case .desierto_del_carmen: return [SubdivisionsMexico.mexico]
        case .dzibilchantun: return [SubdivisionsMexico.yucatan]
        case .el_chico: return [SubdivisionsMexico.hidalgo]
        case .el_cimatario: return [SubdivisionsMexico.queretaro]
        case .el_gogorron: return [SubdivisionsMexico.san_luis_potosi]
        case .el_historico_coyoacan: return [SubdivisionsMexico.mexico_city]
        case .el_potosi: return [SubdivisionsMexico.san_luis_potosi]
        case .el_sabinal: return [SubdivisionsMexico.nuevo_leon]
        case .el_tepeyac: return [SubdivisionsMexico.mexico_city]
        case .el_tepozteco: return [SubdivisionsMexico.morelos, SubdivisionsMexico.mexico_city]
        case .el_veladero: return [SubdivisionsMexico.guerrero]
        case .fuentes_brotantes_de_tlalpan: return [SubdivisionsMexico.mexico_city]
        case .general_juan_n_albarez: return [SubdivisionsMexico.guerrero]
        case .grutas_de_cacahuamilpa: return [SubdivisionsMexico.guerrero]
        case .huatulco: return [SubdivisionsMexico.oaxaca]
        case .insurgente_jose_maria_morelos_y_pavon: return [SubdivisionsMexico.michoacan]
        case .insurgente_miguel_hidalgo_y_costilla: return [SubdivisionsMexico.mexico_city]
        case .isla_contoy: return [SubdivisionsMexico.quintana_roo]
        case .isla_isabel: return [SubdivisionsMexico.nayarit]
        case .islas_marietas: return [SubdivisionsMexico.nayarit]
        case .iztaccihuatl_popocatepetl: return [SubdivisionsMexico.mexico, SubdivisionsMexico.morelos, SubdivisionsMexico.puebla]
        case .la_malinche: return [SubdivisionsMexico.puebla]
        case .lago_de_camecuaro: return [SubdivisionsMexico.michoacan]
        case .lagunas_de_chacahua: return [SubdivisionsMexico.oaxaca]
        case .lagunas_de_montebello: return [SubdivisionsMexico.chiapas]
        case .lagunas_de_zempoala: return [SubdivisionsMexico.morelos, SubdivisionsMexico.mexico]
        case .lomas_de_padierna: return [SubdivisionsMexico.mexico_city]
        case .los_marmoles: return [SubdivisionsMexico.hidalgo]
        case .los_novillos: return [SubdivisionsMexico.coahuila]
        case .los_remedios: return [SubdivisionsMexico.mexico]
        case .molino_de_flores_nezahualcoyotl: return [SubdivisionsMexico.mexico]
        case .nevado_de_toluca: return [SubdivisionsMexico.mexico]
        case .palenque: return [SubdivisionsMexico.chiapas]
        case .pico_de_orizaba: return [SubdivisionsMexico.veracruz, SubdivisionsMexico.puebla]
        case .rayon: return [SubdivisionsMexico.michoacan]
        case .sacromonte: return [SubdivisionsMexico.mexico]
        case .san_lorenzo_marine_archipelago: return [SubdivisionsMexico.baja_california]
        case .sierra_de_organos: return [SubdivisionsMexico.zacatecas]
        case .sierra_de_san_pedro_martir: return [SubdivisionsMexico.baja_california]
        case .sistema_arrecifal_veracruzano: return [SubdivisionsMexico.veracruz]
        case .tula: return [SubdivisionsMexico.hidalgo]
        case .tulum: return [SubdivisionsMexico.quintana_roo]
        case .volcan_nevado_de_colima: return [SubdivisionsMexico.colima]
        case .xicotencatl: return [SubdivisionsMexico.tlaxcala]
        }
    }
    
    public var wikipedia_image_url_id : String? {
        switch self {
        case .arrecife_alacranes: return nil
        case .arrecife_de_puerto_morelos: return nil
        case .arrecifes_de_cozumel: return "6/63/Arrecifes_de_Cozumel_National_Park.jpg"
        case .arrecifes_de_xcalak: return nil
        case .bahia_de_loreto: return nil
        case .barranca_del_cupatitzio: return "1/1b/Tzararacua.jpg"
        case .basaseachic_falls: return "a/a5/Cascada_Basaseachi.jpg"
        case .benito_juarez: return nil
        case .bosencheve: return nil
        case .cabo_pulmo: return "1/1d/Cabo_Pulmo.jpg"
        case .canon_del_rio_blanco: return "e/e6/Cañón_del_R%C3%ADo_Blanco_en_Orizaba%2C_Ver_02.jpg"
        case .canon_del_sumidero: return "d/d8/Canyon_sumidero_entrada.jpg"
        case .cerro_de_garnica: return nil
        case .cerro_de_la_estrella: return nil
        case .cerro_de_las_campanas: return nil
        case .cofre_de_perote: return "2/24/Perote_volcano.jpg"
        case .constitution_1857: return "4/49/Parque_nacional_Constitución_de_1857.jpg"
        case .costa_occidental_de_isla_mujeres: return nil
        case .cumbres_de_majalca: return nil
        case .cumbres_de_monterrey: return "6/61/Cerro_de_la_Silla_Mty.jpg"
        case .cumbres_del_ajusco: return nil
        case .desierto_de_los_leones: return nil
        case .desierto_del_carmen: return nil
        case .dzibilchantun: return "9/9b/Dzibilchaltun%2C_Temple_of_the_Seven_Dolls_%2814363090911%29.jpg"
        case .el_chico: return "f/fe/Panoramica_del_parque_nacional_El_Chico.jpg"
        case .el_cimatario: return nil
        case .el_gogorron: return nil
        case .el_historico_coyoacan: return nil
        case .el_potosi: return nil
        case .el_sabinal: return nil
        case .el_tepeyac: return nil
        case .el_tepozteco: return "0/0f/Morada_del_Tepozteco_%285016386114%29.jpg"
        case .el_veladero: return nil
        case .fuentes_brotantes_de_tlalpan: return "b/b2/National_Park_Fuentes_Brotantes.jpg"
        case .general_juan_n_albarez: return nil
        case .grutas_de_cacahuamilpa: return "e/ee/09Cacahuamilpa.JPG"
        case .huatulco: return "b/b2/Bah%C3%ADas_de_Huatulco_%288045934464%29.jpg"
        case .insurgente_jose_maria_morelos_y_pavon: return "3/3c/Charo%2C_Mich.%2C_Mexico_-_panoramio.jpg"
        case .insurgente_miguel_hidalgo_y_costilla: return "3/3f/Sierra_Madre.jpg"
        case .isla_contoy: return "0/00/IslaContoy-PeterMaas.JPG"
        case .isla_isabel: return nil
        case .islas_marietas: return "5/50/Parque_Nacional_Islas_Marietas_%289372075457%29.jpg"
        case .iztaccihuatl_popocatepetl: return "b/bc/Popo_Iztac.jpg"
        case .la_malinche: return "e/e8/Malinche3.jpg"
        case .lago_de_camecuaro: return "0/06/Lago_de_Camecuaro_2.jpg"
        case .lagunas_de_chacahua: return nil
        case .lagunas_de_montebello: return "7/76/Montebello_03.jpg"
        case .lagunas_de_zempoala: return "a/aa/ZempoalaLakeNationalParkMexico.jpg"
        case .lomas_de_padierna: return nil
        case .los_marmoles: return nil
        case .los_novillos: return nil
        case .los_remedios: return nil
        case .molino_de_flores_nezahualcoyotl: return nil
        case .nevado_de_toluca: return "d/d1/Nevado_de_Toluca_Peak%2C_December_2005.JPG"
        case .palenque: return "b/bc/Tumba_de_pakal%2C_Chiapas.JPG"
        case .pico_de_orizaba: return "3/34/Pico_de_Orizaba_desde_Hidalgo%2C_Puebla.jpg"
        case .rayon: return nil
        case .sacromonte: return nil
        case .san_lorenzo_marine_archipelago: return "a/a3/Ensenada_Grande.jpg"
        case .sierra_de_organos: return "4/4a/SierradeOrganos.jpg"
        case .sierra_de_san_pedro_martir: return "a/a2/Mountains02-Sierra_SanPedroMartir-BajaCalifornia-Mexico.jpg"
        case .sistema_arrecifal_veracruzano: return "b/b5/Ocean_From_Enmedio_Island_%28232798967%29.jpeg"
        case .tula: return "a/a9/TulaSite117.JPG"
        case .tulum: return "8/85/Tulum_2.jpg"
        case .volcan_nevado_de_colima: return "b/b3/Monte_Nevado%2C_Colima_%2811932471645%29.jpg"
        case .xicotencatl: return nil
        }
    }
}
