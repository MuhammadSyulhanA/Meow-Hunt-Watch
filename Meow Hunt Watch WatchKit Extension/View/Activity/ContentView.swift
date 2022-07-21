//
//  ContentView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 15/07/22.
//

import SwiftUI

struct ContentView: View {
    @State var playActivityOut : OutdoorActivity?
    @State var playActivityIn : IndoorActivity?
    
    var body: some View {
        
            HStack {
                List {
                    HStack{
                        Image("indoorActivity")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink("Indoor", destination: IndoorActivityView(playActivity: $playActivityIn))
                    }
                    
                    HStack{
                        Image("outdoorActivity")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink("Outdoor", destination: OutdoorActivityView(playActivity: $playActivityOut))
                    }
                    
                }
                .navigationTitle("Activity")
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
