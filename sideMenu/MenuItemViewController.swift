//
//  MenuItemViewController.swift
//  sideMenu
//
//  Created by Satish Kumar on 13/04/16.
//  Copyright © 2016 satishkumar. All rights reserved.
//

import UIKit

class MenuItemViewController: UIViewController {
 
  
  var menuLab = String()
  @IBOutlet var menuLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      menuLabel.text = menuLab
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
