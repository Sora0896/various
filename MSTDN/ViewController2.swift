//
//  ViewController2.swift
//  MSTDN
//
//  Created by 神谷青空 on 2017/05/30.
//  Copyright © 2017年 神谷青空. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    var url:String = "https://mstdn.kemono-friends.info/auth/sign_in"
    
    func LoadingWeb() {
        let requURL = URL(string: url)
        let requ = URLRequest(url: requURL!)
        webview.loadRequest(requ)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadingWeb()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
