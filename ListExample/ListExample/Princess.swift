//
//  Princess.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import Foundation

class Princess: NSObject, Identifiable, ObservableObject {
    // MARK: Properties
    let id = UUID()
    let name: String
    let story: String
    let yearReleased: Int
    var hasPartner = true
    let imageUrl: String
    
    // MARK: Methods
    init(name: String, story: String, yearReleased: Int, hasPartner: Bool = true, imageUrl: String) {
        self.name = name
        self.story = story
        self.yearReleased = yearReleased
        self.hasPartner = hasPartner
        self.imageUrl = imageUrl
    }
    
    static func list() -> [Princess] {
        var princesses: [Princess] = []
        
        princesses.append(Princess(name: "Snow White", story: "Mirror mirror on the wall", yearReleased: 1970, imageUrl: "https://th.bing.com/th/id/OIP.4nXLkWskKBg6RoFOyEQcbwHaS_?pid=ImgDet&rs=1"))
        princesses.append(Princess(name: "Cinderella", story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet porttitor lacus luctus accumsan tortor posuere. At elementum eu facilisis sed odio morbi quis commodo odio.", yearReleased: 1990, imageUrl: "https://static.wikia.nocookie.net/disney/images/e/e5/Profile_-_Cinderella.jpeg/revision/latest?cb=20210930080943"))
        princesses.append(Princess(name: "Rapunzel", story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet porttitor lacus luctus accumsan tortor posuere. At elementum eu facilisis sed odio morbi quis commodo odio.", yearReleased: 1990, imageUrl: "https://static.wikia.nocookie.net/disney/images/e/e5/Profile_-_Cinderella.jpeg/revision/latest?cb=20210930080943"))
        princesses.append(Princess(name: "Elsa", story: "plot is good", yearReleased: 1990, imageUrl: "https://static.wikia.nocookie.net/disney/images/e/e5/Profile_-_Cinderella.jpeg/revision/latest?cb=20210930080943"))
        princesses.append(Princess(name: "Olaf", story: "plot is good", yearReleased: 1990, imageUrl: "https://static.wikia.nocookie.net/disney/images/e/e5/Profile_-_Cinderella.jpeg/revision/latest?cb=20210930080943"))
        princesses.append(Princess(name: "Something", story: "plot is good", yearReleased: 1990, imageUrl: "https://static.wikia.nocookie.net/disney/images/e/e5/Profile_-_Cinderella.jpeg/revision/latest?cb=20210930080943"))
        princesses.append(Princess(name: "Testing", story: "plot is good", yearReleased: 1990, imageUrl: "https://static.wikia.nocookie.net/disney/images/e/e5/Profile_-_Cinderella.jpeg/revision/latest?cb=20210930080943"))
        
        return princesses
    }
}
