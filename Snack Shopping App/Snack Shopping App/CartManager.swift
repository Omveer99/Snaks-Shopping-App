//
//  CardManager.swift
//  Snack Shopping App
//
//  Created by Omveer Panwar on 06/10/24.
//


import SwiftUI

class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total : Int = 0
    
    func addtoCart(product: Product){
        products.append(product)
        total += product.prices
    }
    
    func removefromCart(product: Product){
        products = products.filter{$0.id != product.id}
        total -= product.prices
    }
    
    
}
