import UIKit

/**Varibles*/
let luckyNumber = 7                                  //constant variable
var milkPrice = 12.5                                 //variable without type
var mealPrice: Double = 54.9                         //varible with type

/**Arrays*/
var groceryList : [String] = ["Banana","Coffee",     //string array
                              "Chicken","Snacks"]
let _ = groceryList.remove(at: 0)                    //remove banana and no need keep it
groceryList.append(contentsOf: ["Apple","Salt"])     //add two item to list
groceryList.insert(contentsOf: ["Wine"], at: 0)      //insert at beginnig of list
groceryList.append("Wine")                           //put duplicate record
var listWithoutDuplicate = Set(groceryList)          //grocery list without dublicate


/**Dictionaries*/
var itemsPrices: [String:Double] = [
                                    "Salt": 3,
                                    "Wine": 12.95,
                                    "Apple": 4.99,
                                    "Coffee": 5,
                                    "Chicken": 10.5,
                                    "Snacks": 15
                                   ]
itemsPrices["Coffee"] = 6                            //change price of coffee
itemsPrices["Milk"] = milkPrice                      //add milk to dictionary

var itemsPricesInflation: [Int : [String:Double]] =
[                                                    //prices according to years
    2021 : itemsPrices,
    2022 : [
            "Salt": 6,"Wine": 40.5,
            "Apple": 10,"Coffee": 12,
            "Chicken": 35.99,"Snacks": 23,
            "Milk": 20
           ]
]

/**For Loops*/
for item in groceryList{
    print(item)                                      //prints grocery list items
}

for (item,price) in itemsPrices{
    print(item,price)                                //prints items and their prices
}

for (year,itemList) in itemsPricesInflation{
    print(year,itemList.keys,itemList.values)        //prints prices according to years
}

/**Enum**/
enum groceryItemType{
    case beverage
    case food(isFrozen: Bool)
    case personalCare
    case cleaner
}

/**Class**/
class groceryItem{
    private var name: String
    private var price: Double
    private var type: groceryItemType
    
    init(name:String, price:Double, type:groceryItemType){
        self.name = name
        self.price = price
        self.type = .food(isFrozen: false)           //initial type is not frozen food
    }
    
    func giveInformation() -> String{
        return "Name: \(name), Price: \(price), Type: \(type)"
    }
    
    func getName() -> String{
        return name
    }
    
    func getPrice() -> Double{
        return price
    }
    
    func getType() -> groceryItemType{
        return type
    }
}

var peas = groceryItem(name: "Peas", price: 10.5, type: .food(isFrozen: true))
var detergent = groceryItem(name: "Detergent", price: 15, type: .cleaner)
var shampoo = groceryItem(name: "Shampoo", price: 9, type: .personalCare)

print(peas.giveInformation())
print(detergent.getName())
print(shampoo.getType())
