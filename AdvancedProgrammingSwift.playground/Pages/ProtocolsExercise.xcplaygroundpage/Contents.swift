import Foundation

protocol Dish {
    var name: String { get }
    var preparationMinutes: Int { get set }
    func prepare()
    func plate(artisticLevel: Int)
}

class MainDish: Dish {
    var name: String
    var preparationMinutes: Int
    
    init(_ name: String, _ preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
    
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
    
    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel)")
    }
}

let superSpaghetti = MainDish("Super Spaghetti" , 35)
superSpaghetti.prepare()
superSpaghetti.plate(artisticLevel: 10)
