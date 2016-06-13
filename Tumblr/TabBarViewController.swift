//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Omar Siddiqui on 6/12/16.
//  Copyright © 2016 Omar Siddiqui. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    
    @IBOutlet weak var contentView: UIView!
    
    var main = UIStoryboard(name: "Main", bundle: nil)
    
    var HomeViewController: UIViewController!
    var SearchViewController: UIViewController!
    var AccountViewController: UIViewController!
    var TrendingViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeViewController = main.instantiateViewControllerWithIdentifier("HomeViewController")
        SearchViewController = main.instantiateViewControllerWithIdentifier("SearchViewController")
        AccountViewController = main.instantiateViewControllerWithIdentifier("AccountViewController")
        TrendingViewController = main.instantiateViewControllerWithIdentifier("TrendingViewController")


    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapHomeButton(sender: AnyObject) {
       
        HomeViewController.view.frame = contentView.bounds
        contentView.addSubview(HomeViewController.view)
    }
    
    
    @IBAction func didTapSearchButton(sender: AnyObject) {
        
        
        SearchViewController.view.frame = contentView.bounds
        contentView.addSubview(SearchViewController.view)
    }
    
    @IBAction func didTapAccountButton(sender: AnyObject) {
        
        AccountViewController.view.frame = contentView.bounds
        contentView.addSubview(AccountViewController.view)
    }
    
    @IBAction func didTapTrendingButton(sender: AnyObject) {
        
        TrendingViewController.view.frame = contentView.bounds
        contentView.addSubview(TrendingViewController.view)
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
