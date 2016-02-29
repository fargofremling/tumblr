//
//  TabBarController.swift
//  tumblr
//
//  Created by Fremling, Alicia (Contractor) on 2/28/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class TabBarController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var activityViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        activityViewController = storyboard.instantiateViewControllerWithIdentifier("ActivityViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, activityViewController]
        
        buttons[selectedIndex].selected = true
        didPressButton(buttons[selectedIndex])
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressButton(sender: UIButton) {
        //tracks previous button
        let previousIndex = selectedIndex
        
        //sets tag value of each button tapped
        selectedIndex = sender.tag
        
        //access previous button and set to non-selected state
        buttons[previousIndex].selected = false
        
        //access previous VC from array
        let previousVC = viewControllers[previousIndex]
        
        //remove the previous VC
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //access currect selected button
        sender.selected = true
        
        //access current VC
        let vc = viewControllers[selectedIndex]
        
        //add new VC
        addChildViewController(vc)
        
        //set size of child viiew
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        //
        vc.didMoveToParentViewController(self)
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
