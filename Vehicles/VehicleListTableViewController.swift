//
//  MasterViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleListTableViewController: UITableViewController {

    var vehicles:[Vehicle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVehicleArray()
        title = "Vehicles"
    }
    
    // MARK: - Data setup
    func setupVehicleArray() {
        // Clear the array. (Start from scratch)
        vehicles.removeAll(keepCapacity: true)
        
        // Create a car.
        var mustang = Car(brandName: "Ford", modelName: "Mustang", modelYear: 1968, powerSource: "gas engine", isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2)
        
        // Add it to the array
        vehicles.append(mustang)
        
        // Create another car
        var outback = Car(brandName: "Subaru", modelName: "Outback", modelYear: 1999, powerSource: "gas engine", isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5)
        
        // Add it to the array
        vehicles.append(outback)
        
        var prius = Car(brandName: "Toyota", modelName: "Prius", modelYear: 2002, powerSource: "hybrid engine", isConvertible: false, isHatchback: true, hasSunroof: true, numberOfDoors: 4)
        
        vehicles.append(prius)
        
        var harley = Motorcycle(brandName: "Harley-Davidson", modelName: "Softail", modelYear: 1979, engineNoise: "Vrrrrrrrroooooooooooooom!")
        
        // Add it to the array
        vehicles.append(harley)
        
        // Create another motorcycle
        var kawasaki = Motorcycle(brandName: "Kawasaki", modelName: "Ninja", modelYear: 2005, engineNoise: "Neeeeeeeeeeeow!")
        
        // Add it to the array
        vehicles.append(kawasaki)
        
        //Create a truck
        var silverado = Truck(brandName: "Chevrolet", modelName: "Silverado", modelYear: 2011, powerSource: "gas engine", numberOfWheels: 4, cargoCapacityCubicFeet: 53)
        
        // Add it to the array
        vehicles.append(silverado)
        
        // Creat another truck
        var eighteenWheeler = Truck(brandName: "Peterbilt", modelName: "579", modelYear: 2013, powerSource: "diesel engine", numberOfWheels: 18, cargoCapacityCubicFeet: 408)
        
        // Add it to the array
        vehicles.append(eighteenWheeler)
        
        // Sort the array by the model year
        vehicles.sort{ $0.modelYear < $1.modelYear }
    }

  
  // MARK: - Segues
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showDetail" {
      if let indexPath = self.tableView.indexPathForSelectedRow() {
        let vehicle = vehicles[indexPath.row]
        (segue.destinationViewController as! VehicleDetailViewController).detailVehicle = vehicle
      }
    }
  }
  
  // MARK: - Table View
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return vehicles.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    
    let vehicle = vehicles[indexPath.row] as Vehicle
    cell.textLabel?.text = "\(vehicle.vehicleTitle)"
    return cell
  }
}

