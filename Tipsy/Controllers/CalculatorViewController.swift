
import UIKit

class CalculatorViewController: UIViewController {

   
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var tenPcButton: UIButton!
    @IBOutlet weak var zeroPctbutton: UIButton!

    var tip = 0.10
    var people = 2
    var billTotal = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctbutton.isSelected = false
        tenPcButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        tip = (Double(buttonTitle.dropLast())!) / 100
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        people = Int(sender.value)
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        
        if bill != "" {
            billTotal = Double(bill)!
            
            let perPerson = (billTotal*(1+tip))/Double(people)
            
            print(perPerson)
        }
    }
    
}

