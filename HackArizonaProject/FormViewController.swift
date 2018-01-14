//
//  FormViewController.swift
//  HackArizonaProject
//
//  Created by Kaleb Markos on 1/12/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    
    
    
    // the static variables ! ! !
    static var theName = "Vitamin C"
    static var theNotes = "take twice a day"
    static var arrayOfDays = [String]()
    static var numOfPills = 0
    static var theTime = "10:00"
    
    
    @IBOutlet weak var weekdaySelector: WeekdaySelector!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var notesTextField: UITextView!
    
    
    // * * * * * * * * * * * * * * * * * * * * * *
    
    // the current pill count label and slider
    @IBOutlet weak var pillCountLabel: UILabel!
    @IBOutlet weak var pillCountSlider: UISlider!
    
    // days of the week labels
    @IBOutlet weak var mondayText: UIButton!
    @IBOutlet weak var tuesdayText: UIButton!
    @IBOutlet weak var wednesdayText: UIButton!
    @IBOutlet weak var thursdayText: UIButton!
    @IBOutlet weak var fridayText: UIButton!
    @IBOutlet weak var saturdayText: UIButton!
    @IBOutlet weak var sundayText: UIButton!
    
    // counters for how many times each day was pressed
    var monCount = 0
    var tuesCount = 0
    var wedCount = 0
    var thurCount = 0
    var friCount = 0
    var satCount = 0
    var sunCount = 0
    
    @IBOutlet weak var thePicker: UIDatePicker!
    
    
    // action for the picker
    @IBAction func pickerAction(_ sender: UIDatePicker) {
        // formatter
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        // change time to the time
        FormViewController.theTime = formatter.string(from: thePicker.date)
        
    }
    
    
    
    // the submit button
    @IBAction func submitButton(_ sender: UIButton) {
        
        // if a day of the week is selected,
        // add it to the static array of days
        if (monCount % 2 == 1) {
            FormViewController.arrayOfDays.append("Monday")
        }
        if (tuesCount % 2 == 1) {
            FormViewController.arrayOfDays.append("Tuesday")
        }
        if (wedCount % 2 == 1) {
            FormViewController.arrayOfDays.append("Wednesday")
        }
        if (thurCount % 2 == 1) {
            FormViewController.arrayOfDays.append("Thursday")
        }
        if (friCount % 2 == 1) {
            FormViewController.arrayOfDays.append("Friday")
        }
        if (satCount % 2 == 1) {
            FormViewController.arrayOfDays.append("Saturday")
        }
        if (sunCount % 2 == 1) {
            FormViewController.arrayOfDays.append("Sunday")
        }
        
        // change the name and notes to the label
        FormViewController.theName = nameTextField.text!
        FormViewController.theNotes = notesTextField.text!
        FormViewController.numOfPills = Int(pillCountLabel.text!)!
        
        
        // DEBUG
        print("the name is: ")
        print(FormViewController.theName)
        print("the notes is: ")
        print(FormViewController.theNotes)
        print("numOfPills is: ")
        print(FormViewController.numOfPills)
        print("theTime is: ")
        print(FormViewController.theTime)
        print("the days are: ")
        print(FormViewController.arrayOfDays)
        
        // * * * CREATE cell object with all 5 info. and add it to table view controller
        // * * * and array of cell objects * * *
        
        guard let thePrescription = Prescription(name: FormViewController.theName, notes: FormViewController.theNotes, pillCount: FormViewController.numOfPills, dayArray: [1, 0, 1, 0, 1, 0, 1], time: FormViewController.theTime)  else {
            fatalError("Unable to instantiate prescription1")
        }
        
        PrescriptionTableViewController.prescriptions += [thePrescription]
        
        
        
        
        
        
        
        
        
        
        
        // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
        
    }
    
    
    
    
    
    // days of the week action
    @IBAction func monPressed(_ sender: UIButton) {
        
        if (monCount % 2 == 0) {
            mondayText.setTitleColor(UIColor(red:0.41, green:0.33, blue:0.34, alpha:1.0), for: .normal)
        } else {
            mondayText.setTitleColor(UIColor(red:0.74, green:0.59, blue:0.60, alpha:1.0), for: .normal)
        }
        
        monCount  += 1
        
        
    }
    
    @IBAction func tuesPressed(_ sender: UIButton) {
        
        if tuesCount % 2 == 0 {
            tuesdayText.setTitleColor(UIColor(red:0.41, green:0.33, blue:0.34, alpha:1.0), for: .normal)
        } else {
            tuesdayText.setTitleColor(UIColor(red:0.74, green:0.59, blue:0.60, alpha:1.0), for: .normal)
        }
        
        tuesCount += 1
    }
    
    @IBAction func wedPressed(_ sender: UIButton) {
        
        if wedCount % 2 == 0 {
            wednesdayText.setTitleColor(UIColor(red:0.41, green:0.33, blue:0.34, alpha:1.0), for: .normal)
        } else {
            wednesdayText.setTitleColor(UIColor(red:0.74, green:0.59, blue:0.60, alpha:1.0), for: .normal)
        }
        
        wedCount += 1
    }
    
    @IBAction func thurPressed(_ sender: UIButton) {
        
        if thurCount % 2 == 0 {
            thursdayText.setTitleColor(UIColor(red:0.41, green:0.33, blue:0.34, alpha:1.0), for: .normal)
        } else {
            thursdayText.setTitleColor(UIColor(red:0.74, green:0.59, blue:0.60, alpha:1.0), for: .normal)
        }
        
        thurCount += 1
        
    }
    
    @IBAction func friPressed(_ sender: UIButton) {
        
        if friCount % 2 == 0 {
            fridayText.setTitleColor(UIColor(red:0.41, green:0.33, blue:0.34, alpha:1.0), for: .normal)
        } else {
            fridayText.setTitleColor(UIColor(red:0.74, green:0.59, blue:0.60, alpha:1.0), for: .normal)
        }
        
        friCount += 1
        
    }
    
    @IBAction func satPressed(_ sender: UIButton) {
        
        if satCount % 2 == 0 {
            saturdayText.setTitleColor(UIColor(red:0.41, green:0.33, blue:0.34, alpha:1.0), for: .normal)
        } else {
            saturdayText.setTitleColor(UIColor(red:0.74, green:0.59, blue:0.60, alpha:1.0), for: .normal)
        }
        
        satCount += 1
        
    }
    
    @IBAction func sunPressed(_ sender: UIButton) {
        
        if sunCount % 2 == 0 {
            sundayText.setTitleColor(UIColor(red:0.41, green:0.33, blue:0.34, alpha:1.0), for: .normal)
        } else {
            sundayText.setTitleColor(UIColor(red:0.74, green:0.59, blue:0.60, alpha:1.0), for: .normal)
        }
        
        sunCount += 1
        
    }
    
    
    
    
    
    // the slider as an action
    @IBAction func sliderAction(_ sender: UISlider) {
        pillCountLabel.text = String(Int(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    // Button to exit view Controller
    @IBAction func exitButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
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
