//
//  Main6SettingViewController.swift
//  AppCooking
//
//  Created by Dương chãng on 3/6/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class Main6SettingViewController: UIViewController {
    
    let ViewBig : UIView = {
        let Viewbig = UIView()
        Viewbig.backgroundColor = #colorLiteral(red: 0.9822141528, green: 0.9271102548, blue: 0.6517273188, alpha: 1)
        Viewbig.translatesAutoresizingMaskIntoConstraints = false
        return Viewbig
    }()
    let BtnMenu: UIButton = {
        let BtnMenu = UIButton()
        BtnMenu.translatesAutoresizingMaskIntoConstraints = false
        // cách set ảnh cho button
        BtnMenu.setImage(UIImage(named: "menu"), for: .normal)
        return BtnMenu
    }()
    let LblSetting: UILabel = {
        let Lbl = UILabel()
        Lbl.text = "Thiết Lập"
        Lbl.translatesAutoresizingMaskIntoConstraints = false
        Lbl.font = UIFont.systemFont(ofSize: 40)
        Lbl.textColor = #colorLiteral(red: 0.8862745098, green: 0.662745098, blue: 0.03529411765, alpha: 1)
        Lbl.backgroundColor = .clear
        Lbl.textAlignment = .center
        return Lbl
    }()
    
    let BtnBack: UIButton = {
        let BtnBack = UIButton()
        //BtnBack.backgroundColor = .red
        BtnBack.translatesAutoresizingMaskIntoConstraints = false
        BtnBack.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        BtnBack.setTitleColor(#colorLiteral(red: 0.8862745098, green: 0.662745098, blue: 0.03529411765, alpha: 1), for: .normal)
        BtnBack.setTitle("Edit", for: .normal)
        return BtnBack
    }()
    
    let image1: UIImageView = {
        let image1 = UIImageView()
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = UIImage(named: "support")
        return image1
    }()
    
    let btn1: UIButton = {
        let btn1 = UIButton()
        btn1.translatesAutoresizingMaskIntoConstraints = false
        btn1.setTitle("Khích thước Phông", for: .normal)
        btn1.setTitleColor(#colorLiteral(red: 1, green: 0.6537521482, blue: 0, alpha: 1), for: .normal)
        btn1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn1.titleLabel?.textAlignment = .left
        //btn1.backgroundColor = .red
        return btn1
    }()
    
    let image2: UIImageView = {
        let image2 = UIImageView()
        image2.translatesAutoresizingMaskIntoConstraints = false
        image2.image = UIImage(named: "review")
        return image2
    }()
    
    let btn2: UIButton = {
        let btn2 = UIButton()
        btn2.translatesAutoresizingMaskIntoConstraints = false
        btn2.setTitle("Đánh gía cho chúng tôi", for: .normal)
        btn2.setTitleColor(#colorLiteral(red: 1, green: 0.6537521482, blue: 0, alpha: 1), for: .normal)
        btn2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn2.titleLabel?.textAlignment = .left
        //btn2.backgroundColor = .red
        return btn2
    }()
    let image3: UIImageView = {
        let image3 = UIImageView()
        image3.translatesAutoresizingMaskIntoConstraints = false
        image3.image = UIImage(named: "share")
        return image3
    }()
    let btn3 : UIButton = {
        let btn3 = UIButton()
        btn3.translatesAutoresizingMaskIntoConstraints = false
        btn3.setTitle("Chia sẻ cho bọn bè của bạn", for: .normal)
        btn3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn3.setTitleColor(#colorLiteral(red: 1, green: 0.6537521482, blue: 0, alpha: 1), for: .normal)
        btn3.titleLabel?.textAlignment = .left
        //btn3.backgroundColor = .red
        return btn3
    }()
    let image4: UIImageView = {
        let image4 = UIImageView()
        image4.translatesAutoresizingMaskIntoConstraints = false
        image4.image = UIImage(named: "facebook")
        return image4
    }()
    let btn4: UIButton = {
        let btn4 = UIButton()
        btn4.translatesAutoresizingMaskIntoConstraints = false
        btn4.setTitle("Like chúng tôi trên facebook", for: .normal)
        btn4.setTitleColor(UIColor(cgColor: #colorLiteral(red: 1, green: 0.6537521482, blue: 0, alpha: 1)), for: .normal)
        btn4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn4
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "anh1")!)
        Setuplayout()
        BtnBack.addTarget(self, action: #selector(Dismiss), for: .touchUpInside)
        btn1.addTarget(self, action: #selector(Font), for: .touchUpInside)
        
    }
    func Setuplayout() {
        
        view.addSubview(ViewBig)
        ViewBig.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        ViewBig.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        ViewBig.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        ViewBig.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -790).isActive = true
        
        ViewBig.addSubview(LblSetting)
        //LblLikeSit.backgroundColor = .red
        LblSetting.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 40).isActive = true
        LblSetting.leadingAnchor.constraint(equalTo: ViewBig.leadingAnchor, constant: 100).isActive = true
        LblSetting.trailingAnchor.constraint(equalTo: ViewBig.trailingAnchor, constant: -100).isActive = true
        LblSetting.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: 0).isActive = true
        
        ViewBig.addSubview(BtnMenu)
        BtnMenu.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 50).isActive = true
        BtnMenu.trailingAnchor.constraint(equalTo:LblSetting.leadingAnchor, constant: -25).isActive = true
        BtnMenu.leadingAnchor.constraint(equalTo: ViewBig.leadingAnchor, constant: 25).isActive = true
        BtnMenu.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: -10).isActive = true
        
        ViewBig.addSubview(BtnBack)
        BtnBack.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 58).isActive = true
        BtnBack.leadingAnchor.constraint(equalTo: LblSetting.trailingAnchor, constant: 3).isActive = true
        BtnBack.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: -10).isActive = true
        BtnBack.heightAnchor.constraint(equalToConstant: 30).isActive = true
        BtnBack.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(image1)
        image1.topAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: 30).isActive = true
        image1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        image1.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(btn1)
        btn1.topAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: 30).isActive = true
        btn1.leadingAnchor.constraint(equalTo: image1.trailingAnchor, constant: 10).isActive = true
        btn1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btn1.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        
        view.addSubview(image2)
        image2.topAnchor.constraint(equalTo:image1.bottomAnchor, constant: 15).isActive = true
        image2.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 30).isActive = true
        image2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        image2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(btn2)
        btn2.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 15).isActive = true
        btn2.leadingAnchor.constraint(equalTo: image2.trailingAnchor, constant: 10).isActive = true
        btn2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btn2.widthAnchor.constraint(equalToConstant: 280).isActive = true
        
        view.addSubview(image3)
        image3.topAnchor.constraint(equalTo: image2.bottomAnchor, constant: 15).isActive = true
        image3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        image3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        image3.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(btn3)
        btn3.topAnchor.constraint(equalTo: image2.bottomAnchor, constant: 15).isActive = true
        btn3.leadingAnchor.constraint(equalTo: image2.trailingAnchor, constant: 10).isActive = true
        btn3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btn3.widthAnchor.constraint(equalToConstant: 320).isActive = true
        
        view.addSubview(image4)
        image4.topAnchor.constraint(equalTo: image3.bottomAnchor, constant: 15).isActive = true
        image4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        image4.heightAnchor.constraint(equalToConstant: 40).isActive = true
        image4.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(btn4)
        btn4.topAnchor.constraint(equalTo: image3.bottomAnchor, constant: 15).isActive = true
        btn4.leadingAnchor.constraint(equalTo: image4.trailingAnchor, constant: 10).isActive = true
        btn4.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btn4.widthAnchor.constraint(equalToConstant: 325).isActive = true
    }
    @objc func Font(){
        
        let uialert: UIAlertController = UIAlertController(title: "Cooking", message: "", preferredStyle: .alert)
        let butonSmall: UIAlertAction = UIAlertAction(title: "Nhỏ", style: .default, handler: nil)
        let buttonBig: UIAlertAction = UIAlertAction(title: "Lớn", style: .cancel, handler: nil)
        uialert.addAction(buttonBig)
        uialert.addAction(butonSmall)
    
        present(uialert, animated: true, completion: nil)
        
    }
    
    @objc func Dismiss() {
        dismiss(animated: true, completion: nil)
    }
    
}
