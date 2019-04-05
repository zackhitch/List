//
//  ViewController.swift
//  List
//
//  Created by Zack Hitchcock on 4/3/19.
//  Copyright © 2019 Zack Hitchcock. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func moveListForward() {
        label.text = completeList
        textField.text = ""
        listCount += 1
    }
    
    let itemsController = ItemsController()
    var completeList: String = ""
    var listCount: Int = 1
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let input = textField.text ?? ""
        
        
        if !input.isEmpty {
            completeList += "* - \(input)\n"
            moveListForward()
        }
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        itemsController.resetItems()
        label.text = ""
        completeList = ""
        listCount = 1
    }
    
    @IBAction func printDebug(_ sender: UIButton) {
        print(completeList)
    }
    
    
}
