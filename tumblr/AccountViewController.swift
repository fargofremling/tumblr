//
//  AccountViewController.swift
//  tumblr
//
//  Created by Fremling, Alicia (Contractor) on 2/28/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var accountScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountScrollView.contentSize = CGSize (width: 320, height: 529)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
