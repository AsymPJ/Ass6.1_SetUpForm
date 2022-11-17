//
//  ViewController.swift
//  Ass6.1_SetUpForm
//
//  Created by user228139 on 11/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nametext: UITextField!
    
    @IBOutlet weak var lastNameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var phoneText: UITextField!
    
    @IBOutlet weak var addressText: UITextField!
    
    @IBOutlet weak var addressLine1: UITextField!
    
    @IBOutlet weak var cityText: UITextField!
    
    @IBOutlet weak var stateText: UITextField!
    
    @IBOutlet weak var zipText: UITextField!
    
    @IBOutlet weak var buttonTerms: UIButton!
    
    @IBOutlet weak var firstOpt: UIButton!
    
    @IBOutlet weak var secondOpt: UIButton!
    
    @IBOutlet weak var thirdOpt: UIButton!
    
    @IBOutlet weak var forthOpt: UIButton!
    
    let radioController: RadioButton = RadioButton()
    
    var arrayTextFields = [UITextField]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonTerms.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        buttonTerms.setImage(UIImage(named:"Checkmark"), for: .selected)
        radioController.buttonsArray = [firstOpt,secondOpt,thirdOpt,forthOpt]
        arrayTextFields = [nametext,lastNameText,emailText,phoneText,addressText,addressLine1,cityText,stateText,zipText]
    }

    @IBAction func buttonFirstPress(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @IBAction func buttonSecPress(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @IBAction func buttonThirdPress(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @IBAction func buttonForthPress(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @IBAction func submitPressed(_ sender: Any) {
        let continueForm = checkEmpty()
        if continueForm {
            let alertgood = UIAlertController(title: "Form Completed", message: "Data has been send successfully", preferredStyle: .alert)
            alertgood.addAction(UIAlertAction(title:"Continue", style: .default))
            self.present(alertgood, animated: true)
            
        }
        
    }
    
    @IBAction func agreePress(_ sender: Any) {
        self.buttonTerms.isSelected = true
    }
    
    func checkEmpty () -> Bool {
        for i in arrayTextFields{
            if !i.hasText{
                let alert = UIAlertController(title: "Form incompleted", message: "Please fill all text out", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title:"OK", style: .default))
                self.present(alert, animated: true)
                return false
            }
            
        }
        return true
    }
    
}

