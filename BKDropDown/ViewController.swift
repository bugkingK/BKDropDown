//
//  ViewController.swift
//  BKDropDown
//
//  Created by moon on 23/09/2019.
//  Copyright © 2019 Bugking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var dropDown:BKDropDown!
    private var dropDown2:BKDropDown!
    
    var bTest = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let items:[BKItem] = [
            BKItem(title: "하이1", image: nil),
            BKItem(title: "하이2", image: UIImage(named: "Image")),
            BKItem(title: "하이3", image: nil),
            BKItem(title: "하이4", image: nil),
            BKItem(title: "하이5", image: nil),
        ]
        dropDown = BKDropDown.instance()
            .bind(items, first: 2)
            .setLayoutCell(normal: .gray)
            .setLayoutTitle(alignment: .center)
            .setPadding(top: 10, bottom: 10)
            .setDidSelectRowAt({ (idx, dropDown) in
                dropDown.hide()
            })
        
        dropDown2 = BKDropDown.instance()
            .bind(items, first: 1)
            .setLayoutCell(normal: .gray)
            .setLayoutTitle(alignment: .center)
            .setPadding(top: 10, bottom: 10)
            .setDidSelectRowAt({ (idx, dropDown) in
                dropDown.hide()
            })
    }

    @IBAction func onClickButton(_ sender: UIButton) {
        bTest = !bTest
        if bTest {
            dropDown.show(self, targetView: sender)
        } else {
            dropDown2.show(self, targetView: sender)
        }
        
    }
    
}

