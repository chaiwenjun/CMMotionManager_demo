//
//  ShakeViewController.swift
//  CMMotionManager_demo
//
//  Created by 张昭 on 17/01/2017.
//  Copyright © 2017 Jmsp. All rights reserved.
//

import UIKit

class ShakeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        super.motionBegan(motion, with: event)
        print("开始摇一摇")
    }
    
    override func motionCancelled(_ motion: UIEventSubtype, with event: UIEvent?) {
        super.motionCancelled(motion, with: event)
        print("取消")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        print("结束摇一摇")
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
