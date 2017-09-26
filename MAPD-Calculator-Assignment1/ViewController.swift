//
//  ViewController.swift
//  MAPD-Calculator-Assignment1
//
//  Created by Mankiran kaur on 2017-09-21.
//  ID - 300990016
//  Date - 26 september 2017
//  Calculator app contains
//  Calculator App performing mathematical operations Plus,Minus,Multily,Divide and Equals button to perform simple math with integer and floating point numbers.
//  Label is used to store and display the result of the calculations.
//  Also reset button is used to reset the result field that is label back to zero.
//
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberondisplay:Double = 0;
    var othernumber : Double = 0;
    var oprator : String = ""
    var result : Double = 0;
    var decimalflag: Bool = false
    
    
    @IBOutlet weak var label: UILabel!
    
    //function containing all numbers 0 to 9 //----
    @IBAction func numbers(_ sender: UIButton)
    {
        if result == 0
        {
            if label.text == "+"    {
                label.text = String(sender.tag)
            }
            else if label.text == "-"   {
                label.text = String(sender.tag)
            }
            else if label.text == "x"   {
                label.text = String(sender.tag)
            }
            else if label.text == "÷"   {
                label.text = String(sender.tag)
            }
                
            else {                                                      //checking the decimal after zero//
                if label.text == String(0)  {
                    if sender.tag == 17{
                        if decimalflag == false {
                            label.text = "0."
                            decimalflag = true                          // if there is decimal after zero then turning the flag true //
                        }                                               // so that if user again adds decimal, it would not add//
                    }
                    else    {
                        
                        label.text = String(sender.tag)
                    }
                    
                }
                else    {
                    if(sender.tag == 17)    {
                        if decimalflag == false {
                            label.text = label.text! + "."              // adding decimal after number and storing in label //
                            decimalflag = true                          // after adding decimal, setting the flag value true so that decimal cannot be added again//
                        }
                    }
                    else    {
                        label.text = label.text! + String(sender.tag)
                    }
                    
                }
            }
            
        }
        else  {
            //label.text = ""
            //result = 0;
            //numberondisplay = 0;
            //othernumber = 0;
            //oprator = ""
            
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
                if label.text == String(0)  {
                    if sender.tag == 17 {
                        label.text = "0."
                        decimalflag = true
                    }
                    else    {
                        label.text = String(sender.tag)
                    }
                }
                else    {
                    if(sender.tag == 17)    {
                        if decimalflag == false {
                            label.text = label.text! + "."
                            decimalflag = true
                        }
                    }
                    else    {
                        label.text = label.text! + String(sender.tag)
                    }
                }
                
            }
        }
    }
    
    // function performing all operations  //
    @IBAction func operations(_ sender: UIButton)
    {
        
            if sender.tag == 12 {                       //divide button
                numberondisplay = Double(label.text!)!  // storing the first number in the variable numberondisplay//
                oprator = "÷"
                label.text = "÷"
                decimalflag = false
            }
            else if sender.tag == 13    {               //multily button
                numberondisplay = Double(label.text!)!  // storing the first number in the variable numberondisplay//
                oprator = "x"
                label.text = "x"
                decimalflag = false
            }
            else if sender.tag == 14    {               //minus button
                numberondisplay = Double(label.text!)!  // storing the first number in the variable numberondisplay//
                oprator = "-"
                label.text = "-"
                decimalflag = false
                
            }
            else if sender.tag == 15    {               // plus button
                numberondisplay = Double(label.text!)!  // storing the first number in the variable numberondisplay//
                oprator = "+"
                label.text = "+"
                decimalflag = false
            }
            else if sender.tag == 11    {               //clear button
                numberondisplay = 0                     // when the user clicks on the equals too button then the result showing in label sets to zero//
                othernumber = 0
                oprator = ""
                label.text = "0"
                decimalflag = false                     //setting the decimal flag false again//
            }
            else if sender.tag == 16                    // Equals operation
            {
                // when the user presses equals button then if the numberondisplay(i.e. first number) is not equal to zero and other number(second number) pressed after the operator(any operation i.e + ,_ ,x ,÷) , then the result get stored in a variable result. And then the result is stored in label field to show the result to the user.//
                
                if numberondisplay != 0
                {
                    othernumber = Double(label.text!)!                                  // storing the second number in variable othrnumber//
                    print("numberonDisplay - \(numberondisplay)")
                    print("othernumber- \(othernumber)")
                    
                     // performing the plus operation//
                    if oprator == "+"{                                                // if operator is "+" that is pressed by the user//
                        result = numberondisplay + othernumber                        // then adds the first and second number and storing answer in variable result//
                        label.text = String(result)                                   // then storing and displaying the result in the label field//
                        
                    }
                        // performing the Subtraction operation //
                    else if oprator == "-"{                                           // if operator is "-" that is pressed by the user//
                        result = numberondisplay - othernumber                        // then subtracts second number from first number and store answer in variable result
                        label.text = String(result)                                   // then storing and displaying the result in the label field//
                    }
                        
                        // performing the MULTILPLY operation//
                    else if oprator == "x"{                                           // if operator is "x" that is pressed by the user//
                        result = numberondisplay * othernumber                        // then multilies the first and second number and stores answer in variable result//
                        label.text = String(result)                                   // then storing and displaying the result in the label field//
                    }
                        // performing the divide operation //
                    else if oprator == "÷"{                                           // if operator is "÷" that is pressed by the user//
                        result = numberondisplay / othernumber                        // divides the first number by second number and stores answer in variable result//
                        label.text = String(result)                                   // then storing and displaying the result in the label field//
                    }
                    numberondisplay = result
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

