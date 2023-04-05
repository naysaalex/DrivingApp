//
//  ContentView.swift
//  DrivingApp
//
//  Created by cashamirica on 4/3/23.
//

import SwiftUI

//basic database structure
//struct Driver{
//    var id: UUID
//    var name: String
//}

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors:[]) var drivers: FetchedResults<Driver>
    //new fetch request --> everytime you need data from a database, you need a fetchRequest
    
    var body: some View {
        VStack {
            List(drivers){driver in
                Text((driver.name ?? "Unknown")) //if driver.name is null, it will put Unknown
            }
            
            Button("Add Names"){
                let firstNames = ["A","B","C","D"]
                
                let lastNames = ["LA", "LB", "LC", "LD"]
                
                let chosenFirstName = firstNames.randomElement()!
                
                let chosenLastName = lastNames.randomElement()!
                
                let driver = Driver(context: moc)
                
                driver.id = UUID()
                driver.name = "\(chosenFirstName) \(chosenLastName)"
                
                try? moc.save()



            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
