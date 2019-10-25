//
//  Car.swift
//  Rally


import Foundation

class Car: Vehicle {
    
    var carType = "Race Car"
    
    override var getInfo: String{
        get{
            return "Name: \(name)\nSpeed max: \(speedMax) km/h\nWeight: \(weight) kg\n"
        }
    }
    
    init(name : String, speedMax : Double, weight : Int, fuel : Int, carType: String) {
        self.carType = carType
        super.init(name : name, speedMax : speedMax, weight : weight,  fuel : fuel)
    }
    
    override var description : String{
        return "\(name) ->  Speed max = \(speedMax) km/h , weight = \(weight) kg ,car category = \(carType)"
    }

    
    
}
