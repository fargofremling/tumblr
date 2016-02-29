//
//  HomeViewController.swift
//  tumblr
//
//  Created by Fremling, Alicia (Contractor) on 2/28/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeScrollView: UIScrollView!
    @IBOutlet weak var homeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScrollView.contentSize = CGSize (width: 320, height: 530)
        
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
