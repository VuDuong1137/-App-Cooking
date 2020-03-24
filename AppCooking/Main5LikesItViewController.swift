//
//  Main5LikesItViewController.swift
//  AppCooking
//
//  Created by Dương chãng on 3/5/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class Main5LikesItViewController: UIViewController {

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
    let LblLikeSit: UILabel = {
        let Lbl = UILabel()
        Lbl.text = "Yêu Thích"
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
    let Textfield : UITextField = {
        let TextField = UITextField()
        TextField.translatesAutoresizingMaskIntoConstraints = false
        TextField.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        TextField.alpha = 0.4
        TextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.7719124572)
        TextField.placeholder = "🔍 Tìm kiếm món ăn"
        
        TextField.textAlignment = .center
        TextField.layer.cornerRadius = 20
        TextField.layer.borderColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        TextField.layer.borderWidth = 1
        return TextField
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "anh1")!)
        setuplayout()
    
        BtnBack.addTarget(self, action: #selector(Main4), for: .touchUpInside)
        BtnMenu.addTarget(self, action: #selector(main4), for: .touchUpInside)
        anbanphimkhigoxungquanh()
    }
    func setuplayout() {
        view.addSubview(ViewBig)
        ViewBig.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        ViewBig.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        ViewBig.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        ViewBig.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -790).isActive = true
        
       ViewBig.addSubview(LblLikeSit)
        //LblLikeSit.backgroundColor = .red
       LblLikeSit.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 40).isActive = true
      LblLikeSit.leadingAnchor.constraint(equalTo: ViewBig.leadingAnchor, constant: 100).isActive = true
       LblLikeSit.trailingAnchor.constraint(equalTo: ViewBig.trailingAnchor, constant: -100).isActive = true
     LblLikeSit.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: 0).isActive = true
       
       ViewBig.addSubview(BtnMenu)
       BtnMenu.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 50).isActive = true
       BtnMenu.trailingAnchor.constraint(equalTo:LblLikeSit.leadingAnchor, constant: -25).isActive = true
       BtnMenu.leadingAnchor.constraint(equalTo: ViewBig.leadingAnchor, constant: 25).isActive = true
       BtnMenu.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: -10).isActive = true
       
       ViewBig.addSubview(BtnBack)
      BtnBack.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 58).isActive = true
       BtnBack.leadingAnchor.constraint(equalTo: LblLikeSit.trailingAnchor, constant: 3).isActive = true
       BtnBack.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: -10).isActive = true
        BtnBack.heightAnchor.constraint(equalToConstant: 30).isActive = true
        BtnBack.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(Textfield)
        Textfield.topAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: 10).isActive = true
        Textfield.leadingAnchor.constraint(equalTo: ViewBig.leadingAnchor, constant: 30).isActive = true
        Textfield.trailingAnchor.constraint(equalTo: ViewBig.trailingAnchor, constant: -30).isActive = true
        Textfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Textfield.widthAnchor.constraint(equalToConstant: 230).isActive = true
    }
    @objc func Main4(){
        dismiss(animated: true, completion: nil)
    }
    @objc func main4(){
        dismiss(animated: true, completion: nil)
    }

}
// MARK: setup hide keyboard function
extension Main5LikesItViewController{
    func anbanphimkhigoxungquanh() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(offkeyboar))
        // huỷ bỏ chạm vào
        tap.cancelsTouchesInView = false
        // thêm nhận dạng cử chỉ
        view.addGestureRecognizer(tap)
    }
    @objc func offkeyboar(){
        // thực hiện hành động ẩn keyboar
        view.endEditing(true)
    }
}
