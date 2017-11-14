//
//  ViewController.swift
//  Eluxon
//
//  Created by Greg Smorag on 13/11/2017.
//  Copyright © 2017 Greg Smorag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus = SwitchStatus.off {
        didSet {
            switch switchStatus {
                case .on:
                    toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
                    view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                    onOffLbl.text = "☀️ ON ☀️"
                    onOffLbl.textColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
                case .off:
                    toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
                    view.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
                    onOffLbl.text = "🌜 OFF 🌛"
                    onOffLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleBtnTapped(_ sender: Any) {
        switchStatus.toggle()
    }
    
}

