//
//  WeekdaySelector.swift
//  HackArizonaProject
//
//  Created by Cody Joseph Walker on 1/13/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//
import UIKit

@IBDesignable class WeekdaySelector: UIStackView {
    
    //MARK: Properties
    
    private var dayButtons = [UIButton]()
    
    var dayArray = [0, 0, 0, 0, 0, 0, 0]

    
    @IBInspectable var dayButtonSize: CGSize = CGSize(width: 43.0, height: 43.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var dayButtonCount: Int = 7 {
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    
    //MARK: Action
    
    @objc func dayButtonTapped(button: UIButton) {
        
        // if button is selected, button is unselected. else, it is selected
        if button.isSelected {
            button.isSelected = false
            // [remove item from array of days here]
            
            
            
            
            // * * * * * * * * * * * * * * * * * * *
            
        } else {
            button.isSelected = true
            // [add item to array of days here]
            
            
            
            
            // * * * * * * * * * * * * * * * *
            
        }
    }

    
    //MARK: Pirvate Methods
    
    private func setupButtons() {
        
        // Clear any existing buttons
        for button in dayButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        dayButtons.removeAll()
        
        let bundle = Bundle(for: type(of: self))
        
        let mondayButton = UIImage(named: "Monday", in: bundle, compatibleWith: self.traitCollection)
        let tuesdayButton = UIImage(named: "Tues-Thur", in: bundle, compatibleWith: self.traitCollection)
        let wednesdayButton = UIImage(named: "Wednesday", in: bundle, compatibleWith: self.traitCollection)
        let thursdayButton = UIImage(named: "Tues-Thur", in: bundle, compatibleWith: self.traitCollection)
        let fridayButton = UIImage(named: "Friday", in: bundle, compatibleWith: self.traitCollection)
        let saturdayButton = UIImage(named: "Sun-Sat", in: bundle, compatibleWith: self.traitCollection)
        let sundayButton = UIImage(named: "Sun-Sat", in: bundle, compatibleWith: self.traitCollection)
        
        
        let darkMondayButton = UIImage(named: "darkMonday", in: bundle, compatibleWith: self.traitCollection)
        let darkTuesdayButton = UIImage(named: "darkTuesdayThursday", in: bundle, compatibleWith: self.traitCollection)
        let darkWednesdayButton = UIImage(named: "darkWednesday", in: bundle, compatibleWith: self.traitCollection)
        let darkThursdayButton = UIImage(named: "darkTuesdayThursday", in: bundle, compatibleWith: self.traitCollection)
        let darkFridayButton = UIImage(named: "darkFriday", in: bundle, compatibleWith: self.traitCollection)
        let darkSaturdayButton = UIImage(named: "darkSundaySaturday", in: bundle, compatibleWith: self.traitCollection)
        let darkSundayButton = UIImage(named: "darkSundaySaturday", in: bundle, compatibleWith: self.traitCollection)
        
        
        for index in 0..<dayButtonCount {
            // Create button
            let button = UIButton()

            // Set button images
            switch index
            {
            case 0:
                button.setImage(mondayButton, for: .normal)
                button.setImage(darkMondayButton, for: .selected)
            case 1:
                button.setImage(tuesdayButton, for: .normal)
                button.setImage(darkTuesdayButton, for: .selected)
            case 2:
                button.setImage(wednesdayButton, for: .normal)
                button.setImage(darkWednesdayButton, for: .selected)
            case 3:
                button.setImage(thursdayButton, for: .normal)
                button.setImage(darkThursdayButton, for: .selected)
            case 4:
                button.setImage(fridayButton, for: .normal)
                button.setImage(darkFridayButton, for: .selected)
            case 5:
                button.setImage(saturdayButton, for: .normal)
                button.setImage(darkSaturdayButton, for: .selected)
            case 6:
                button.setImage(sundayButton, for: .normal)
                button.setImage(darkSundayButton, for: .selected)
            default:
                break
                
            }
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: dayButtonSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: dayButtonSize.width).isActive = true
            
            // Setup button action
            button.addTarget(self, action: #selector(WeekdaySelector.dayButtonTapped(button:)), for: .touchUpInside)
            
            // Add button to stack
            addArrangedSubview(button)
            
            // Add new button to weekday button array
            dayButtons.append(button)
        }
    }
    

}
