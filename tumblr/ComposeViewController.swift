//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Fremling, Alicia (Contractor) on 2/28/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var neverMindButton: UIButton!
    
    var textButtonInitial: CGPoint!
    var photoButtonInitial: CGPoint!
    var quoteButtonInitial: CGPoint!
    var linkButtonInitial: CGPoint!
    var chatButtonInitial: CGPoint!
    var videoButtonInitial: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textButtonInitial = textButton.center
        photoButtonInitial = photoButton.center
        quoteButtonInitial = quoteButton.center
        linkButtonInitial = linkButton.center
        chatButtonInitial = chatButton.center
        videoButtonInitial = videoButton.center
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        textButton.center.y += 400
        photoButton.center.y += 400
        quoteButton.center.y += 400
        linkButton.center.y += 400
        chatButton.center.y += 400
        videoButton.center.y += 400
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.2) { () -> Void in
            self.textButton.center.y = self.textButtonInitial.y
        }
        
        UIView.animateWithDuration(0.3) { () -> Void in
            self.photoButton.center.y = self.photoButtonInitial.y
        }
        UIView.animateWithDuration(0.1) { () -> Void in
            self.quoteButton.center.y = self.quoteButtonInitial.y
        }
        
        UIView.animateWithDuration(0.4) { () -> Void in
            self.linkButton.center.y = self.linkButtonInitial.y
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.chatButton.center.y = self.chatButtonInitial.y
        }
        UIView.animateWithDuration(0.2) { () -> Void in
            self.videoButton.center.y = self.videoButtonInitial.y
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNeverMind(sender: AnyObject) {
        UIView.animateWithDuration(0.2) { () -> Void in
            self.textButton.center.y = self.textButtonInitial.y - 400
        }
        
        UIView.animateWithDuration(0.3) { () -> Void in
            self.photoButton.center.y = self.photoButtonInitial.y - 400
        }
        
        UIView.animateWithDuration(0.1) { () -> Void in
            self.quoteButton.center.y = self.quoteButtonInitial.y - 400
        }
        
        UIView.animateWithDuration(0.4) { () -> Void in
            self.linkButton.center.y = self.linkButtonInitial.y - 400
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.chatButton.center.y = self.chatButtonInitial.y - 400
        }
        UIView.animateWithDuration(0.2) { () -> Void in
            self.videoButton.center.y = self.videoButtonInitial.y - 400
        }
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
