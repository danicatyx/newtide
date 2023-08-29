//
//  examplePadsSearchPage.swift
//  finalApp
//
//  Created by Anna Kovtunenko on 2021-07-21.
//

import UIKit

class examplePadsSearchPage: UIViewController {

    @IBAction func lolaPadLink(_ sender: UIButton) {
        if let url = URL(string: "https://mylola.com/products/pads?utm_source=Rakuten&utm_medium=affiliate&utm_campaign=Skimlinks.com&ranMID=46373&ranEAID=TnL5HPStwNw&ranSiteID=TnL5HPStwNw-RZBttBmrTUHdj5QCZlN5yw") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    }
    
    @IBAction func rubyLoveLink(_ sender: UIButton) {
        if let url = URL(string: "https://www.rubylove.com/product-page/double-sided-pads-3-pack") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
