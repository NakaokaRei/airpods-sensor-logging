//
//  MotionManager.swift
//  airpods-sensor-logging
//
//  Created by rei.nakaoka on 2022/05/27.
//

import Foundation
import CoreMotion

class MotionManager {

    let hmm = CMHeadphoneMotionManager()

    init() {}

    func startStream() {
        hmm.startDeviceMotionUpdates(to: .main) { (motion, error) in
            guard let motion = motion else { return }
            print(motion)
        }
    }
}
