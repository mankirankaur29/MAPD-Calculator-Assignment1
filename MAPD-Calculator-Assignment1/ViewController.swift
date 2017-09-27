//
//  ViewController.swift
//
//  MAPD-Calculator-Assignment1
//  Created by Mankiran kaur on 2017-09-21.
//  ID - 300990016
//  Date - 26 september 2017
//  Calculator app contains
//  Calculator App performing mathematical operations Plus,Minus,Multily,Divide and Equals button to perform simple math with integer and floating point numbers.
//  Label is used to store and display the result of the calculations.
//  Also reset button is used to reset the result field that is label back to zero.
//
//  Added Splash Screen 
//
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //------------------variables---------------//
    var numberondisplay:Double = 0;                              //variable for first number//
    var othernumber : Double = 0;                                //variable for second number//
    var oprator : String = ""                                    //variable for storing operations(+ , -, x , ÷)//
    var result : Double = 0;                                     // variable for storing the result of the calculation//
    var decimalflag: Bool = false                                //variable for setting the decimal value//
    
    
    
    @IBOutlet weak var label: UILabel!
    
    //------------------ Action function containing all numbers 0 to 9 ------------------//
    @IBAction func numbers(_ sender: UIButton)
    {
        if result == 0                                              // applying if condition to check if the result is zero then do further operations//
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
                        if decimalflag == false {                       // applying if condition for decimalflag value is false then do further operation//
                            label.text = "0."                           // if there is decimal after zero then turning the flag true //
                            decimalflag = true                          // so that if user again adds decimal, it would not add//
                        }
                    }
                    else    {
                        
                        label.text = String(sender.tag)
                    }
                    
                }
                else    {
                    if(sender.tag == 17)    {
                        if decimalflag == false {                       // applying if condition for decimalflag value is false then do further operation//
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
    
    //----------------- Action function performing mathematical operations ( + , -, x, ÷ , = ) -----------------//
    @IBAction func operations(_ sender: UIButton)
    {
        // 12 = "÷"
        // 13 = "x"
        // 14 = "-"
        // 15 = "+"
        // 16 = "="
        
            if sender.tag == 12 {                       //divide button
                numberondisplay = Double(label.text!)!
                oprator = "÷"
                label.text = "÷"
                decimalflag = false
            }
            else if sender.tag == 13    {               //multily button
                numberondisplay = Double(label.text!)!
                oprator = "x"
                label.text = "x"
                decimalflag = false
            }
            else if sender.tag == 14    {               //minus button
                numberondisplay = Double(label.text!)!
                oprator = "-"
                label.text = "-"
                decimalflag = false
                
            }
            else if sender.tag == 15    {               // plus button
                numberondisplay = Double(label.text!)!
                oprator = "+"
                label.text = "+"
                decimalflag = false
            }
            else if sender.tag == 10    {
                numberondisplay = Double(label.text!)!
                oprator = "%"
                label.text = "%"
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
                // when the user presses equals button then if the numberondisplay(i.e. first number) is not equal to zero and other number(second number) pressed after the operator(any operator i.e + ,_ ,x ,÷) , then the result get stored in a variable result. And then the result is displayed in label field to show the result to the user.//
                
               
                    othernumber = Double(label.text!)!                                  // storing the second number in variable othrnumber//
                    print("numberonDisplay - \(numberondisplay)")
                    print("othernumber- \(othernumber)")
                    
                    //-- performing the Plus operation --//
                    if oprator == "+"{                                                // if operator is "+" that is pressed by the user//
                        result = numberondisplay + othernumber                        // adds the numbers and store answer in result and then displays in label//
                        label.text = String(result)
                    }
                        
                    //-- performing the Subtraction operation --//
                    else if oprator == "-"{                                           // if operator is "-" that is pressed by the user//
                        result = numberondisplay - othernumber                        //subtracts the numbers and store answer in result and then displays in label//
                        label.text = String(result)
                    }
                        
                    //-- performing the MULTILPLY operation --//
                    else if oprator == "x"{                                           // if operator is "x" that is pressed by the user//
                        result = numberondisplay * othernumber                        //multilies the numbers and store answer in result and then displays in label//
                        label.text = String(result)
                    }
                        
                    //-- performing the Divide operation --//
                    else if oprator == "÷"{                                           // if operator is "÷" that is pressed by the user//
                        if othernumber == 0 {                                         // checking of other number is zero then shows error//
                            label.text = String("Error");
                        }
                        else    {
                            result = numberondisplay / othernumber                     // perform the division and stores answer in result and displays in label//
                            label.text = String(result)
                        }
            
                    }
                    numberondisplay = result
                
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

