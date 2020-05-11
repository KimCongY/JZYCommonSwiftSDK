//
//  ViewController.swift
//  SwiftPracticeProject
//
//  Created by Chiu Young on 2020/2/24.
//  Copyright © 2020 qy. All rights reserved.
//

import UIKit
let screenW = UIScreen.main.bounds.width
let screenH = UIScreen.main.bounds.height

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //常规创建
        self.view.backgroundColor=UIColor.white;
        let label = UILabel(frame: CGRect(x: 10, y: 20, width: screenW-20, height: screenH/4))
        label.text = "这是一条测试的显示数据，this is a test data，但是还不够长，所以 yao jia 长yi diandian"
        self.view.addSubview(label)
        
        //label属性
        //颜色
        label.textColor = UIColor.red
        //字体
        label.font = UIFont.systemFont(ofSize: 24)
        //对齐方式
        label.textAlignment = NSTextAlignment.center
        //多行显示
        label.numberOfLines = 3
        //阴影
        label.shadowColor = UIColor.yellow
        label.shadowOffset = CGSize.init(width: 2, height: 3)
        label.lineBreakMode = NSLineBreakMode.byTruncatingTail
        //高亮
        label.isHighlighted = true
        label.highlightedTextColor = UIColor.green
        
        //富文本
        let attributeString = NSMutableAttributedString.init(string: "这是一条测试富文本的字符串")
        //从文本0开始6个字符字体helveticaNeue-Bold，16号
        attributeString.addAttribute(NSAttributedString.Key.font, value: UIFont.init(name: "HelveticaNeue-Bold", size: 23) ?? UIFont.boldSystemFont(ofSize: 23), range: NSRange.init(location: 0, length: 6))
        //设置富文本字体颜色
        attributeString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.brown, range: NSMakeRange(0, 6))
        
    }


}

