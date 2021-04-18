//
//  Page2ViewController.swift
//  HelloTab
//
//  Created by 陳信彰 on 2021/4/18.
//

import UIKit

class Page2ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1")
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print("2")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("3")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("4")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
var test = 3


