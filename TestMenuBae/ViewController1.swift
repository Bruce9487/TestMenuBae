//
//  ViewController1.swift
//  TestMenuBae
//
//  Created by APP技術部-陳冠志 on 2020/8/24.
//  Copyright © 2020 Bruce Chen. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var vc1ItemButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vc1ItemButton.target = self.revealViewController()
        vc1ItemButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        
    }
    
}
