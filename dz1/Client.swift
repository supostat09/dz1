//
//  Client.swift
//  dz1
//
//  Created by Абдулла-Бек on 2/2/23.
//

class Client {
    
    var firstName: String
    var lastName: String
    var cards: [Card]
    
    init(firstname: String, lastname: String, cards: [Card]) {
        self.firstName = firstname
        self.lastName = lastname
        self.cards = cards
    }
    func slowInfo () {
        print("Имя: \(firstName), \nФамилия: \(lastName)")
    }
}
