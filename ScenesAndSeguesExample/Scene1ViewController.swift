//
//  Scene1ViewController.swift
//  ScenesAndSeguesExample
//
//  Created by Hoàng Khánh on 4/12/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class Scene1ViewController: UIViewController {
    
    @IBOutlet weak var lblData: UILabel?
    @IBOutlet weak var txtData: UITextField?
    //var textFromMainVC: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        //lblData?.text = textFromMainVC
        lblData?.text = DataPassing.shared.textToPassing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
