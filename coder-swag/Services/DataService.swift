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
    
    private let categories = [
        Category("SHIRTS", "shirts.png"),
        Category("HOODIES", "hoodies.png"),
        Category("HATS", "hats.png"),
        Category("DIGITAL", "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
