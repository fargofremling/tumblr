//
//  ActivityViewController.swift
//  tumblr
//
//  Created by Fremling, Alicia (Contractor) on 2/28/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet weak var trendingScrollView: UIScrollView!
    @IBOutlet weak var trendingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trendingScrollView.contentSize = trendingImageView.image!.size

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
