//
//  ViewController.swift
//  MyCocoapodsLibrary
//
//  Created by iamnaz on 02/21/2020.
//  Copyright (c) 2020 iamnaz. All rights reserved.
//

import UIKit
import MyCocoapodsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let log = Logger()
        log.printLog()
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "flower.jpg", in: resourcesBundle, compatibleWith: nil)
        
        print(image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

