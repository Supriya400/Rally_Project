//
//  main.swift
//  Rally


import Foundation

let gp = GrandPrix()

let totalVehicles = Int(takeInput(title: "Enter total number of vehicles for Test Part 1") ?? "0") ?? 0
gp.add(vehicle: Vehicle.init())
for i in 0..<totalVehicles{
    if let vehicle = vehicleInputs(i){
        gp.add(vehicle: vehicle)
        print("\n")
    }
}


print("Test Part 1:")
print("----------------")
gp.vehicles_in_race.forEach({print($0.descriptionSimple)})
let sortedVehicles = gp.vehicles_in_race.sorted { (v1, v2) -> Bool in
    v1.isBetter(otherVehicle: v2)
}
print("\(sortedVehicles.first?.name ?? "") is better than all")


print("\n")
print("Test Part 2:")
print("----------------")
gp.vehicles_in_race.removeFirst()
gp.vehicles_in_race.forEach({print($0.description)})



print("\n")
print("Test Part 3:")
print("----------------")
gp.vehicles_in_race.forEach({print($0.isTwoWheeled())})


print("\n")
print("Test Part 4:")
print("----------------")
let truns = Int(takeInput(title: "Enter the number of turns for the GrandPrix") ?? "0") ?? 0
gp.run(turn: truns)

