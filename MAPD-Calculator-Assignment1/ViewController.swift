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
    var othernumber : Double = 0;
    var oprator : String = ""
    var result : Double = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if result == 0
        {
            if label.text == "+"{
                label.text = String(sender.tag)
            }
            else if label.text == "-"{
                label.text = String(sender.tag)
            }
            else if label.text == "x"{
                label.text = String(sender.tag)
            }
            else if label.text == "÷"{
                label.text = String(sender.tag)
            }
            else {
                label.text = label.text! + String(sender.tag)
            }
            
        }
        else  {
            label.text = ""
            result = 0;
            numberondisplay = 0;
            othernumber = 0;
            oprator = ""
            
            if label.text == "+"{
                label.text = String(sender.tag)
            }
            else if label.text == "-"{
                label.text = String(sender.tag)
            }
            else if label.text == "x"{
                label.text = String(sender.tag)
            }
            else if label.text == "÷"{
                label.text = String(sender.tag)
            }
            else {
                label.text = label.text! + String(sender.tag)
            }
            
        }
        
    }
    
    @IBAction func operations(_ sender: UIButton)
    {
        if label.text != ""
        {
            if sender.tag == 12{
                numberondisplay = Double(label.text!)!
                oprator = "÷"
                label.text = "÷"
            }
            else if sender.tag == 13{
                numberondisplay = Double(label.text!)!
                oprator = "x"
                label.text = "x"
            }
            else if sender.tag == 14{
                numberondisplay = Double(label.text!)!
                oprator = "-"
                label.text = "-"
            }
            else if sender.tag == 15{
                numberondisplay = Double(label.text!)!
                oprator = "+"
                label.text = "+"
            }
            else if sender.tag == 11{
                numberondisplay = 0
                othernumber = 0
                oprator = ""
                label.text = ""
            }
            else if sender.tag == 16{
                if numberondisplay != 0{
                    othernumber = Double(label.text!)!
                    if oprator == "+"{
                        result = numberondisplay + othernumber
                        label.text = String(result)
                        }
                    else if oprator == "-"{
                        result = numberondisplay - othernumber
                        label.text = String(result)
                    }
                    else if oprator == "x"{
                        result = numberondisplay * othernumber
                        label.text = String(result)
                    }
                    else if oprator == "÷"{
                        result = numberondisplay / othernumber
                        label.text = String(result)
                    }
                    
                    
                    
                }
            }
        
        }
        
        
        
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

