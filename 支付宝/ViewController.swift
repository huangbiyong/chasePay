//
//  ViewController.swift
//  支付宝
//
//  Created by huangbiyong on 2017/12/22.
//  Copyright © 2017年 com.chase. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func alipay(_ sender: Any) {

        let pay = Pay()
        pay.doAPPay()
    }
    
    
}

