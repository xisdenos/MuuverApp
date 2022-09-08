//
//  SelectTransportScreenViewModel.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation

class SelectTransportScreenViewModel {
    
    var transportListInfo: [[String]] =
                                     [["ic_car", "Carro"],
                                      ["ic_aviao", "Avião"],
                                      ["ic_caminhao", "Caminhão"],
                                      ["ic_van", "Van"],
                                      ["ic_moto", "Moto"],
                                      ["ic_bike", "Bicicleta"],
                                      ["ic_trem", "Trem"],
                                      ["ic_bus", "Onibus"],
                                      ["ic_barco", "Embarcação"]]
    var transportListInfoBool: [Bool] = [false, false, false, false, false, false, false, false, false]
    
    init() {}
    
    public func selectVehicle(transportNumber: Int) -> Void {
        for i in 0...(transportListInfoBool.count - 1) {
            transportListInfoBool[i] = false
        }
        transportListInfoBool[transportNumber] = !transportListInfoBool[transportNumber]
    }
    
    public func anySelected() -> Bool {
        return transportListInfoBool.allSatisfy { $0 == false }
    }
}
