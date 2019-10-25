//
//  Rally.swift
//  Rally


import Foundation

protocol RallyDelegate: class {
    func RallyDidEnd(value: String)
}

class Rally: NSObject{

    var vehicles_in_race = [Vehicle]()
    
    weak var delegate: RallyDelegate?
    
    func check()->Bool{
        var flag = true
        if self.vehicles_in_race.contains(where: {$0.isTwoWheeled() == false}) && self.vehicles_in_race.contains(where: {$0.isTwoWheeled() == true}){
            flag = false
        } else{
            flag = true
        }
        return flag
    }
    
}

