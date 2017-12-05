//
//  skillLevelViewController.swift
//  NineBallTracker
//
//  Created by skwong on 12/4/17.
//  Copyright © 2017 skwong. All rights reserved.
//

import UIKit

class skillLevelViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
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
    
    
    @IBOutlet weak var p1Label: UILabel!
    @IBOutlet weak var p2Label: UILabel!
    
    
    @IBOutlet weak var sl1Picker: UIPickerView!
    @IBOutlet weak var sl2Picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }

   
    
    @IBAction func startBtnPressed(_ sender: UIButton)
    {
        
        performSegue(withIdentifier: "secondVC", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC"
        {
            let destinationVC = segue.destination as! ViewController
            
            destinationVC.p1SkillLevel = sl1
            destinationVC.p2SkillLevel = sl2
            
            
            
            
        }
    }

}
