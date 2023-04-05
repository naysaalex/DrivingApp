//
//  DataController.swift
//  DrivingApp
//
//  Created by cashamirica on 4/3/23.
//

import Foundation
import CoreData

class DataController: ObservableObject{ //observable object so that this can be seen through other UI files
    //core datatype to load
    let container = NSPersistentContainer(name: "Driver") //NS stands for next step
    /* steve jobs started the company to keep data private*/
    
    init(){
        container.loadPersistentStores{description, error in
            if let error = error {
                //there is a problem w the database being loaded
                print("core data load failed: \(error.localizedDescription)")
            } //end of if let
        } //end of container
    } //end of init
}
