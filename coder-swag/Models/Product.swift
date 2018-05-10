//
//  Product.swift
//  coder-swag
//
//  Created by thanhbh on 5/10/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import Foundation

struct Product {
    private(set) var title: String
    private(set) var price: String
    private(set) var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
    init(_ title: String, _ price: String, _ imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
