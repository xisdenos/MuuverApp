//
//  VolumeSizeViewModel.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation

class VolumeSizeViewModel {
    
    var transportListInfo: [[String]] =
                                     [["ic_email", "Envelope"],
                                      ["ic_book", "Livro"],
                                      ["ic_box", "Caixa de Sapato"],
                                      ["ic_backpack", "Mochila"],
                                      ["ic_mala", "Mala"],
                                      ["ic_big_box", "Caixa Grande"]]
    var transportListInfoBool: [Bool] = [false, false, false, false, false, false]
    
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
