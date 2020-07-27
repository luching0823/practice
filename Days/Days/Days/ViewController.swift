//
//  ViewController.swift
//  Days
//
//  Created by 廖昱晴 on 2020/7/24.
//  Copyright © 2020 廖昱晴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var datepicker: UIDatePicker!
    @IBOutlet var timeintervalDisplayLabel: UILabel!
    //Date Picker完成後執行程式
    @IBAction func showPicker(_ sender: UIDatePicker) {
        //今天日期
        let now = Date()
        //紀念日期
        let anniversary = datepicker.date
        //使用calender.curren得到使用者的日曆來計算差值並列出年月日
        let diffDateComponents = Calendar.current.dateComponents([.day], from: anniversary, to: now)
        print(diffDateComponents)
        timeintervalDisplayLabel.text = "\(String(describing: diffDateComponents.day!))日"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //設定Date Picker只顯示日期
        datepicker.datePickerMode = .date
        //顯示中文
        datepicker.locale = Locale(identifier: "zh_CN")
        //日期選擇最大為今天
        datepicker.maximumDate = Date()
        // Do any additional setup after loading the view.
    }


}

