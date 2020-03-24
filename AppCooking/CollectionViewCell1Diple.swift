//
//  CollectionViewCell1Diple.swift
//  AppCooking
//
//  Created by Dương chãng on 2/29/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class CollectionViewCell1Diple: UICollectionViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var lblname: UILabel!
    
    var noidung : Anhtet? {
        didSet {
            if let data = noidung {
                ImageView.image = UIImage(named: data.image1)
                lblname.text  = data.Name
            }
        }
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
