//
//  GrandPrix.swift
//  Rally


import Foundation

class GrandPrix : Rally{
    
    func add(vehicle: Vehicle){
        vehicles_in_race.append(vehicle)
    }
    
    func run(turn: Int){
        var finalVehicles = [Vehicle]()
        
        guard super.check() == true else {
            self.delegate?.RallyDidEnd(value: "Not Grand Prix")
            print("Not Grand Prix")
            return
        }
        
        for vehicle in vehicles_in_race{
            vehicle.fuel = vehicle.fuel - turn
        }
        
        finalVehicles = vehicles_in_race.filter({$0.fuel > 0})

        if finalVehicles.isEmpty{
            self.delegate?.RallyDidEnd(value: "All the vehicles failed to finish the rally")
            print("All the vehicles failed to finish the rally")
        } else{
            let sortedPerformance = finalVehicles.sorted { (v1, v2) -> Bool in
                v1.performance() > v2.performance()
            }
            let winner = sortedPerformance.first!
            self.delegate?.RallyDidEnd(value: "The winner of the Grand Prix is: \(winner.description)")
            print("The winner of the Grand Prix is: \(winner.description)")
        }   
    }
    
}

