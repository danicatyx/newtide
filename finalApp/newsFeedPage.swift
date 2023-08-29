//
//  newsFeedPage.swift
//  finalApp
//
//  Created by Anna Kovtunenko on 2021-07-21.
//

import UIKit

class newsFeedPage: UIViewController {

    // MARK: - Image Buttons
    
    @IBOutlet weak var heartBeatBillImage: UIImageView! {
        didSet {
            heartBeatBillImage.isUserInteractionEnabled = true
        }
    }
    
    @objc func heartBillTapped(_ sender: UITapGestureRecognizer) {
        let nextViewController = storyboard?.instantiateViewController(withIdentifier: "actions") as! heartbeatActionsVC
            navigationController?.pushViewController(nextViewController, animated:true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizerOne = UITapGestureRecognizer(target: self, action: #selector(heartBillTapped(_:)))
        heartBeatBillImage.addGestureRecognizer(tapGestureRecognizerOne)

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Article Links
    @IBAction func heartBeatArticleTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.texastribune.org/2021/05/18/texas-heartbeat-bill-abortions-law/") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
