//
//  Truck.swift
//  Vehicles
//
//  Created by Joanna Elaine Joseph on 8/6/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import Foundation

class Truck: Vehicle {
    var cargoCapacityCubicFeet: Int = 0
    
    // Mark: - Supercalass overrides
    override func goForward() -> String {
        return String(format: "%@ Depress gas pedal.", changeGears("Drive"))
    }
    
    override func stopMoving() -> String {
        return String(format: "Depress brake pedal, %@", changeGears("Park"))
    }
    
    // Mark: - Private methods
    private func soundBackupAlarm() -> String {
        return "Beep! Beep! Beep! Beep!"
    }
    
}

