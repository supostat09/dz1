//
//  Bank.swift
//  dz1
//
//  Created by Абдулла-Бек on 2/2/23.
//

class Bank {
    static func transaction(from: Client, to: Client) {
        print("Выберите карту:")
        for (index, card) in from.cards.enumerated() {
            print("\(index + 1). \(card.bankName) \(card.cardNumber)")
        }
        
        let selectedIndex = Int(readLine()!)! - 1
        let selectedCard = from.cards[selectedIndex]
        
        print("\(selectedCard.bankName) \(selectedCard.cardNumber) выбран")
        print("Введите номер карты получателя:")
        
        var destinationCardNumber = Int(readLine()!)
        var destinationCard: Card!
        for card in to.cards {
            if card.cardNumber == destinationCardNumber {
                destinationCard = card
                break
            }
        }
        if destinationCard == nil {
            print("Транзакция не удалась: карта получателя не найдена")
            return
        }
        print("Получатель: \(to.firstName) \(to.lastName)")
        print("Введите сумму:")
        
        let amount = Float(readLine()!)!
        
        if amount < selectedCard.bill {
            print("Транзакция не удалась: недостаточно средств")
            
            selectedCard.bill -= amount
            destinationCard.bill += amount
            
            print("Транзакция прошла успешно")
            
        }
    }
}
