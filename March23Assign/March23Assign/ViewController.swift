//
//  ViewController.swift
//  March23Assign
//
//  Created by Field Employee on 3/23/20.
//  Copyright © 2020 Field Employee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let frame = CGRect(x: 100, y: 400, width: 250, height: 21)
    let label = UILabel(frame: frame)
    let frame2 = CGRect(x: 100, y: 422, width: 250, height: 21)
    let label2 = UILabel(frame: frame2)
    let frame3 = CGRect(x: 100, y: 444, width: 250, height: 21)
    let label3 = UILabel(frame: frame3)
    
    let date = Date()
    let calendar = Calendar.current
    let day = calendar.component(.day, from: date)
    let month = calendar.component(.month, from: date)
    let year = calendar.component(.year, from: date)
    
    func addStyle(to label: UILabel) {
      label.text = "Current Date: " + String(month) + "/" + String(day) + "/" + String(year)
      
      label.backgroundColor = .clear
      label.textColor = .red
      label.font = UIFont(name:"Verdana", size:18.0)
      label.shadowColor = .darkGray
      label.numberOfLines = 2
    }
    
    addStyle(to: label)
    addStyle(to: label2)
    addStyle(to: label3)
    
    let stackView = UIStackView(arrangedSubviews: [label, label2, label3])
    stackView.axis = .vertical
    
    view.addSubview(stackView)
    view.addSubview(label)
    view.addSubview(label2)
    view.addSubview(label3)
    
  }


}

