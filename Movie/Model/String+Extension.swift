//
//  String+Extension.swift
//  Movie
//
//  Created by Wilfredo Sutanto on 23/12/21.
//

import Foundation

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
