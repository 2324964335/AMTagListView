//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Andrea Mazzini on 31/10/14.
//  Copyright (c) 2014 Fancy Pixel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var tagListView: AMTagListView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "Demo"
    
    textField.layer.borderColor = UIColor(red:0.12, green:0.55, blue:0.84, alpha:1).cgColor
    textField.layer.borderWidth = 2.0
    textField.delegate = self
    AMTagView.appearance().tagLength = 10
    AMTagView.appearance().textPadding = 14
    AMTagView.appearance().textFont = UIFont(name: "Futura", size: 14)
    AMTagView.appearance().tagColor = UIColor(red:0.12, green:0.55, blue:0.84, alpha:1)
    
    tagListView.addTag("my tag")
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    tagListView.addTag(textField.text)
    textField.text = ""
    return false;
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    textField.resignFirstResponder()
  }
  
}

