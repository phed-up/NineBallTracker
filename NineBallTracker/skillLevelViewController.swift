//
//  skillLevelViewController.swift
//  NineBallTracker
//
//  Created by skwong on 12/4/17.
//  Copyright © 2017 skwong. All rights reserved.
//

import UIKit

class skillLevelViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return (true)
        
    }
    



    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        var number : Int = 0
        if pickerView == sl1Picker
        {
            number = skillLevel1Array.count
            
        }
        else if pickerView == sl2Picker
        {
            number = skillLevel2Array.count
        }
      return number
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        var rowNumber : String = ""
        
        if pickerView == sl1Picker
        {
            sl1 = skillLevel1Array[row]
            rowNumber = sl1
            
        }
        else if pickerView == sl2Picker
        {
            sl2 = skillLevel2Array[row]
            rowNumber = sl2
            
        }
        return rowNumber
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        p1Label.text = sl1
        p2Label.text = sl2
        
        
    }
    
    
    let skillLevel1Array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var sl1 = ""
    
    let skillLevel2Array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var sl2 = ""
    
    var player1SkillLevel = ""
    var player2SkillLevel = ""
    var nameP1 = ""
    var nameP2 = ""
    
    @IBOutlet weak var p1Label: UILabel!
    @IBOutlet weak var p2Label: UILabel!
    
    
    @IBOutlet weak var sl1Picker: UIPickerView!
    @IBOutlet weak var sl2Picker: UIPickerView!
    
    @IBOutlet weak var player1Name: UITextField!
    @IBOutlet weak var player2Name: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        errorLabel.isHidden = true
        
    }

   
    
    @IBAction func startBtnPressed(_ sender: UIButton)
    {
        
        if p1Label.text == "0" && p2Label.text != "0"
        {
            errorLabel.isHidden = false
            errorLabel.text = "Please select a skill level for Player 1"
        }
        else if p2Label.text == "0" && p1Label.text != "0"
        {
            errorLabel.isHidden = false
            errorLabel.text = "Please select a skill level for Player 2"
        }
        else if p1Label.text == "0" && p2Label.text == "0"
        {
            errorLabel.isHidden = false
            errorLabel.text = "Please select a skill level for Player 1 and Player 2"
        }
        else
        {
        performSegue(withIdentifier: "secondVC", sender: self)
        }

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC"
        {
            let destinationVC = segue.destination as! ViewController
            
            destinationVC.p1SkillLevel = sl1
            destinationVC.p2SkillLevel = sl2
            
            destinationVC.p1Name = player1Name.text!
            destinationVC.p2Name = player2Name.text!
            
            
            
            
        }
    
    }
    
    

}
