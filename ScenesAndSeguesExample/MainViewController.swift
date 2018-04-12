//
//  MainViewController.swift
//  ScenesAndSeguesExample
//
//  Created by Hoàng Khánh on 4/12/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var txtData: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToMainViewController(unwindSegue: UIStoryboardSegue) {
        if unwindSegue.identifier == "Scene1ToMain" {
            let scene1VC = unwindSegue.source as! Scene1ViewController
            print("Data from Scene1: \(scene1VC.txtData?.text ?? "")")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Main2Scene1" {
//            let scene1VC = segue.destination as! Scene1ViewController
//            scene1VC.textFromMainVC = txtData?.text ?? ""
            DataPassing.shared.textToPassing = txtData?.text ?? ""
        }
    }
    
    
}
