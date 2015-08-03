//
//  Car.swift
//  Vehicles
//
//  Created by Joanna Elaine Joseph on 7/28/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import Foundation

class Car: Vehicle {
    
    var isConvertible:Bool = false
    var isHatchback:Bool = false
    var hasSunroof:Bool = false
    var numberOfDoors:Int = 0
    
    override var vehicleDetails: String {
        //Get basic details from superclass
    }
    
    override init() {
        super.init()
        numberOfWheels = 4
    }
    
    //MARK: - Private method implementations
    private func start() -> String {
        return String(format: "Start power source %@.", powerSource)
    }
    
    //MARK: - Superclass Overrides
    override func goForward() -> String {
        return String(format: "%@ %@ Then depress gas pedal.", start(), changeGears("Forward"))
    }
    
    override func goBackward() -> String {
        return String(format: "%@ %@ Check your rear view mirror. Then depress gas pedal.", start(), changeGears("Reverse"))
    }
    
    override func stopMoving() -> String {
        return String(format: "Depress brake pedal. %@", changeGears("Park"))
    }
    
    override func makeNoise() -> String {
        return "Beep beep!"
    }
    
    //TODO: Continue here...
}
