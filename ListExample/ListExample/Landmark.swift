//
//  Landmark.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/14/23.
//

import Foundation

struct Landmark: Codable {
    var name: String
    var foundingYear: Int
    
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case foundingYear = "founding_date"
    }
    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.foundingYear = try container.decode(Int.self, forKey: .foundingYear)
//    }
}
