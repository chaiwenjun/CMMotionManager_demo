//
//  ProximityViewController.swift
//  CMMotionManager_demo
//
//  Created by 张昭 on 17/01/2017.
//  Copyright © 2017 Jmsp. All rights reserved.
//

import UIKit

class ProximityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 开启设备的距离感应(默认是关闭)
        UIDevice.current.isProximityMonitoringEnabled = true
        
        // 添加监听
        NotificationCenter.default.addObserver(self, selector: #selector(proximityStateChanged), name: NSNotification.Name.UIDeviceProximityStateDidChange, object: nil)
    }
    
    // 销毁监听
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIDeviceProximityStateDidChange, object: nil)
    }
    
    // 监听回调
    func proximityStateChanged() {
        switch UIDevice.current.proximityState {
        case true:
            print("物体靠近")
        default:
            print("物体远离")
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
