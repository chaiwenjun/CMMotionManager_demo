//
//  StepCountingViewController.swift
//  CMMotionManager_demo
//
//  Created by 张昭 on 17/01/2017.
//  Copyright © 2017 Jmsp. All rights reserved.
//

import UIKit
import CoreMotion
class StepCountingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if !CMPedometer.isStepCountingAvailable() {
            print("计步器不可用")
            return
        }
        
        let pedometer = CMPedometer()
        pedometer.startUpdates(from: Date()) { (data, error) in
            if error != nil {
                print(error!)
                return
            }
            print(data?.numberOfSteps ?? 0)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
