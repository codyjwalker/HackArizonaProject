//
//  MakeCall.swift
//  HackArizonaProject
//
//  Created by ual-laptop on 1/13/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class MakeCall: UIViewController {

    @IBAction func makeCall(_ sender: Any) {
        guard let number = URL(string: "tel://" + "19282779224") else { return }
        UIApplication.shared.open(number)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
