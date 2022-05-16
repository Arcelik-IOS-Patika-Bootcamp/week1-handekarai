import UIKit

/**Varibles*/
let luckyNumber = 7             //constant variable
var milkPrice = 12.5            //variable without type
var mealPrice: Double = 54.9    //varible with type

/**Arrays*/
var groceryList : [String] = ["Banana","Coffee",    //string array
                              "Chicken","Snacks"]
let _ = groceryList.remove(at: 0)                   //remove banana and no need keep it
groceryList.append(contentsOf: ["Apple","Salt"])    //add two item to list
groceryList.insert(contentsOf: ["Wine"], at: 0)     //insert at beginnig of list

