//
//  StringExtensions.swift
//
//
//  Created by Evan Anderson on 7/3/23.
//

import Foundation

extension String {
    func url_encoded() -> String {
        return addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? self
    }
}

extension Substring {
    var as_string : String {
        return String(self)
    }
}
