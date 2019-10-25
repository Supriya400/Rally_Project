//
//  Moto.swift
//  Rally


import Foundation


class Moto : Vehicle{
    
    var sidecar : Bool = false
    
    init(name : String, speedMax : Double, weight : Int, fuel : Int, sidecar : Bool = false ) {
        super.init(name : name, speedMax : speedMax, weight : weight, fuel : fuel)
        self.sidecar = sidecar
        
    }
    
    override var getInfo: String{
        get{
            return "Name: \(name)\nSpeed max: \(speedMax) km/h\nWeight: \(weight) kg\n"
        }
    }
    
    
    override var description : String{
        if sidecar == true {
            return  "\(name) ->  Speed max = \(speedMax) km/h , weight = \(weight) kg ,  with sidecar"
        }
        else {
            return  "\(name) ->  Speed max = \(speedMax) km/h , weight = \(weight) kg"
        }
    }
    
    override func isTwoWheeled() -> Bool {
        if sidecar == true {
            return false
        } else{
            return true
        }
    }
    
  
    
}


