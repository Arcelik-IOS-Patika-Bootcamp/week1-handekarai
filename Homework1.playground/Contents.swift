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
[
    2021 : itemsPrices,
    2022 : [
            "Salt": 6,"Wine": 40.5,
            "Apple": 10,"Coffee": 12,
            "Chicken": 35.99,"Snacks": 23
           ]
]
