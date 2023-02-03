//
//  Card.swift
//  dz1
//
//  Created by Абдулла-Бек on 2/2/23.
//

class Card {
    
    var bankName: String
    var cardNumber: Int
    var bill: Float
    
    init(bankName: String, cardNumber: Int, bill: Float) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
    func slowInfoCard () {
        print("Баланс: \(bill)")
    }
}
