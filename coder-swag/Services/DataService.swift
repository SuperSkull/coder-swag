//
//  DataService.swift
//  coder-swag
//
//  Created by thanhbh on 5/9/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private var categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private var hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "£18", category: "HATS", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "£22", category: "HATS", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "£22", category: "HATS", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "£20", category: "HATS", imageName: "hat04.png")
    ]
    
    private var hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "£32", category: "HOODIES", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "£32", category: "HOODIES", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "£32", category: "HOODIES", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "£32", category: "HOODIES", imageName: "hoodie04.png")
    ]
    
    private var shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "£18", category: "SHIRTS", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "£19", category: "SHIRTS", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "£18", category: "SHIRTS", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "£18", category: "SHIRTS", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "£18", category: "SHIRTS", imageName: "shirt05.png")
    ]
    
    private var digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getDigitalGoods()
        }
    }
    
    func addProduct(product: Product) {
        switch product.category {
        case "SHIRTS":
            shirts.append(product)
        case "HATS":
            hats.append(product)
        case "HOODIES":
            hoodies.append(product)
        case "DIGITAL":
            digitalGoods.append(product)
        default:
            return
        }
    }
    
    func getHats()-> [Product]{
        return hats
    }
    
    func getHoodies()-> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
