//
//  ViewController.swift
//  Week3Lab2
//
//  Created by Muneera Y on 20/01/1445 AH.
//

import UIKit


import Foundation
import UIKit
import SnapKit

class RootViewController: UIViewController  {
    
 //UITextField

    var collectionView: CardBarView = .init()
    var lifeStyleView: LifeStyleView = .init()
    var label = UILabel()
    var label2 = UILabel()
    var label3 = UILabel()
    var lifestylelabel = UILabel()
    var buttonn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Riyadh"
        view.backgroundColor = .white
        labelView()
        label2View()
        label3View()
        configerCollectionView()
        Lifestyle()
        lifeStyleViews()
        buttonViews()
    }
    
    func labelView(){
        self.view.addSubview(label)
        label.text = "Personalize your feed"
        label.textAlignment = .center
        label.snp.makeConstraints {
            $0.top.equalTo(50)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(100)
//            $0.leading.equalTo(16)
        }
    }
//    Select 10 or more topics
    func label2View(){
        self.view.addSubview(label2)
        label2.text = "Select 10 or more topics"
        label2.textAlignment = .center
        label2.textColor = .gray
        label2.snp.makeConstraints {
            $0.top.equalTo(110)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(25)
//            $0.leading.equalTo(16)
        }
    }
    func label3View(){
        self.view.addSubview(label3)
        label3.text = "Most Popular:"
       
        label3.textAlignment = .center
        label3.snp.makeConstraints {
            $0.top.equalTo(label2.snp.bottom)
//            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(25)
            $0.leading.equalTo(16)
        }
    }
    
 
    func configerCollectionView(){

        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.top.equalTo(label3.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(250)
            $0.leading.equalTo(16)
        }
        
    }
    
    func Lifestyle(){
        lifestylelabel.text = "Life Style"
        lifestylelabel.textAlignment = .center
        self.view.addSubview(lifestylelabel)
        lifestylelabel.snp.makeConstraints {
            $0.top.equalTo(collectionView.snp.bottom)
            $0.height.equalTo(25)
            $0.leading.equalTo(16)
        }
    }
 
    func lifeStyleViews(){

        self.view.addSubview(lifeStyleView)
        lifeStyleView.snp.makeConstraints {
            $0.top.equalTo(lifestylelabel.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(270)
            $0.leading.equalTo(16)
        }
        
    }
    func buttonViews(){
        
        buttonn.setTitle("Selected",  for: .normal)
        buttonn.setTitleColor(.white, for: .normal)
        buttonn.backgroundColor = .gray
        buttonn.layer.cornerRadius = 12
        self.view.addSubview(buttonn)
        buttonn.snp.makeConstraints {
            $0.top.equalTo(lifeStyleView.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(50)
        
            $0.leading.equalTo(16)
        }
        
    }

  
    }









