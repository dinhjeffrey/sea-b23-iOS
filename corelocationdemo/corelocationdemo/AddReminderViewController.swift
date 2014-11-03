//
//  AddReminderViewController.swift
//  corelocationdemo
//
//  Created by Bradley Johnson on 11/3/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit
import MapKit

class AddReminderViewController: UIViewController {
    
    var locationManager : CLLocationManager!
    var selectedAnnotation : MKAnnotation!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let regionSet = self.locationManager.monitoredRegions
        let regions = regionSet.allObjects
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressAddReminderButton(sender: AnyObject) {
        
        var geoRegion = CLCircularRegion(center: selectedAnnotation.coordinate, radius: 100.0, identifier: "TestRegion")
        self.locationManager.startMonitoringForRegion(geoRegion)
        
        self.dismissViewControllerAnimated(true, completion: nil)
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
