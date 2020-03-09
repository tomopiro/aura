//
//  Time.swift
//  aura
//
//  Created by tomo on 2020/03/10.
//  Copyright © 2020 tomo. All rights reserved.
//

import Foundation
import Combine

class Time: ObservableObject, Identifiable {
    var hour = 0
    var minute = 0
    var isOn = false {
        didSet {
            print("\(hour):\(minute) is \(isOn)")
            
        }
    }
}
