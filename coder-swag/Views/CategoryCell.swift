//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by thanhbh on 5/9/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    
    func updateViews(category: Category) {
        imgCategory.image = UIImage(named: category.imageName)
        lblCategory.text = category.title
    }

}
