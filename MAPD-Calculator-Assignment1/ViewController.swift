//
//  ViewController.swift
//  MAPD-Calculator-Assignment1
//
//  Created by Mankiran kaur on 2017-09-21.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberondisplay:Double = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        label.text = label.text! + String(sender.tag-1)
        numberondisplay = Double(label.text!)!
        
    }
    
    @IBAction func operations(_ sender: UIButton)
    {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

