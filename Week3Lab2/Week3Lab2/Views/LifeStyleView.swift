//
//  LifeStyleView.swift
//  Week3Lab2
//
//  Created by Muneera Y on 21/01/1445 AH.
//

import Foundation
import UIKit
import SnapKit


class  LifeStyleView: UIView{

    var cardBarView: UICollectionView = .init(frame: .zero, collectionViewLayout:   UICollectionViewLayout()
    )
   
    let categories: Array<String> = [
        "Travel Tips",
        "Luxury Homes",
        "Architecture",
        "Interior Design",
        "Fashion",
        "Men's Style",
        "cars",
        "Wine & Drinks",
        "Home Products",
        "Kitchen Products"
    ]
    
    required init?(coder : NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
            super.init(frame: frame) // calls designated initializer
        }
    
    init(){
       
        super.init(frame: .zero)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 170, height: 50)
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        layout.scrollDirection = .vertical
        cardBarView = .init(frame: .zero, collectionViewLayout: layout)
        cardBarView.showsHorizontalScrollIndicator = false
        cardBarView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        cardBarView.delegate = self
        cardBarView.dataSource = self
        self.addSubview(cardBarView)
        cardBarView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(0)
        }
    }
}

extension LifeStyleView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let lable = UILabel()
        lable.text = categories[indexPath.item]
        lable.tintColor = .black
        lable.textAlignment = .center
        lable.backgroundColor = .gray.withAlphaComponent(0.2)
        cell.layer.cornerRadius = 10
     
        cell.addSubview(lable)
        lable.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(cell)
        }
        
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}
