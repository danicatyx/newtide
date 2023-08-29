//
//  heartbeatActionsVC.swift
//  finalApp
//
//  Created by Anna Kovtunenko on 2021-07-21.
//

import UIKit

class heartbeatActionsVC: UIViewController {

    @IBOutlet weak var countrySegementControl: UISegmentedControl!
    
    @IBOutlet weak var actionUA: UIButton!
    @IBOutlet weak var actionUB: UIButton!
    @IBOutlet weak var actionCA: UIButton!
    @IBOutlet weak var actionsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionUA.isHidden = true
        actionUB.isHidden = true
        actionCA.isHidden = true
        actionsLabel.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hbbChangeOrg(_ sender: UIButton) {
        if let url = URL(string: "https://www.weareplannedparenthoodaction.org/onlineactions/VHZ1uNAfF0Ov7Txim8yiGQ2?_ga=2.264336783.187908572.1626898869-1626480262.1626898869") {UIApplication.shared.open(url, options: [:], completionHandler: nil)}
    }
    
    @IBAction func actionUATapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.weareplannedparenthoodaction.org/onlineactions/KDlEsm4r6EizP0SdpEj8Fg2") {UIApplication.shared.open(url, options: [:], completionHandler: nil)}
    }
    
    @IBAction func actionUBTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.change.org/p/greg-abbott-veto-the-texas-heartbeat-bill/sign?original_footer_petition_id=13032644&algorithm=promoted&source_location=petition_footer&grid_position=15&pt=AVBldGl0aW9uAOqitgEAAAAAYJWIMQu9FjViOWYzMTg1Nw%3D%3D") {UIApplication.shared.open(url, options: [:], completionHandler: nil)}
    }
    
    @IBAction func actionCATapped(_ sender: UIButton) {
        if let url = URL(string: "https://petitions.ourcommons.ca/en/Petition/Details?Petition=e-2977") {UIApplication.shared.open(url, options: [:], completionHandler: nil)}
    }
    
    @IBAction func didChangeCountrySegement(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            actionsLabel.isHidden = false
            actionCA.isHidden = false
            actionUA.isHidden = true
            actionUB.isHidden = true
        }
        else if sender.selectedSegmentIndex == 2 {
            actionsLabel.isHidden = false
            actionUA.isHidden = false
            actionUB.isHidden = false
            actionCA.isHidden = true
        }
        else {
            actionsLabel.isHidden = true
            actionUA.isHidden = true
            actionUB.isHidden = true
            actionCA.isHidden = true
        }
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
