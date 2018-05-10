//
//  ProductCell.swift
//  coder-swag
//
//  Created by thanhbh on 5/10/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var lblProduct: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    func updateViews(product: Product) {
        imgProduct.image = UIImage(named: product.imageName)
        lblProduct.text = product.title
        lblPrice.text = product.price
    }
}
