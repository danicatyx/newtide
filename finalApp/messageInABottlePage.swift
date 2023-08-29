//
//  messageInABottlePage.swift
//  finalApp
//
//  Created by Anna Kovtunenko on 2021-07-22.
//

import UIKit

class messageInABottlePage: UIViewController {
    @IBOutlet weak var bottleMessage: UITextView!
    
    @IBAction func sendMessageTapped(_ sender: UIButton) {
        bottleMessage.selectAll(bottleMessage)
        if let range = bottleMessage.selectedTextRange { bottleMessage.replace(range, withText: "")}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottleMessage.font = UIFont(name: "Avenir Next", size: 19)
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
