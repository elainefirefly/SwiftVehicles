//
//  UIAlertController+Convenience.swift
//  Vehicles
//
//  Created by Joanna Elaine Joseph on 8/11/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import UIKit

extension UIAlertController {
    class func alertControllerWithTitle(title:String, message:String) -> UIAlertController {
        let controller = UIAlertController(title:title, message:message, preferredStyle: .Alert)
        controller.addAction(UIAlertAction(title: "OK", style: .Default, handler:nil))
        return controller
    }
}
