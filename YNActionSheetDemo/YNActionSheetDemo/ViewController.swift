//
//  ViewController.swift
//  YNActionSheetDemo
//
//  Created by 游义男 on 15/10/16.
//  Copyright (c) 2015年 游义男. All rights reserved.
//

import UIKit

class ViewController: UIViewController,YNActionSheetDelegate {

    @IBAction func actionSheetBtnTapped(sender: AnyObject) {
        PhotoBrowser()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PhotoBrowser(){
        var action = YNActionSheet()
        action.delegate = self
        action.addCancelButtonWithTitle("CancelTitle")
        action.addButtonWithTitle("title1")
        action.addButtonWithTitle("title2")
        action.addButtonWithTitle("title3")
        self.presentViewController(action, animated: true) { () -> Void in
            
        }
    }
    func buttonClick(index: Int) {
        println("\(index)")
    }

}

