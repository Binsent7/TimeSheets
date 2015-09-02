//
//  InputTimeViewController.swift
//  TimeSheets
//
//  Created by hishinuma on 2015/09/02.
//  Copyright © 2015年 binsent. All rights reserved.
//

import Foundation
import UIKit

/*
    勤怠入力画面
*/
class InputTimeViewController: UIViewController {
    
    @IBAction func onTapCloseButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension InputTimeViewController: UITableViewDataSource {
    
    // セル数
    func tableView(table: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // セル生成
    func tableView(table: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = table.dequeueReusableCellWithIdentifier("Cell")
        
        var text = ""
        if indexPath.row == 0 {
            text = "開始時間"
        }
        else if indexPath.row == 1 {
            text = "終了時間"
        }
        else if indexPath.row == 2 {
            text = "休憩時間"
        }
        else if indexPath.row == 3 {
            text = "種類"
        }
        else if indexPath.row == 4 {
            text = "備考"
        }
        
        cell!.textLabel!.text = text
        return cell!
    }
}

// MARK:UITableViewDelegate
extension InputTimeViewController: UITableViewDelegate {
    
}