//
//  TravelInfoScreenViewModel.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation

class TravelInfoScreenViewModel {
    
    var initialPlaceText: String?
    var finalPlaceText: String?
    
    var isTextFieldEmpty: Bool {
        return
        initialPlaceText?.isEmpty == false &&
        finalPlaceText?.isEmpty == false
    }
}
