//
//  Food.swift
//  Guanyuchi
//  Model
//
//  Created by Xiaochun Shen on 2020/7/23.
//

import Foundation
import SwiftUI

class Food: Identifiable {
    
    let title: String
    let price: Double
    let category: Categories
    let id: Int
    
    init(title: String, price: Double, category: Categories, id: Int) {
        self.title = title
        self.price = price
        self.category = category
        self.id = id
    }
    
        }
