//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Omar Siddiqui on 6/13/16.
//  Copyright © 2016 Omar Siddiqui. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        viewWillAppear(true)
        viewDidAppear(true)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTapNevermind(sender: UITapGestureRecognizer) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        textButton.frame.origin.x = 28
        textButton.frame.origin.y = 136 + self.view.frame.height
        
        photoButton.frame.origin.x = 123
        photoButton.frame.origin.y = 136 + self.view.frame.height
        
        quoteButton.frame.origin.x = 217
        quoteButton.frame.origin.y = 136 + self.view.frame.height
        
        linkButton.frame.origin.x = 28
        linkButton.frame.origin.y = 250 + self.view.frame.height
        
        chatButton.frame.origin.x = 123
        chatButton.frame.origin.y = 250 + self.view.frame.height
        
        videoButton.frame.origin.x = 217
        videoButton.frame.origin.y = 250 + self.view.frame.height
        
    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3) {
            self.photoButton.frame.origin.x = 123
            self.photoButton.frame.origin.y = 136
            
        }
        
        UIView.animateWithDuration(0.3){
            self.chatButton.frame.origin.x = 123
            self.chatButton.frame.origin.y = 250
        }
        
        UIView.animateWithDuration(0.4){
            self.textButton.frame.origin.x = 28
            self.textButton.frame.origin.y = 136
        }

        UIView.animateWithDuration(0.4){
            self.quoteButton.frame.origin.x = 217
            self.quoteButton.frame.origin.y = 136
        }
        UIView.animateWithDuration(0.4){
            self.linkButton.frame.origin.x = 28
            self.linkButton.frame.origin.y = 250
        }
        UIView.animateWithDuration(0.5){
            self.videoButton.frame.origin.x = 217
            self.videoButton.frame.origin.y = 250
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
