//
//  CoreMotionViewController.swift
//  CMMotionManager_demo
//
//  Created by 张昭 on 17/01/2017.
//  Copyright © 2017 Jmsp. All rights reserved.
//

import UIKit

// 导入CoreMotion框架
import CoreMotion

class CoreMotionViewController: UIViewController {

    let motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 判断加速器是否可用
        if !motionManager.isAccelerometerAvailable {
            print("加速器不可用")
            return
        }
        
        // 采样间隔
        motionManager.accelerometerUpdateInterval = 0.3
        
        // 加速器采样
        motionManager.startAccelerometerUpdates(to: OperationQueue.main) { (accelerometerData, error) in
            if (error != nil) {
                print("加速器采样错误：\(error)")
                return
            }
            print("加速器采样数据：\(accelerometerData)")
        }
        
        // 螺旋仪
        if !motionManager.isGyroAvailable {
            print("螺旋仪不可用")
            return
        }
        motionManager.gyroUpdateInterval = 0.3
        motionManager.startGyroUpdates(to: OperationQueue.main) { (gyroData, error) in
            if (error != nil) {
                print("螺旋仪采样错误：\(error)")
                return
            }
            print("螺旋仪数据：\(gyroData)")
        }
        
        // 磁力计
        if !motionManager.isMagnetometerAvailable {
            print("磁力计不可用")
            return
        }
        motionManager.magnetometerUpdateInterval = 0.3
        motionManager.startMagnetometerUpdates(to: OperationQueue.main) { (magData, error) in
            if error != nil {
                print("磁力计采样错误:\(error)")
                return
            }
            print("磁力计数据：\(magData)")
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
