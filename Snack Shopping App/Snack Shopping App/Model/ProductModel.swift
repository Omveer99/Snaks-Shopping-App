//
//  ProductModel.swift
//  Snack Shopping App
//
//  Created by Omveer Panwar on 06/10/24.
//

import SwiftUI

struct Product : Identifiable{
    var id : UUID = .init()
    var name: String
    var category : String
    var color: Color
    var image : String
    var prices : Int
}

var productList = [
    Product(name: "Good Source", category: "Choco", color: .pink, image: "gs1" ,prices: 8),
    Product(name: "Tomato Twister", category: "Choco", color: .red, image: "gs3" , prices: 10),
    Product(name: "Coconut Beach", category: "Choco", color: .green, image: "gs55" , prices: 8),
    Product(name: "Fun Twist", category: "Choco", color: .blue, image: "gs31" , prices: 7),
    Product(name: "Cheetos", category: "Choco", color: .orange, image: "gs6" , prices: 6),
    Product(name: "Dorite Riki", category: "Choco", color: .green, image: "gs5" , prices: 7),
    Product(name: "Lays Chips", category: "Choco", color: .yellow, image: "gs77" , prices: 18)
    
]
