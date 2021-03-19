//
//  NextViewController.swift
//  Pass_by_Value_ Test
//
//  Created by HIRO on 2021/03/16.
//

import UIKit

class NextViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btn(_ sender: Any) {
        print("button click")
        let preNC = self.presentingViewController as! UINavigationController
        let preVC = preNC.viewControllers[preNC.viewControllers.count - 1] as! ViewController
        
        let now = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let string = formatter.string(from: now as Date)
        preVC.arrayTest1st.append(string)  //ここで値渡し
        print("追加完了　")
        
        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
}
