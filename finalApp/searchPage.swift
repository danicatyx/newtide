//
//  searchPage.swift
//  finalApp
//
//  Created by Anna Kovtunenko on 2021-07-20.
//

import UIKit

class searchPage: UIViewController {

    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var unisexSwitch: UISwitch!
    @IBOutlet weak var ecoFriendlySwitch: UISwitch!
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        let searchQuery = searchBar.text?.trimmingCharacters(in: .whitespaces).lowercased()
        if searchQuery == "pads" && unisexSwitch.isOn && ecoFriendlySwitch.isOn {
            let nextViewController = storyboard?.instantiateViewController(withIdentifier: "padsUE") as! examplePadsSearchPage
                navigationController?.pushViewController(nextViewController, animated:true)
        }
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
