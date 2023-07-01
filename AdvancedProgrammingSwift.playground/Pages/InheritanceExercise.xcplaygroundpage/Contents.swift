import Foundation

class Dish {
    private let ingredients: String
    private let name: String
    
    init(_ ingredients: String,_ name: String) {
        self.ingredients = ingredients
        self.name = name
    }
    
    func printInfo() {
        print(name)
        print(ingredients)
    }
}

final class AppetizerDish: Dish {
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
    
}

for _ in 0..<5 {
    let randomNumber = Int.random(in: 0...1)
    let dish: Dish
    if randomNumber == 0 {
        dish = AppetizerDish("Margherita Flatbread", "Margherita Flatbread")
    } else {
        dish = MainDish("Super Spaghetti", "Spaghetti Tomato sauce")
    }
    
    if let appetizerDish = dish as? AppetizerDish {
        appetizerDish.printInfo()
    }
    
    if dish is MainDish {
        print("Main Dish!")
    }
}
