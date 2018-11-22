//
//  ViewController.swift
//  KDUIKit
//
//  Created by kevinmenglu on 11/21/2018.
//  Copyright (c) 2018 kevinmenglu. All rights reserved.
//

import UIKit
import KDUIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view1 = KDSwiftTitleView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view1.backgroundColor = UIColor.blue
        view1.title = "请选择身份"
        view1.titleFont = UIFont.systemFont(ofSize: 17)
        view1.tintColor = UIColor.red
        view1.sectionInset = UIEdgeInsets(top: 100, left: 0, bottom: 0, right: 10)
        self.view.addSubview(view1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

