//
//  ViewController.swift
//  AppCooking
//
//  Created by Dương chãng on 2/21/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let Viewbig: UIView = {
        let view = UIView()
        let image = UIImageView(image: UIImage(named: "anh1"))
        view.addSubview(image)
        image.contentMode = .right
        return view
    }()
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "cooking")
        return imageView
    }()
    
    let Lable : UILabel = {
        let lable = UILabel ()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.text = "Cooking"
        lable.textColor = #colorLiteral(red: 0.8941176471, green: 0.5529411765, blue: 0.03921568627, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 48)
        return lable
    }()
    let Lable2 : UILabel = {
        let lable = UILabel ()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.text = "Default Language"
        lable.textColor = #colorLiteral(red: 0.7428869683, green: 0.4654156281, blue: 0.04064626342, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 25)
        return lable
    }()
    
    let Lable3 : UILabel = {
        let lable = UILabel ()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.backgroundColor = .white
        lable.layer.cornerRadius = 10
        lable.textAlignment = .center
        lable.text = "Vietnamese - Tiếng Việt"
        lable.textColor = #colorLiteral(red: 0.5622754092, green: 0.3522632297, blue: 0.03076429574, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 25)
        return lable
    }()
    
    let Lable4 : UILabel = {
          let lable = UILabel ()
          lable.translatesAutoresizingMaskIntoConstraints = false
          lable.text = "English"
          lable.textColor = #colorLiteral(red: 0.5622754092, green: 0.3522632297, blue: 0.03076429574, alpha: 1)
        lable.textAlignment = .center
          lable.font = UIFont.systemFont(ofSize: 25)
          return lable
      }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 6
        button.setTitle("Tiếp Tục >>", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 0.5728448231, blue: 0.275055199, alpha: 1), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setuplayout()
        
    }
    
    func setuplayout() {
        view.addSubview(Viewbig)
        Viewbig.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive =  true
        Viewbig.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        Viewbig.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        Viewbig.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        // imageview
        Viewbig.addSubview(imageView)
        //imageView.backgroundColor = .red
        imageView.topAnchor.constraint(equalTo: Viewbig.topAnchor, constant: 68).isActive = true
        imageView.leadingAnchor.constraint(equalTo: Viewbig.leadingAnchor, constant: 135).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 125).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 146).isActive = true
        
        Viewbig.addSubview(Lable)
        Lable.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30).isActive = true
        Lable.leadingAnchor.constraint(equalTo: Viewbig.leadingAnchor, constant: 125).isActive = true
        Lable.heightAnchor.constraint(equalToConstant: 102).isActive = true
        Lable.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        Viewbig.addSubview(Lable2)
        Lable2.topAnchor.constraint(equalTo: Lable.bottomAnchor, constant: 40).isActive = true
        Lable2.leadingAnchor.constraint(equalTo: Viewbig.leadingAnchor, constant: 120).isActive = true
        Lable2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        Lable2.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        Viewbig.addSubview(Lable3)
  
        Lable3.topAnchor.constraint(equalTo: Lable2.bottomAnchor, constant: 25).isActive = true
        Lable3.leadingAnchor.constraint(equalTo: Viewbig.leadingAnchor, constant: 70).isActive = true
        Lable3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        Lable3.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        Viewbig.addSubview(Lable4)
        Lable4.topAnchor.constraint(equalTo: Lable3.bottomAnchor, constant: 20).isActive = true
        Lable4.leadingAnchor.constraint(equalTo: Viewbig.leadingAnchor, constant: 70).isActive = true
        Lable4.heightAnchor.constraint(equalToConstant: 40).isActive = true
        Lable4.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        Viewbig.addSubview(loginButton)
        loginButton.topAnchor.constraint(equalTo: Lable4.bottomAnchor, constant: 200).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: Viewbig.leadingAnchor, constant: 70).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    
}

