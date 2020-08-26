//
//  Tteesstt11ViewController.swift
//  TestMenuBae
//
//  Created by APP技術部-陳冠志 on 2020/8/26.
//  Copyright © 2020 Bruce Chen. All rights reserved.
//

import UIKit

class Tteesstt11ViewController: UIViewController {

    @IBOutlet weak var buttonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonItem.target = self.revealViewController()
        buttonItem.action = #selector(SWRevealViewController.revealToggle(_:))
        
    }

}
