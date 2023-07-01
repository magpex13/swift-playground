import Foundation

enum Ingredient: String {
    case carrot = "Conejo's carrot"
    case tomato = "Italian tomatoes"
    case potato = "Potato lay's"
    case chicken = "Pollo chicken"
    case lettuce = "Romaine lettuce"
}

let ingredient = Ingredient.lettuce
switch ingredient {
    case Ingredient.carrot:
        print("Big \(ingredient.rawValue)")
    case Ingredient.tomato:
        print("Big \(ingredient.rawValue)")
    case Ingredient.potato:
        print("Big \(ingredient.rawValue)")
    case Ingredient.chicken:
        print("Big \(ingredient.rawValue)")
    case Ingredient.lettuce:
        print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
}


enum RecipeInformation {
    case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk and gluten")

switch recipeInformation {
case RecipeInformation.allergens(let information):
    print("The allergens are: \(information)")
}

