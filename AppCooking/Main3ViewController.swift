//
//  Main3ViewController.swift
//  AppCooking
//
//  Created by Dương chãng on 2/25/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class Main3ViewController: UIViewController {
    
    let ViewBig: UIView = {
        let View = UIView()
        View.translatesAutoresizingMaskIntoConstraints = false
        View.backgroundColor = #colorLiteral(red: 0.9696386456, green: 0.9299474359, blue: 0.892016232, alpha: 1)
        
        return View
    }()
    
    let LblCoking: UILabel = {
        let Lbl = UILabel()
        Lbl.text = "Cooking"
        Lbl.translatesAutoresizingMaskIntoConstraints = false
        Lbl.font = UIFont.systemFont(ofSize: 50)
        Lbl.textColor = #colorLiteral(red: 0.8862745098, green: 0.662745098, blue: 0.03529411765, alpha: 1)
        Lbl.backgroundColor = .clear
        Lbl.textAlignment = .center
        return Lbl
    }()
    let BtnMenu: UIButton = {
        let BtnMenu = UIButton()
        BtnMenu.translatesAutoresizingMaskIntoConstraints = false
        // cách set ảnh cho button
        BtnMenu.setImage(UIImage(named: "menu"), for: .normal)
        return BtnMenu
    }()
    let BtnSearch: UIButton = {
        let BtnMenu = UIButton()
        BtnMenu.translatesAutoresizingMaskIntoConstraints = false
        // cách set ảnh cho button
        BtnMenu.setImage(UIImage(named: "search (4)"), for: .normal)
        return BtnMenu
    }()
    let scollView: UIScrollView = {
        let scollView = UIScrollView ()
        scollView.translatesAutoresizingMaskIntoConstraints = false
        scollView.contentSize = CGSize(width: UIScreen.main.bounds.maxX, height: UIScreen.main.bounds.maxY * 2)
        scollView.backgroundColor = #colorLiteral(red: 0.9696386456, green: 0.9299474359, blue: 0.892016232, alpha: 1)
        scollView.layer.cornerRadius = 30
        scollView.isPagingEnabled = true // hiểu là phân trang
        scollView.showsVerticalScrollIndicator = false
        // khoá chế độ quận của scroolview
        //scollView.isScrollEnabled = false
        //Để khi cuộn sẽ thành phân trang trong UIScrollView:
        //scollView.isPagingEnabled = true
        // tắt thanh cuộn chiều ngang
        //scollView.showsHorizontalScrollIndicator = false
        // scollView.isPagingEnabled = true
        return scollView
    }()
    let viewinScrooll : UIView = {
        let View = UIView ()
        View.translatesAutoresizingMaskIntoConstraints = false
        View.layer.cornerRadius = 30
        View.backgroundColor = .red
        return View
    }()
    
    
    let lblname1: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        // lbl.backgroundColor = .red
        lbl.text = "Dịp Lễ, Tết"
        lbl.font = UIFont.systemFont(ofSize: 28)
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        lbl.textAlignment = .left
        
        lbl.textColor = #colorLiteral(red: 1, green: 0.3651964443, blue: 0, alpha: 1)
        return lbl
        
    }()
    
    let collectionView: UICollectionView = {
        let folowlayout = UICollectionViewFlowLayout()
        let CollectionView = UICollectionView(frame: .zero, collectionViewLayout: folowlayout)
        CollectionView.translatesAutoresizingMaskIntoConstraints = false
        CollectionView.backgroundColor = .red
        return CollectionView
    }()
    let Lablname2 : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = " Đặc Sản Tỉnh Thành "
        lbl.font = UIFont.systemFont(ofSize: 28)
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        lbl.textAlignment = .left
        lbl.textColor = #colorLiteral(red: 1, green: 0.3651964443, blue: 0, alpha: 1)
        return lbl
    }()
    
    let CollectionView2 : UICollectionView = {
        let folowlayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: folowlayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .black
        return collectionView
    }()
    
    var NoiDung : [Anhtet] = []
    let idcell1 : String = "Cell"
    var Noidung2 : [Province] = []
    let idcell2 : String = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        // cho view to bằng 1 cái ảnh
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "anh1")!)
        scollView.delegate = self
        setuplayout()
        setupdata1()
        delegateDatasound()
        //dăng ký cell có file xib
        collectionView.register(UINib(nibName: "CollectionViewCell1Diple", bundle: nil), forCellWithReuseIdentifier: idcell1)
        
        setupdata2()
        //deolegaDatasouce2()
        //        CollectionView2.register(UINib(nibName: "CollectionView2", bundle: nil), forCellWithReuseIdentifier: idcell2)
        
        BtnMenu.addTarget(self, action: #selector(Main4), for: .touchUpInside)
        
    }
    func setuplayout() {
        view.addSubview(ViewBig)
        ViewBig.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        ViewBig.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        ViewBig.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        ViewBig.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -790).isActive = true
        
        ViewBig.addSubview(LblCoking)
        LblCoking.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 40).isActive = true
        LblCoking.leadingAnchor.constraint(equalTo: ViewBig.leadingAnchor, constant: 100).isActive = true
        LblCoking.trailingAnchor.constraint(equalTo: ViewBig.trailingAnchor, constant: -100).isActive = true
        LblCoking.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: 0).isActive = true
        
        ViewBig.addSubview(BtnMenu)
        BtnMenu.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 50).isActive = true
        BtnMenu.trailingAnchor.constraint(equalTo: LblCoking.leadingAnchor, constant: -25).isActive = true
        BtnMenu.leadingAnchor.constraint(equalTo: ViewBig.leadingAnchor, constant: 25).isActive = true
        BtnMenu.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: -10).isActive = true
        
        ViewBig.addSubview(BtnSearch)
        BtnSearch.topAnchor.constraint(equalTo: ViewBig.topAnchor, constant: 58).isActive = true
        BtnSearch.leadingAnchor.constraint(equalTo: LblCoking.trailingAnchor, constant: 28).isActive = true
        BtnSearch.trailingAnchor.constraint(equalTo: ViewBig.trailingAnchor, constant: -28).isActive = true
        
        BtnSearch.bottomAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: -10).isActive = true
        
        view.addSubview(scollView)
        scollView.topAnchor.constraint(equalTo: ViewBig.bottomAnchor, constant: 3).isActive = true
        scollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        scollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        scollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600).isActive = true
        
        scollView.addSubview(viewinScrooll)
        viewinScrooll.topAnchor.constraint(equalTo: scollView.topAnchor, constant: 10).isActive = true
        viewinScrooll.leadingAnchor.constraint(equalTo: scollView.leadingAnchor, constant: 0).isActive = true
        viewinScrooll.trailingAnchor.constraint(equalTo: scollView.trailingAnchor, constant: 0).isActive = true
        viewinScrooll.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        viewinScrooll.widthAnchor.constraint(equalToConstant: 400).isActive = true
        //        viewinScrooll.bottomAnchor.constraint(equalTo: scollView.bottomAnchor, constant: -700).isActive = true
        //
        //
        //
        //
        viewinScrooll.addSubview(lblname1)
        lblname1.topAnchor.constraint(equalTo: viewinScrooll.topAnchor, constant: 5).isActive = true
        lblname1.leadingAnchor.constraint(equalTo: viewinScrooll.leadingAnchor, constant: 138).isActive = true
        lblname1.trailingAnchor.constraint(equalTo: viewinScrooll.trailingAnchor, constant: -100).isActive = true
        lblname1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        lblname1.widthAnchor.constraint(equalToConstant: 150).isActive = true
        //
        //
        viewinScrooll.addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: lblname1.bottomAnchor, constant: 2).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: viewinScrooll.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: viewinScrooll.trailingAnchor, constant: 0).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        
        //collectionView.bottomAnchor.constraint(equalTo: viewinScrooll.bottomAnchor, constant: 260).isActive = true
        
        viewinScrooll.addSubview(Lablname2)
        Lablname2.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 5).isActive = true
        Lablname2.leadingAnchor.constraint(equalTo: viewinScrooll.leadingAnchor, constant: 50).isActive = true
        Lablname2.trailingAnchor.constraint(equalTo: viewinScrooll.trailingAnchor, constant: -40).isActive = true
        Lablname2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        Lablname2.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        viewinScrooll.addSubview(CollectionView2)
        CollectionView2.topAnchor.constraint(equalTo: Lablname2.bottomAnchor, constant: 5).isActive = true
        CollectionView2.leadingAnchor.constraint(equalTo: viewinScrooll.leadingAnchor, constant: 0).isActive = true
        CollectionView2.trailingAnchor.constraint(equalTo: viewinScrooll.trailingAnchor, constant: 0).isActive = true
        CollectionView2.heightAnchor.constraint(equalToConstant: 240).isActive = true
        
    }
    func delegateDatasound(){
        collectionView.delegate = self
        collectionView.dataSource = self
        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            flowlayout.scrollDirection = .horizontal
        }
        
    }
    func setupdata1(){
        let noidung1 = Anhtet(image1: "Tết Đoan Ngọ", Name: "Tết Đoan Ngọ")
        let noidung2 = Anhtet(image1: "Trung thu", Name: "Trung thu")
        let noidung3 = Anhtet(image1: "Cưới hỏi", Name: "Cưới Hỏi")
        let noidung4 = Anhtet(image1: "Sinh nhật", Name: "Sinh Nhật")
        let noidung5 = Anhtet(image1: "Tết Nguyên đán", Name: "Tết Nguyên Đán")
        let noidung6 = Anhtet(image1: "Noen", Name: "NOEN")
        let noidung7 = Anhtet(image1: "Valentine", Name: "VaLenTine")
        
        NoiDung = [noidung1, noidung2, noidung3, noidung4, noidung5, noidung6, noidung7]
    }
    
    //    func deolegaDatasouce2() {
    //          CollectionView2.delegate = self
    //          CollectionView2.dataSource = self
    //      }
    func setupdata2() {
        let Tinh = Province(imaView: "HÀ Nội", LblHienthi: "HÀ Nội")
        let Tinh2 = Province(imaView: "Huế", LblHienthi: "Huế")
        let Tinh3 = Province(imaView: "Sài Gòn", LblHienthi: "Sài Gòn")
        let Tinh4 = Province(imaView: "Nha Trang", LblHienthi: "Nha Trang")
        let Tinh5 = Province(imaView: "Quảng Nam", LblHienthi: "Quảng Nam")
        Noidung2 = [Tinh, Tinh2, Tinh3, Tinh4, Tinh5]
    }
    
    @objc func Main4(){
        let Maiv4 = ManuMain4ViewController()
        Maiv4.modalPresentationStyle = .fullScreen
        present(Maiv4, animated: true, completion: nil)
    }
}

extension Main3ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NoiDung.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idcell1, for: indexPath) as! CollectionViewCell1Diple
        cell.noidung = NoiDung[indexPath.row]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 220)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    
    
}


