//
//  main.swift
//  dz1
//
//  Created by Абдулла-Бек on 2/2/23.
//

let card1 = Card(bankName: "Kyrgyzstan Bank", cardNumber: 00001, bill: 1000.0)
let card2 = Card(bankName: "Optima Bank", cardNumber: 00002, bill: 500.0)
let card3 = Card(bankName: "DemirBank", cardNumber: 00003, bill: 2000.0)

let client1 = Client(firstname: "Abdulla", lastname: "Bakytbek", cards: [card1, card2])
let client2 = Client(firstname: "Ulan", lastname: "Ahmedov", cards: [card3])

Bank.transaction(from: client1, to: client2)

client1.slowInfo()
client2.slowInfo()

card1.slowInfoCard()
card2.slowInfoCard()
card3.slowInfoCard()


