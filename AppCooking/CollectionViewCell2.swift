//
//  CollectionViewCell2.swift
//  AppCooking
//
//  Created by Dương chãng on 3/3/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class CollectionViewCell2: UICollectionViewCell {

    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var uilblTen: UILabel!
    
    var Tinh: Province? {
        didSet {
            if let Data = Tinh {
                imageView2.image = UIImage(named: Data.imaView)
                uilblTen.text = Data.LblHienthi
            }
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
