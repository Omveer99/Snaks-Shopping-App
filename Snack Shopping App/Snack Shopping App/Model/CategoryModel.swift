//
//  Cat.swift
//  Snack Shopping App
//
//  Created by Omveer Panwar on 06/10/24.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable{
    var id : UUID = .init()
    var icon : String
    var title : String
}

var categoryList : [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "volleyball.circle", title: "Choco"),
    CategoryModel(icon: "wand.and.rays", title: "Waffles"),
    CategoryModel(icon: "trophy", title: "Toffee")
    ]
