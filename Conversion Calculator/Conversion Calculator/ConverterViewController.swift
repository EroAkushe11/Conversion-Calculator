//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Ero Akushe on 4/14/18.
//  Copyright © 2018 Oghenenyerhovwo Akushe. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

   
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    @IBAction func converterButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "", message: "Choose Converter", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "fahrenheit to celsius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
           self.inputDisplay.text = "°F"
            self.outputDisplay.text = "°C"
        }))
        
        alert.addAction(UIAlertAction(title: "celsius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = "°C"
            self.outputDisplay.text = "°F"
        }))
        
        alert.addAction(UIAlertAction(title: "miles to kilometer", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = "mi"
            self.outputDisplay.text = "km"
        }))
        
        alert.addAction(UIAlertAction(title: "kilometer to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = "km"
            self.outputDisplay.text = "mi"
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
       let converterArray: [Converter] = [Converter(labels: "fahrenheit to celsius", inputs: "°F", outputs: "°C"), Converter(labels: "celsius to fahrenheit", inputs: "°C", outputs: "°F"), Converter(labels: "miles to kilometer", inputs: "mi", outputs: "km"), Converter(labels: "kilometer to miles", inputs: "mi", outputs: "km")]
        
        inputDisplay.text = converterArray[0].inputs
        outputDisplay.text = converterArray[0].outputs

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
