//
//  ListActivityView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 19/07/22.
//

import SwiftUI

struct ListActivityView: View {
    var body: some View {
        NavigationView {
            HStack {
                List {
                    HStack{
                        Image("indoorActivity")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink("Indoor", destination: IndoorActivityView())
                    }
                    
                    HStack{
                        Image("outdoorActivity")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink("Outdoor", destination: OutdoorActivityView())
                    }
                    
                }
                .navigationTitle("Activity")
            }
        }
    }
}

struct ListActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ListActivityView()
    }
}
