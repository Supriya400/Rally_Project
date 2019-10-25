//
//  Helper.swift
//  Rally


import Foundation

func takeInput(title: String)->String?{
    print("\(title)")
    guard let response = readLine() else {return nil}
    return response
}

func vehicleInputs(_ vehicleNo: Int)-> Vehicle?{
    let vehicleNo = "vehicle\(vehicleNo+1)"
    let vehicleName = takeInput(title: "Please, enter name of the \(vehicleNo)") ?? ""
    let vehicleSpeed = Double(takeInput(title: "Please, enter Maximum speed of the \(vehicleNo)") ?? "0.0") ?? 0.0
    let vehicleWeight = Int(takeInput(title: "Please, enter weight of the \(vehicleNo)") ?? "0") ?? 0
    let vehicleFuel = Int(takeInput(title: "Please, enter fuel in the \(vehicleNo)") ?? "0") ?? 0
    
    let vehicleType = takeInput(title: "Is it a Car or Motorcycle?")?.lowercased() ?? "car"
    
    if vehicleType.contains("car"){
        var carType = takeInput(title: "Is it a Race Car or Touring Car?")?.lowercased() ?? "race"
        if carType.contains("race"){
            carType = "Race Car"
        } else{
            carType = "Touring Car"
        }
        return Car.init(name: vehicleName, speedMax: vehicleSpeed, weight: vehicleWeight, fuel: vehicleFuel, carType: carType)
    } else{
        let sideCar = (takeInput(title: "Vehicle contains SideCar? (yes/no)") ?? "no").lowercased()
        if sideCar.contains("yes"){
            return Moto.init(name: vehicleName, speedMax: vehicleSpeed, weight: vehicleWeight, fuel: vehicleFuel, sidecar: true)
        } else{
            return Moto.init(name: vehicleName, speedMax: vehicleSpeed, weight: vehicleWeight, fuel: vehicleFuel)
        }
    }
}


