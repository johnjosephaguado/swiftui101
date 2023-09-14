//
//  ReqResUser.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/14/23.
//

import Foundation

struct ReqResUserResponse: Codable {
    let data: ReqResUser
}

struct ReqResUser: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let name: String?
    let job: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case name
        case job
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(Int.self, forKey: .id)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.name = try? container.decode(String.self, forKey: .name)
        self.job = try? container.decode(String.self, forKey: .job)
    }
}
