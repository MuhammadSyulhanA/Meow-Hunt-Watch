//
//  OutdoorActivityView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 19/07/22.
//

import SwiftUI

struct OutdoorActivityView: View {
    var body: some View {
        NavigationView {
            HStack {
                List {
                    HStack{
                        Image("playingIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Play games")
                    }
                    
                    HStack{
                        Image("parkIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Going to park")
                    }
                    
                    HStack{
                        Image("gardenIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Gardening")
                    }
                    
                    HStack{
                        Image("outdoorPicnicIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Outdoor Picnic")
                    }
                    
                }
                .navigationBarTitle("Outdoor")
                .navigationBarHidden(true)
            }
        }
    }
}

struct OutdoorActivityView_Previews: PreviewProvider {
    static var previews: some View {
        OutdoorActivityView()
    }
}
