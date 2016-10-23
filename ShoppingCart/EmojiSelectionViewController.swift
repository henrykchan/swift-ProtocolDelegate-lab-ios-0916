//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    var leftTextField: UITextField!
    var rightTextField: UITextField!
    var label: UILabel!
    var button: UIButton!
    var emojiDelegate: EmojiCreation?
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
        
        //Create Label
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 30))
        label.center = CGPoint(x: 210, y: 30)
        label.font = label.font.withSize(24)
        label.textAlignment = .center
        label.text = "Type in one emoji per box"
        self.view.addSubview(label)
        self.label = label
        
        
        //Create left textfield
        let leftTextField = UITextField(frame:CGRect(x: 0, y: 0, width: 150, height: 40))
        leftTextField.center = CGPoint(x: 100, y: 100)
        leftTextField.borderStyle = UITextBorderStyle.roundedRect
        leftTextField.backgroundColor = UIColor.cyan
        leftTextField.textAlignment = .center
        self.view.addSubview(leftTextField)
        self.leftTextField = leftTextField
        
        
        //Creat right textfield
        let rightTextField = UITextField(frame:CGRect(x: 0, y: 0, width: 150, height: 40))
        rightTextField.center = CGPoint(x: 270, y: 100)
        rightTextField.borderStyle = UITextBorderStyle.roundedRect
        rightTextField.backgroundColor = UIColor.cyan
        rightTextField.textAlignment = .center
        self.view.addSubview(rightTextField)
        self.rightTextField = rightTextField
        
        
        //Create button 
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(24)
        button.setTitle("Save", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.center = CGPoint(x: 205, y: 200)
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        
        self.view.addSubview(button)
        self.button = button

    }
    
    func buttonPressed(_ sender: UIButton!) {
        
        
        guard let leftEmoji = leftTextField.text,
            let rightEmoji = rightTextField.text
            else {return}
        
        
        emojiDelegate?.create(emojiGroup: (leftEmoji,rightEmoji))
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
