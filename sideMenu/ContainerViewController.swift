//
//  ContainerViewController.swift
//  sideMenu
//
//  Created by Satish Kumar on 12/04/16.
//  Copyright © 2016 satishkumar. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

  /*Outlets Related to the ViewController */
  //MARK: - Outlets
  @IBOutlet var masterView: UIView!
  @IBOutlet var navView: UIView!
  @IBOutlet var menuView: UIView!
  // Costraint Outlet for leftSwipe
  // 1. Leading Costraint of Master Container
  @IBOutlet var leftSwipe1: NSLayoutConstraint!
  //2. Leading Costraint of Navigation View
  @IBOutlet var leftSwipe2: NSLayoutConstraint!
  //MARK: - View LifeCycle
  /**
   View Didload , Intial View
   */
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  /**
   ViewWillApper called everytime when the viewReloads
   
   - parameter animated: Bool Value which refers to the SuperView
   */
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationController?.navigationBarHidden = true // it hides
  }
  
  /**
   Called when view willDisappers
   
   - parameter animated: bool Parameters refers to the superView
   */
  override  func viewWillDisappear(animated: Bool) {
    super.viewWillDisappear(animated)
    self.navigationController?.navigationBarHidden = false // it unhides
    closeMenu()
  }
  
  
  //MARK: - leftSwipe Action
  /**
   left Swipe for the Menu
   
   - parameter sender: UISwipeGesture
   */
  @IBAction func leftSwipe(sender: UISwipeGestureRecognizer) {

    closeMenu()

  }
  //MARK: - rightSwipe Action
  /**
   rightSwipe for the menu
   
   - parameter sender: UISwipeGesture
   */
  @IBAction func rightSwipe(sender: UISwipeGestureRecognizer) {
  openMenu()
  }
  //MARK: - ReceiveMemoryWarning
  /**
    did Receive Memories Issues
   */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
  //MARK: - MenuButton Aciton
  /**
   Triggred when Menu is Tapped
   
   - parameter sender: AnyObject
   */
  @IBAction func menuTapped(sender: AnyObject) {
    
    if leftSwipe1.constant == 0 {
      openMenu()
    }else{
     closeMenu()
    }
  }
  /**
   Function for Opening Menu
   */
  private func openMenu(){
    leftSwipe1.constant = menuView.frame.size.width
    leftSwipe2.constant = menuView.frame.size.width
    UIView.animateWithDuration(0.3){
      self.view.layoutIfNeeded()
    }
  }
  /**
   Function for closing Menu
   */
  private func closeMenu(){
    
    leftSwipe1.constant = 0
    leftSwipe2.constant = 0
    UIView.animateWithDuration(0.3){
      self.view.layoutIfNeeded()
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
