//
//  DrivingAppApp.swift
//  DrivingApp
//
//  Created by cashamirica on 4/3/23.
//

import SwiftUI

@main
struct DrivingAppApp: App {
    
    //want to create trackable objects
    @StateObject private var dataController = DataController() //no one can see this outside this struct
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext) //live context of your database with managedObjectContext
        }
    }
}
