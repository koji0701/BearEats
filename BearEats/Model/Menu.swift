//
//  Menu.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import Foundation
//t
struct Menu {
    static var beastcraft = Restaurant(restaurantName: "beastcraft", menu: [
        "Harvest Slider": Meal(mealName: "Harvest Slider", calories: 275, protein: 17, fats: 9, carbs: 0),
        "Harvest Sandwich": Meal(mealName: "Harvest Sandwich", calories: 450, protein: 22, fats: 45, carbs: 17),
        "Pulled Pork Sandwich": Meal(mealName: "Pulled Pork Sandwich", calories: 500, protein: 30, fats: 40, carbs: 20),
        "Pork Steak Sandwich": Meal(mealName: "Pork Steak Sandwich", calories: 600, protein: 35, fats: 25, carbs: 30),
        "Pork Steak Slider": Meal(mealName: "Pork Steak Slider", calories: 290, protein: 17, fats: 25, carbs: 10),
        "Grilled Cheese Sandwich": Meal(mealName: "Grilled Cheese Sandwich", calories: 400, protein: 12, fats: 32, carbs: 25),
        "Brisket Grilled Cheese Sandwich": Meal(mealName: "Brisket Grilled Cheese Sandwich", calories: 650, protein: 30, fats: 35, carbs: 35),
        "Chicken Wings(10pc)": Meal(mealName: "Chicken Wings(10pc)", calories: 700, protein: 65, fats: 4, carbs: 50),
        "Smoked Turkey Sandwich": Meal(mealName: "Smoked Turkey Sandwich", calories: 345, protein: 22, fats: 34, carbs: 12),
        "White Cheddar Mac": Meal(mealName: "White Cheddar Mac", calories: 340, protein: 13, fats: 34, carbs: 17),
        "Fries": Meal(mealName: "Fries", calories: 630, protein: 9, fats: 85, carbs: 30),
        "Potato Salad": Meal(mealName: "Potato Salad", calories: 300, protein: 5, fats: 35, carbs: 23),
        "Sprouts": Meal(mealName: "Sprouts", calories: 70, protein: 4, fats: 7, carbs: 1),
        "Candied Bacon": Meal(mealName: "Candied Bacon", calories: 250, protein: 13, fats: 13, carbs: 22),
        "Chocolate Chunk Cookie": Meal(mealName: "Chocolate Chunk Cookie", calories: 175, protein: 2, fats: 25, carbs: 8)
    ])

static var DUC = Restaurant(restaurantName: "DUC", menu: [
    "Impossible Burger": Meal(mealName: "Impossible Burger", calories: 333, protein: 21, fats: 12, carbs: 34),
    "Black Bean Burger": Meal(mealName: "Black Bean Burger", calories: 308, protein: 18, fats: 45, carbs: 8),
    "Buffalo Chicken Mac N Cheese": Meal(mealName: "Buffalo Chicken Mac N Cheese", calories: 629, protein: 40, fats: 51, carbs: 30),
    "Red Hot Buffalo Chicken Wrap": Meal(mealName: "Red Hot Buffalo Chicken Wrap", calories: 358, protein: 11, fats: 35, carbs: 20),
    "Cheeseburger": Meal(mealName: "Cheeseburger", calories: 373, protein: 17, fats: 28, carbs: 21),
    "Bacon Cheeseburger": Meal(mealName: "Bacon Cheeseburger", calories: 482, protein: 24, fats: 29, carbs: 30),
    "Sweet Potato French Fries": Meal(mealName: "Sweet Potato French Fries", calories: 268, protein: 2, fats: 28, carbs: 17),
    "Cabbage, Cucumber & Mango Slaw": Meal(mealName: "Cabbage, Cucumber & Mango Slaw", calories: 50, protein: 0, fats: 9, carbs: 2),
    "Lo Mein Noodles": Meal(mealName: "Lo Mein Noodles", calories: 187, protein: 6, fats: 39, carbs: 0),
    "Blackened Tofu": Meal(mealName: "Blackened Tofu", calories: 187, protein: 10, fats: 14, carbs: 10),
    "Kung Pao Sauce": Meal(mealName: "Kung Pao Sauce", calories: 79, protein: 2, fats: 18, carbs: 0),
    "Crispy Sesame Tofu": Meal(mealName: "Crispy Sesame Tofu", calories: 243, protein: 11, fats: 10, carbs: 18),
    "Broccoli Cheddar Ranch Pizza": Meal(mealName: "Broccoli Cheddar Ranch Pizza", calories: 438, protein: 18, fats: 51, carbs: 18),
    "Balsamic Chicken Breast": Meal(mealName: "Balsamic Chicken Breast", calories: 145, protein: 26, fats: 0, carbs: 4),
    "Ratatouille & Lentil Stew": Meal(mealName: "Ratatouille & Lentil Stew", calories: 135, protein: 8, fats: 24, carbs: 2),
    "BBQ Rubbed Eye Of Round": Meal(mealName: "BBQ Rubbed Eye Of Round", calories: 239, protein: 31, fats: 1, carbs: 11),
    "Halal Beef Gyro With Toppings": Meal(mealName: "Halal Beef Gyro With Toppings", calories: 359, protein: 17, fats: 38, carbs: 16),
    "White Pita Bread": Meal(mealName: "White Pita Bread", calories: 160, protein: 6, fats: 32, carbs: 0),
    "Shawarma Chicken Breast": Meal(mealName: "Shawarma Chicken Breast", calories: 146, protein: 26, fats: 0, carbs: 4),
    "Wedge Cut Fries": Meal(mealName: "Wedge Cut Fries", calories: 171, protein: 3, fats: 24, carbs: 7),
    "Wheat Pita Bread": Meal(mealName: "Wheat Pita Bread", calories: 124, protein: 6, fats: 24, carbs: 0),
    "Falafel Bowl": Meal(mealName: "Falafel Bowl", calories: 370, protein: 13, fats: 58, carbs: 11),
    "Harvest Rice Pilaf": Meal(mealName: "Harvest Rice Pilaf", calories: 233, protein: 3, fats: 39, carbs: 7),
    "Couscous Tabbouleh Salad": Meal(mealName: "Couscous Tabbouleh Salad", calories: 137, protein: 3, fats: 19, carbs: 6),
    "Roasted Red Pepper Hummus": Meal(mealName: "Roasted Red Pepper Hummus", calories: 101, protein: 3, fats: 8, carbs: 7),
    "Meat Lover's Feast Pizza": Meal(mealName: "Meat Lover's Feast Pizza", calories: 411, protein: 20, fats: 46, carbs: 17),
    "Cheese Pizza": Meal(mealName: "Cheese Pizza", calories: 248, protein: 11, fats: 34, carbs: 8),
    "Halal Pepperoni Pizza": Meal(mealName: "Halal Pepperoni Pizza", calories: 275, protein: 13, fats: 34, carbs: 10)
])

static var BD = Restaurant(restaurantName: "Bear's Den", menu: [
    "Just Egg Vegan Patty": Meal(mealName: "Just Egg Vegan Patty", calories: 98, protein: 7, fats: 7, carbs: 2),
    "Scrambled Eggs": Meal(mealName: "Scrambled Eggs", calories: 97, protein: 9, fats: 6, carbs: 0),
    "Vanilla Belgian Waffle": Meal(mealName: "Vanilla Belgian Waffle", calories: 261, protein: 5, fats: 3, carbs: 53),
    "Turkey Sausage Links": Meal(mealName: "Turkey Sausage Links", calories: 91, protein: 7, fats: 7, carbs: 0),
    "Bacon": Meal(mealName: "Bacon", calories: 105, protein: 7, fats: 8, carbs: 0),
    "French Toast Sticks With Syrup": Meal(mealName: "French Toast Sticks With Syrup", calories: 495, protein: 11, fats: 18, carbs: 71),
    "Sausage Patties": Meal(mealName: "Sausage Patties", calories: 350, protein: 9, fats: 34, carbs: 1),
    "Fried Large Cage Free Egg": Meal(mealName: "Fried Large Cage Free Egg", calories: 77, protein: 6, fats: 5, carbs: 0),
    "French Onion Soup": Meal(mealName: "French Onion Soup", calories: 66, protein: 1, fats: 4, carbs: 7),
    "Loaded Baked Potato Chowder": Meal(mealName: "Loaded Baked Potato Chowder", calories: 182, protein: 6, fats: 11, carbs: 16),
    "Adobo Roasted Turkey Breast": Meal(mealName: "Adobo Roasted Turkey Breast", calories: 135, protein: 18, fats: 6, carbs: 0),
    "Grilled Chicken Sandwich": Meal(mealName: "Grilled Chicken Sandwich", calories: 307, protein: 32, fats: 7, carbs: 28),
    "Chicken Tenders": Meal(mealName: "Chicken Tenders", calories: 419, protein: 16, fats: 32, carbs: 18),
    "Hamburger": Meal(mealName: "Hamburger", calories: 312, protein: 14, fats: 16, carbs: 28),
    "Impossible Smash Burger": Meal(mealName: "Impossible Smash Burger", calories: 260, protein: 14, fats: 8, carbs: 32),
    "Sweet Potato Fries": Meal(mealName: "Sweet Potato Fries", calories: 272, protein: 2, fats: 17, carbs: 29),
    "Texas-style Grilled Cheese Sandwich": Meal(mealName: "Texas-style Grilled Cheese Sandwich", calories: 418, protein: 15, fats: 21, carbs: 41),
    "Cheeseburger": Meal(mealName: "Cheeseburger", calories: 373, protein: 17, fats: 21, carbs: 28),
    "Black Bean Burger": Meal(mealName: "Black Bean Burger", calories: 237, protein: 13, fats: 4, carbs: 38),
    "French Fries": Meal(mealName: "French Fries", calories: 153, protein: 1, fats: 10, carbs: 16),
    "Fresh Summer Veggies": Meal(mealName: "Fresh Summer Veggies", calories: 48, protein: 2, fats: 1, carbs: 7),
    "BBQ Pulled Pork Sandwich": Meal(mealName: "BBQ Pulled Pork Sandwich", calories: 250, protein: 14, fats: 7, carbs: 32),
    "Macaroni and Cheese": Meal(mealName: "Macaroni and Cheese", calories: 110, protein: 4, fats: 4, carbs: 15),
    "Seasoned Roast Turkey Breast": Meal(mealName: "Seasoned Roast Turkey Breast", calories: 141, protein: 18, fats: 6, carbs: 0),
    "Wild Rice": Meal(mealName: "Wild Rice", calories: 112, protein: 4, fats: 0, carbs: 24),
    "Tossed Garden Side Salad": Meal(mealName: "Tossed Garden Side Salad", calories: 10, protein: 0, fats: 0, carbs: 2),
    "Lentil Stew": Meal(mealName: "Lentil Stew", calories: 182, protein: 9, fats: 4, carbs: 28),
    "Caramelized Root Vegetables": Meal(mealName: "Caramelized Root Vegetables", calories: 71, protein: 1, fats: 2, carbs: 13),
    "8\" Vegetable Pizza": Meal(mealName: "8\" Vegetable Pizza", calories: 718, protein: 34, fats: 29, carbs: 82),
    "Grilled Chicken & Pesto Stromboli": Meal(mealName: "Grilled Chicken & Pesto Stromboli", calories: 411, protein: 25, fats: 15, carbs: 45),
    "8\" Pepperoni Pizza": Meal(mealName: "8\" Pepperoni Pizza", calories: 747, protein: 36, fats: 34, carbs: 75),
    "8\" Cheese Pizza": Meal(mealName: "8\" Cheese Pizza", calories: 697, protein: 34, fats: 30, carbs: 75),
    "Braised Winter Root Vegetables": Meal(mealName: "Braised Winter Root Vegetables", calories: 79, protein: 1, fats: 2, carbs: 16),
    "Yellow Cupcakes With Vanilla Icing": Meal(mealName: "Yellow Cupcakes With Vanilla Icing", calories: 299, protein: 2, fats: 13, carbs: 43),
    "Double Chocolate Chip Cookie": Meal(mealName: "Double Chocolate Chip Cookie", calories: 138, protein: 1, fats: 7, carbs: 21),
    "Plain Quinoa": Meal(mealName: "Plain Quinoa", calories: 111, protein: 4, fats: 2, carbs: 19),
    "Kogi Style Rice Bowl": Meal(mealName: "Kogi Style Rice Bowl", calories: 526, protein: 20, fats: 12, carbs: 84),
    "Scrambled Eggs With Cheddar": Meal(mealName: "Scrambled Eggs With Cheddar", calories: 212, protein: 16, fats: 15, carbs: 1),
    "Chicken Machaca Hard Taco": Meal(mealName: "Chicken Machaca Hard Taco", calories: 286, protein: 12, fats: 11, carbs: 34),
    "Roasted Tomato Rice Pilaf": Meal(mealName: "Roasted Tomato Rice Pilaf", calories: 148, protein: 3, fats: 0, carbs: 32),
    "Plant Carnitas Hard Taco": Meal(mealName: "Plant Carnitas Hard Taco", calories: 269, protein: 7, fats: 9, carbs: 38),
    "Grilled Flank Steak": Meal(mealName: "Grilled Flank Steak", calories: 183, protein: 23, fats: 9, carbs: 0),
    "Black Bean Stew With Orzo": Meal(mealName: "Black Bean Stew With Orzo", calories: 386, protein: 12, fats: 19, carbs: 46),
    "Broccoli With Garlic & Lemon": Meal(mealName: "Broccoli With Garlic & Lemon", calories: 53, protein: 3, fats: 2, carbs: 8),
    "Baked Potato": Meal(mealName: "Baked Potato", calories: 114, protein: 3, fats: 0, carbs: 26),
    "Cheeseburger On Bun": Meal(mealName: "Cheeseburger On Bun", calories: 450, protein: 21, fats: 27, carbs: 29),
    "Hamburger On Bun": Meal(mealName: "Hamburger On Bun", calories: 400, protein: 19, fats: 23, carbs: 28),
    "Hot Italian Sausage Pizza": Meal(mealName: "Hot Italian Sausage Pizza", calories: 300, protein: 14, fats: 12, carbs: 36),
    "Homestyle Chicken Noodle Soup": Meal(mealName: "Homestyle Chicken Noodle Soup", calories: 47, protein: 3, fats: 1, carbs: 6),
    "Acorn & Butternut Squash Chili": Meal(mealName: "Acorn & Butternut Squash Chili", calories: 95, protein: 3, fats: 3, carbs: 16),
    "Penne With Meatball Marinara": Meal(mealName: "Penne With Meatball Marinara", calories: 493, protein: 18, fats: 23, carbs: 54),
    "Baked Garlic Breadstick": Meal(mealName: "Baked Garlic Breadstick", calories: 86, protein: 2, fats: 3, carbs: 13),
])

static var Subway = Restaurant(restaurantName: "Subway", menu: [
    "6\" BLT": Meal(mealName: "6\" BLT", calories: 320, protein: 18, fats: 12, carbs: 42),
    "12\" BLT": Meal(mealName: "12\" BLT", calories: 640, protein: 36, fats: 24, carbs: 84),
    "6\" Veggie Patty": Meal(mealName: "6\" Veggie Patty", calories: 390, protein: 16, fats: 10, carbs: 60),
    "12\" Veggie Patty": Meal(mealName: "12\" Veggie Patty", calories: 780, protein: 32, fats: 20, carbs: 120),
    "Veggie Patty Wrap": Meal(mealName: "Veggie Patty Wrap", calories: 430, protein: 16, fats: 14, carbs: 61),
    "BLT Wrap": Meal(mealName: "BLT Wrap", calories: 520, protein: 24, fats: 24, carbs: 48),
    "6\" Pizza Sub": Meal(mealName: "6\" Pizza Sub", calories: 410, protein: 20, fats: 15, carbs: 49),
    "12\" Pizza Sub": Meal(mealName: "12\" Pizza Sub", calories: 820, protein: 40, fats: 30, carbs: 98),
    "6\" Homerun Black Forest Ham": Meal(mealName: "6\" Homerun Black Forest Ham", calories: 290, protein: 18, fats: 4.5, carbs: 46),
    "12\" Homerun Black Forest Ham": Meal(mealName: "12\" Homerun Black Forest Ham", calories: 580, protein: 36, fats: 9, carbs: 92),
    "6\" Turkey Italiano": Meal(mealName: "6\" Turkey Italiano", calories: 380, protein: 18, fats: 16, carbs: 47),
    "12\" Turkey Italiano": Meal(mealName: "12\" Turkey Italiano", calories: 760, protein: 36, fats: 32, carbs: 94),
    "6\" Titan Turkey": Meal(mealName: "6\" Titan Turkey", calories: 280, protein: 18, fats: 6, carbs: 40),
    "12\" Titan Turkey": Meal(mealName: "12\" Titan Turkey", calories: 560, protein: 36, fats: 12, carbs: 80),
    "6\" Roast Beef": Meal(mealName: "6\" Roast Beef", calories: 320, protein: 25, fats: 5, carbs: 41),
    "12\" Roast Beef": Meal(mealName: "12\" Roast Beef", calories: 640, protein: 50, fats: 10, carbs: 82),
    "6\" Subway Club": Meal(mealName: "6\" Subway Club", calories: 310, protein: 23, fats: 4.5, carbs: 46),
    "12\" Subway Club": Meal(mealName: "12\" Subway Club", calories: 620, protein: 46, fats: 9, carbs: 92),
    "6\" All Pro Sweet Onion Chicken Teriyaki": Meal(mealName: "6\" All Pro Sweet Onion Chicken Teriyaki", calories: 360, protein: 25, fats: 4.5, carbs: 58),
    "12\" All Pro Sweet Onion Chicken Teriyaki": Meal(mealName: "12\" All Pro Sweet Onion Chicken Teriyaki", calories: 720, protein: 50, fats: 9, carbs: 116),
    "6\" All American Club": Meal(mealName: "6\" All American Club", calories: 340, protein: 20, fats: 12, carbs: 44),
    "12\" All American Club": Meal(mealName: "12\" All American Club", calories: 680, protein: 40, fats: 24, carbs: 88),
    "6\" Rotisserie Chicken": Meal(mealName: "6\" Rotisserie Chicken", calories: 320, protein: 29, fats: 6, carbs: 41),
    "12\" Rotisserie Chicken": Meal(mealName: "12\" Rotisserie Chicken", calories: 640, protein: 58, fats: 12, carbs: 82),
    "12\" Cold Cut Combo": Meal(mealName: "12\" Cold Cut Combo", calories: 770, protein: 30, fats: 34, carbs: 92),
    "12\" Hot Shot Italiano": Meal(mealName: "12\" Hot Shot Italiano", calories: 900, protein: 40, fats: 40, carbs: 96),
    "12\" Veggie Delite": Meal(mealName: "12\" Veggie Delite", calories: 460, protein: 18, fats: 6, carbs: 90),
    "12\" Meatball Marinara": Meal(mealName: "12\" Meatball Marinara", calories: 960, protein: 40, fats: 36, carbs: 120),
    "12\" Ultimate BMT": Meal(mealName: "12\" Ultimate BMT", calories: 860, protein: 42, fats: 36, carbs: 92),
    "12\" Tuna": Meal(mealName: "12\" Tuna", calories: 940, protein: 40, fats: 48, carbs: 92),
    "12\" Elite Chicken & Bacon Ranch": Meal(mealName: "12\" Elite Chicken & Bacon Ranch", calories: 1180, protein: 66, fats: 52, carbs: 104),
    "12\" The Philly Steak & Cheese": Meal(mealName: "12\" The Philly Steak & Cheese", calories: 820, protein: 52, fats: 28, carbs: 96)
])
static var Beverages  = Restaurant(restaurantName: "Beverages", menu: [
    "Coca-Cola 20oz": Meal(mealName: "Coca-Cola 20oz", calories: 240, protein: 0, fats: 0, carbs: 65),
    "Pepsi 20oz": Meal(mealName: "Pepsi 20oz", calories: 250, protein: 0, fats: 0, carbs: 69),
    "Dr Pepper 20oz": Meal(mealName: "Dr Pepper 20oz", calories: 250, protein: 0, fats: 0, carbs: 66),
    "Mountain Dew 20oz": Meal(mealName: "Mountain Dew 20oz", calories: 290, protein: 0, fats: 0, carbs: 77),
    "Sprite 20oz": Meal(mealName: "Sprite 20oz", calories: 240, protein: 0, fats: 0, carbs: 65),
    "Diet Coke 20oz": Meal(mealName: "Diet Coke 20oz", calories: 0, protein: 0, fats: 0, carbs: 0),
    "Diet Pepsi 20oz": Meal(mealName: "Diet Pepsi 20oz", calories: 0, protein: 0, fats: 0, carbs: 0),
    "Fanta Orange 20oz": Meal(mealName: "Fanta Orange 20oz", calories: 270, protein: 0, fats: 0, carbs: 73),
    "7UP 20oz": Meal(mealName: "7UP 20oz", calories: 240, protein: 0, fats: 0, carbs: 65),
    "Coca-Cola Zero Sugar 20oz": Meal(mealName: "Coca-Cola Zero Sugar 20oz", calories: 0, protein: 0, fats: 0, carbs: 0),
    "Pepsi Zero Sugar 20oz": Meal(mealName: "Pepsi Zero Sugar 20oz", calories: 0, protein: 0, fats: 0, carbs: 0),
    "Cherry Coke 20oz": Meal(mealName: "Cherry Coke 20oz", calories: 260, protein: 0, fats: 0, carbs: 70),
    "Mug Root Beer 20oz": Meal(mealName: "Mug Root Beer 20oz", calories: 260, protein: 0, fats: 0, carbs: 71),
    "A&W Root Beer 20oz": Meal(mealName: "A&W Root Beer 20oz", calories: 290, protein: 0, fats: 0, carbs: 77),
    "Mountain Dew Code Red 20oz": Meal(mealName: "Mountain Dew Code Red 20oz", calories: 280, protein: 0, fats: 0, carbs: 75),
    "Dr Pepper Cherry 20oz": Meal(mealName: "Dr Pepper Cherry 20oz", calories: 250, protein: 0, fats: 0, carbs: 66),
    "Diet Dr Pepper 20oz": Meal(mealName: "Diet Dr Pepper 20oz", calories: 0, protein: 0, fats: 0, carbs: 0),
    "Ginger Ale 20oz": Meal(mealName: "Ginger Ale 20oz", calories: 230, protein: 0, fats: 0, carbs: 61),
])
static var Bergson = Restaurant(restaurantName: "Cafe Bergson", menu: [
    "Acai Energy": Meal(mealName: "Acai Energy", calories: 390, protein: 2, fats: 3.5, carbs: 87),
    "Bangin' Berry": Meal(mealName: "Bangin' Berry", calories: 380, protein: 1, fats: 0, carbs: 91),
    "Berry Burn": Meal(mealName: "Berry Burn", calories: 320, protein: 0, fats: 0, carbs: 79),
    "Carribean Craze": Meal(mealName: "Carribean Craze", calories: 310, protein: 0, fats: 0, carbs: 76),
    "Goin' Green": Meal(mealName: "Goin' Green", calories: 300, protein: 2, fats: 0.5, carbs: 75),
    "Lime Berry": Meal(mealName: "Lime Berry", calories: 340, protein: 3, fats: 3, carbs: 77),
    "Lucky 7": Meal(mealName: "Lucky 7", calories: 320, protein: 9, fats: 0, carbs: 79),
    "Mango Me Crazy": Meal(mealName: "Mango Me Crazy", calories: 340, protein: 9, fats: 0, carbs: 86),
    "Maui Mango": Meal(mealName: "Maui Mango", calories: 380, protein: 0, fats: 0, carbs: 96),
    "Orange Sunrise": Meal(mealName: "Orange Sunrise", calories: 350, protein: 3, fats: 3, carbs: 78),
    "Peach On The Beach": Meal(mealName: "Peach On The Beach", calories: 360, protein: 3, fats: 3, carbs: 80),
    "Peanut Butter Protein": Meal(mealName: "Peanut Butter Protein", calories: 640, protein: 29, fats: 22, carbs: 82),
    "Super C Immune Support": Meal(mealName: "Super C Immune Support", calories: 360, protein: 3, fats: 3, carbs: 80),
    "Super Fuel": Meal(mealName: "Super Fuel", calories: 320, protein: 0, fats: 0, carbs: 79),
    "Thropical Therapy": Meal(mealName: "Thropical Therapy", calories: 420, protein: 0, fats: 9, carbs: 84),
    "Wild Strawberry": Meal(mealName: "Wild Strawberry", calories: 310, protein: 0, fats: 0, carbs: 79)
])




}
