//
//  Product.swift
//  MyShop
//
//  Created by Hyunyou Lim on 2022/06/24.
//

import Foundation
import UIKit

//Identfiable -> each product가 갖고 있어야하는 변수를 정의
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "sweater1", image: "sweater1", price: 54),
                   Product(name: "sweater2", image: "sweater2", price: 64),
                   Product(name: "sweater3", image: "sweater3", price: 74),
                   Product(name: "sweater4", image: "sweater4", price: 34),
                   Product(name: "sweater5", image: "sweater5", price: 14),
                   Product(name: "sweater6", image: "sweater6", price: 94),
                   Product(name: "sweater7", image: "sweater7", price: 39),
                   Product(name: "sweater8", image: "sweater8", price: 48),]
