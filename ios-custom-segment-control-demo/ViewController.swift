//
//  ViewController.swift
//  ios-custom-segment-control-demo
//
//  Created by Eiji Kushida on 2017/05/16.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: CustomSegmentControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSegmentControl()
    }

    /// セグメントコントロールの設定
    func setupSegmentControl() {

        segmentControl.items = ["漫画", "動画", "Webサイト"]
        segmentControl.selectedIndex = 0

        //色関連の設定
        segmentControl.borderColor = UIColor.white
        segmentControl.thumbColor = UIColor.white

        segmentControl.selectedLabelColor = UIColor.black
        segmentControl.unselectedLabelColor = UIColor.lightGray

        segmentControl.addTarget(self,
                                 action: #selector(ViewController.segmentValueChanged(_:)),
                                 for: .valueChanged)

    }

    /// セグメントコントロールが選択されたとき
    ///
    /// - Parameter sender: セグメントコントロール
    func segmentValueChanged(_ sender: AnyObject?){
        print(segmentControl.selectedIndex)
    }
}

