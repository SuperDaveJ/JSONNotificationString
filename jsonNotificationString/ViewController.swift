//
//  ViewController.swift
//  jsonNotificationString
//
//  Created by Dave Johnson on 11/2/17.
//  Copyright © 2017 Dave Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = Bundle.main.url(forResource: "strings", withExtension: "xml") else { return }
        guard let xml = XML(contentsOf: url) else { return }
        
        let name = xml[0][0].attributes
        let text = xml[0][0].text
        print("Name : \(name["name"]!)")
        print("Text : \(text)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

