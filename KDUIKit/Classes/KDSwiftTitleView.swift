//
//  KDSwiftTitleView.swift
//  kido
//
//  Created by 慕常青 on 2018/9/7.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

import UIKit
import SnapKit
public class KDSwiftTitleView: UIView {

    var sectionInset: UIEdgeInsets = .zero {
        didSet {
            titleLbl.snp.updateConstraints { (make) in
                make.edges.equalToSuperview().inset(sectionInset)
            }
        }
    }
    
    var title: String? {
        didSet {
            titleLbl.text = title
        }
    }
    
    var titleFont: UIFont? {
        didSet {
            titleLbl.font = titleFont
        }
    }
    
    private let titleLbl: UILabel = {
        let label = UILabel.init()
        label.font = UIFont.systemFont(ofSize: 27.0)
        label.textAlignment = .left
        label.textColor = UIColor.black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        addSubview(titleLbl)
        titleLbl.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
