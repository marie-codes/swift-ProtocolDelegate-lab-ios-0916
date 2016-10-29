//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    var emojiDelegate: EmojiCreation?
   
    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }

    @IBAction func SaveBtn_Pressed(_ sender: UIButton) {
        let leftText = TextField1.text!
        let rightText = TextField2.text!
        let newEmojis = (leftText, rightText)
        
        emojiDelegate?.create(emojiGroup: (newEmojis))
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
}
