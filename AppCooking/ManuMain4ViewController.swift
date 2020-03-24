//
//  ManuMain4ViewController.swift
//  AppCooking
//
//  Created by Dương chãng on 3/5/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class ManuMain4ViewController: UIViewController {
    
    let View: UIView = {
        let View = UIView()
        View.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.height)
        View.backgroundColor = #colorLiteral(red: 1, green: 0.8578439951, blue: 0.6047694683, alpha: 1)
        
        return View
    }()
    let Viewone: UIView = {
        let Viewone = UIView()
        Viewone.backgroundColor = #colorLiteral(red: 0.98271662, green: 0.9159505367, blue: 0.7971939445, alpha: 1)
        Viewone.translatesAutoresizingMaskIntoConstraints = false
        return Viewone
    }()
    let imaView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "cooking")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let lblname: UILabel = {
        let lblname =  UILabel()
        lblname.text = "Cooking"
        lblname.font = UIFont.boldSystemFont(ofSize: 30)
        lblname.translatesAutoresizingMaskIntoConstraints = false
        lblname.textColor = #colorLiteral(red: 0.9863829017, green: 0.7223131061, blue: 0, alpha: 1)
        lblname.textAlignment = .center
        //lblname.font = UIFont.systemFont(ofSize: 25)
        return lblname
        
    }()
    let back : UIButton = {
        let back = UIButton()
        back.translatesAutoresizingMaskIntoConstraints = false
        back.setImage(UIImage(named: "back"), for: .normal)
        return back
    }()
    let image1: UIImageView = {
        let image1 = UIImageView()
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = UIImage(named: "search (4)")
        return image1
    }()
    let category: UIButton = {
        let category = UIButton()
        category.translatesAutoresizingMaskIntoConstraints = false
        category.setTitle("Danh Mục", for: .normal)
        category.setTitleColor(#colorLiteral(red: 0.9863829017, green: 0.7223131061, blue: 0, alpha: 1) , for: .normal)
        category.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        return category
    }()
    let image2: UIImageView = {
        let image1 = UIImageView()
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = UIImage(named: "heart (1)")
        return image1
    }()
    let likesIt: UIButton = {
        let likesIt = UIButton()
        likesIt.translatesAutoresizingMaskIntoConstraints = false
        likesIt.setTitle("Yêu Thích", for: .normal)
        likesIt.setTitleColor(#colorLiteral(red: 0.9863829017, green: 0.7223131061, blue: 0, alpha: 1) , for: .normal)
        likesIt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        return likesIt
    }()
    let image3: UIImageView = {
        let image1 = UIImageView()
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = UIImage(named: "lock")
        return image1
    }()
    let Setting: UIButton = {
        let Setting = UIButton()
        Setting.translatesAutoresizingMaskIntoConstraints = false
        Setting.setTitle("Thiết Lập", for: .normal)
        Setting.setTitleColor(#colorLiteral(red: 0.9863829017, green: 0.7223131061, blue: 0, alpha: 1) , for: .normal)
        Setting.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        return Setting
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Trung thu")!)
        setupLayout()
        
        back.addTarget(self, action: #selector(Main3), for: .touchUpInside)
        category.addTarget(self, action: #selector(Main4), for: .touchUpInside)
        likesIt.addTarget(self, action: #selector(Main5), for: .touchUpInside)
        Setting.addTarget(self, action: #selector(Main6), for: .touchUpInside)
    }
    func setupLayout() {
        view.addSubview(View)
        View.addSubview(Viewone)
        Viewone.topAnchor.constraint(equalTo: View.topAnchor, constant: 0).isActive = true
        Viewone.leadingAnchor.constraint(equalTo: View.leadingAnchor, constant: 0).isActive = true
        Viewone.trailingAnchor.constraint(equalTo: View.trailingAnchor, constant: 0).isActive = true
        Viewone.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -780).isActive = true
        
        Viewone.addSubview(imaView)
        imaView.topAnchor.constraint(equalTo: Viewone.topAnchor, constant: 50).isActive = true
        imaView.leadingAnchor.constraint(equalTo: Viewone.leadingAnchor, constant: 10).isActive = true
        imaView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        imaView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        imaView.bottomAnchor.constraint(equalTo: Viewone.bottomAnchor, constant: -3).isActive = true
        
        Viewone.addSubview(lblname)
        //lblname.backgroundColor = .red
        lblname.topAnchor.constraint(equalTo: Viewone.topAnchor, constant: 60).isActive = true
        lblname.leadingAnchor.constraint(equalTo: imaView.trailingAnchor, constant: 10).isActive = true
        lblname.heightAnchor.constraint(equalToConstant: 8).isActive = true
        lblname.widthAnchor.constraint(equalToConstant: 120).isActive = true
        lblname.bottomAnchor.constraint(equalTo: Viewone.bottomAnchor, constant: -3).isActive = true
        
        Viewone.addSubview(back)
        back.topAnchor.constraint(equalTo: Viewone.topAnchor, constant: 70).isActive = true
        back.leadingAnchor.constraint(equalTo: lblname.trailingAnchor, constant: 15).isActive = true
        back.heightAnchor.constraint(equalToConstant: 40).isActive = true
        back.widthAnchor.constraint(equalToConstant: 40).isActive = true
        back.bottomAnchor.constraint(equalTo: Viewone.bottomAnchor, constant: -10).isActive = true
        
        View.addSubview(image1)
        image1.topAnchor.constraint(equalTo: Viewone.bottomAnchor, constant: 30).isActive = true
        image1.leadingAnchor.constraint(equalTo: View.leadingAnchor, constant: 30).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 35).isActive = true
        image1.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        view.addSubview(category)
        //category.backgroundColor = .red
        category.topAnchor.constraint(equalTo: Viewone.bottomAnchor, constant: 30).isActive = true
        category.leadingAnchor.constraint(equalTo: image1.trailingAnchor, constant: 10).isActive = true
        category.heightAnchor.constraint(equalToConstant: 35).isActive = true
        category.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(image2)
        image2.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 15).isActive = true
        image2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        image2.heightAnchor.constraint(equalToConstant: 35).isActive = true
        image2.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        view.addSubview(likesIt)
        likesIt.topAnchor.constraint(equalTo: category.bottomAnchor, constant: 15).isActive = true
        likesIt.leadingAnchor.constraint(equalTo: image2.trailingAnchor, constant: 10).isActive = true
        likesIt.heightAnchor.constraint(equalToConstant: 35).isActive = true
        likesIt.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(image3)
        image3.topAnchor.constraint(equalTo: image2.bottomAnchor, constant: 15).isActive = true
        image3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        image3.heightAnchor.constraint(equalToConstant: 35).isActive = true
        image3.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        view.addSubview(Setting)
        Setting.topAnchor.constraint(equalTo: likesIt.bottomAnchor, constant: 15).isActive = true
        Setting.leadingAnchor.constraint(equalTo: image3.trailingAnchor, constant: 10).isActive = true
        Setting.heightAnchor.constraint(equalToConstant: 35).isActive = true
        Setting.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    @objc func Main3(){
    dismiss(animated: true, completion: nil)
    }
    
    @objc func Main4(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc func Main5(){
       let MaiVC = Main5LikesItViewController()
        MaiVC.modalPresentationStyle = .fullScreen
        present(MaiVC, animated: true, completion: nil)
    }
    
    @objc func Main6(){
        let MaiVC = Main6SettingViewController()
        MaiVC.modalPresentationStyle = .fullScreen
        present(MaiVC, animated: true, completion: nil)
    }
    
}
