//
//  ViewController.swift
//  HelloTab
//
//  Created by 陳信彰 on 2021/4/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello Page 1")
        // 設定變動保留
        let def = UserDefaults.standard
        let value = def.value(forKey: "lastInputDate")
        // 轉換型別
        if let date = value as? Date{
            let formater = DateFormatter()
            formater.dateFormat = "yyyy-MM-dd a hh:mm:ss"
            formater.locale = Locale.init(identifier: "zh-tw")
            // 設定變數將UserDefaults保留
            let dateString = formater.string(from: date)
            // 將儲存的變數顯示在Label中
            displayLable.text = dateString
        }
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displayLable: UILabel!
    
    @IBAction func Test(_ sender: UIDatePicker) {
        let Test = sender.date
        print(Test.timeIntervalSince1970)
        let def = UserDefaults.standard
        def.setValue(Test, forKey: "lastInputDate")
        def.synchronize()
        let formater = DateFormatter()
        formater.dateFormat = "yy-MM-dd HH:mm"
        let dateString = formater.string(from: Test)
        
        displayLable.text = dateString
    }
}

