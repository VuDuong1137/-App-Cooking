//
//  Main2ViewConTroller.swift
//  AppCooking
//
//  Created by Dương chãng on 2/24/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class Main2ViewConTroller: UIViewController {
    
    
    
    let imaview: UIImageView = {
        let imaView = UIImageView()
        imaView.translatesAutoresizingMaskIntoConstraints = false
        imaView.image = UIImage(named: "cooking")

        return imaView

    }()
    let login: UIButton = {
        
        let login = UIButton()
        login.translatesAutoresizingMaskIntoConstraints = false
        // set font chữ cho but
        login.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        //set kiêu chữ đậm
        login.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)

        login.backgroundColor = .white
        login.layer.cornerRadius = 6
        login.setTitle("Đăng nhập", for: .normal)
        login.setTitleColor(.red, for: .normal)
        
        return login
        }()
    let bttdangky: UIButton = {
    
    let login = UIButton()
    login.translatesAutoresizingMaskIntoConstraints = false
    // set font chữ cho but
    login.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    //set kiêu chữ đậm
    login.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    login.backgroundColor = .white
    login.layer.cornerRadius = 6
    login.setTitle("Đăng Ký", for: .normal)
    login.setTitleColor(.red, for: .normal)
        
        
//
//        let aler: UIAlertController = UIAlertController(title: "Đăng ký", message: "vui lòng nhập thông tin", preferredStyle: UIAlertController.Style.alert)
//
//        let btnok: UIAlertAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
//        aler.addAction(btnok)
//        present(aler, animated: true, completion: nil)
        
    return login
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "anh1")!)
        setuplayout()
        login.addTarget(self, action: #selector(Main3), for: .touchUpInside)
        bttdangky.addTarget(self, action: #selector(UIAler), for: .touchUpInside)
    }

    func setuplayout() {
        view.addSubview(imaview)

        imaview.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        imaview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        imaview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        imaview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -580).isActive = true
        
        view.addSubview(bttdangky)
        bttdangky.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive = true
        bttdangky.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64).isActive = true
        bttdangky.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64).isActive = true
        bttdangky.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -480).isActive = true
        
        
        view.addSubview(login)
        login.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        login.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64).isActive = true
        login.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64).isActive = true
        login.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -380).isActive = true

    }

    @objc func Main3(){
        let MainVc = Main3ViewController()
        MainVc.modalPresentationStyle = .fullScreen
        present(MainVc,animated: true, completion: nil)
    }
    
    @objc func UIAler(){
        // tạo ô đăng ký
        let aler: UIAlertController = UIAlertController(title: "Đăng ký", message: "vui lòng nhập thông tin", preferredStyle: UIAlertController.Style.alert)
        // thêm txt
        aler.addTextField { (txtemail) in
            txtemail.placeholder = "✉️ Nhập email"
        }
        aler.addTextField { (txtPass) in
            txtPass.placeholder = "🔒 Nhập PassWorrd"
            // mã hoá pass
            txtPass.isSecureTextEntry = true
        }
        
        
        // khởi toạ thêm nut button
        //let btnok: UIAlertAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
        
        
        let btnlogin: UIAlertAction = UIAlertAction(title: "Đăng Nhập", style: UIAlertAction.Style.cancel) { (btnloin) in
            
            // khởi tạo cái email = cái text vị trí đầu tiên
            let email:String = aler.textFields![0].text!
            let pass: String = aler.textFields![1].text!
            if email == "tienduong11.37@gmail.com" && pass == "123456"{
                
                self.thongbaoketqua(mess: "đăng nhập thành công")
                
                
            }else{
                self.thongbaoketqua(mess: "đăng nhập thật bại")
            }
            
            
        }
        let btnCancel: UIAlertAction = UIAlertAction(title: "Huỷ", style: UIAlertAction.Style.destructive) { (btnCancel) in
            
        }
        aler.addAction(btnlogin)
        aler.addAction(btnCancel)
        //aler.addAction(btnok)
        
        // cho nó hiển thị lên bước 3
        present(aler, animated: true, completion: nil)
    }
    
    func thongbaoketqua(mess: String){
        let alert: UIAlertController = UIAlertController(title: "Thông báo ", message: mess, preferredStyle: .alert)
        let btnok: UIAlertAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.destructive, handler: nil)
        alert.addAction(btnok)
        present(alert, animated: true, completion: nil)
    }
    
  
    
}
