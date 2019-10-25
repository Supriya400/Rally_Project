//
//  Vehicle.swift
//  Rally


import Foundation

protocol VehicleDelegate: class{
    func vehicleInformationGenerated(_ value: String)
}

class Vehicle: CustomStringConvertible {
    
    var name : String = ""
    var speedMax : Double = 0.0
    var weight : Int = 0  //In KG
    var fuel : Int = 0
    
    var getInfo: String{
        get{
            return "Name: \(name)\nSpeed max: \(speedMax) km/h\nWeight: \(weight) kg\n"
        }
    }
    
    
    weak var delegate: VehicleDelegate?
    
    init() {
        name = "Anonym"
        speedMax = 130.0
        weight = 1000
        fuel = 0
    }
    
    init(name : String, speedMax : Double, weight : Int, fuel : Int) {
        self.name = name
        self.speedMax = speedMax
        self.weight = weight
        self.fuel = fuel
        self.delegate?.vehicleInformationGenerated(self.description)
    }
    
    var description : String {
        return "\(name) ->  Speed max = \(speedMax) km/h , weight = \(weight) kg"

    }
    
    var descriptionSimple : String {
        return "\(name) ->  Speed max = \(speedMax) km/h , weight = \(weight) kg"
    }
    
    
    
    
    func performance() -> Double{
        let ratio : Double = (speedMax / Double(weight))
        return ratio
    }
    
    func isBetter(otherVehicle:Vehicle)-> Bool{
        if self.performance() > otherVehicle.performance(){
            return true
        }
        else{
            return false
        }
    }
    
    func isTwoWheeled()->Bool{
        return false
    }
    
 
    
}
