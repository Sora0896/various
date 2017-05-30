//
//  ViewController.swift
//  MSTDN
//
//  Created by 神谷青空 on 2017/05/29.
//  Copyright © 2017年 神谷青空. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ID: UITextField!
    @IBOutlet weak var Pass: UITextField!
    
    var myID:String = "KamiyaSora"
    var myPass:String = "test"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Login(_ sender: Any) {
        if (ID.text == myID && Pass.text == myPass){
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "View2")
            present(nextView, animated: true, completion: nil)
        }else{
            let alertController:UIAlertController =
                UIAlertController(title:"ERROR",
                                  message: "IDまたはPassが違います。",
                                  preferredStyle: .alert)
            let cancelAction:UIAlertAction =
                UIAlertAction(title: "Cancel",
                              style: .cancel,
                              handler:{
                                (action:UIAlertAction!) -> Void in
                })
            alertController.addAction(cancelAction)
            
            present(alertController, animated: true, completion: nil)
        }
    }
}
