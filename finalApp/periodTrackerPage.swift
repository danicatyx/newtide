//
//  periodTrackerPage.swift
//  finalApp
//
//  Created by Anna Kovtunenko on 2021-07-23.
//

import UIKit

class periodTrackerPage: UIViewController {
    @IBOutlet weak var symptomsField: UITextField!
    @IBOutlet weak var flowSlider: UISlider!
    @IBOutlet weak var energySlider: UISlider!
    
    @IBAction func periodLogSaveTapped(_ sender: UIButton) {
        symptomsField.text?.removeAll()
        flowSlider.value = 0.5
        energySlider.value = 0.5
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
