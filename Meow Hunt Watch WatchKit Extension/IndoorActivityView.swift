//
//  IndoorActivityView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 19/07/22.
//

import SwiftUI

struct IndoorActivityView: View {
    var body: some View {
        NavigationView {
            HStack {
                List {
                    HStack{
                        Image("bookIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Read a story together")
                    }
                    
                    HStack{
                        Image("singIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Sing a song")
                    }
                    
                    HStack{
                        Image("paintingIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Colouring/Painting")
                    }
                    
                    HStack{
                        Image("cookIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Bake and Cook")
                    }
                    
                    HStack{
                        Image("picnicIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Indoor Picnic")
                    }
                    
                }
                .navigationBarTitle("Indoor")
                .navigationBarHidden(true)
            }
        }
    }
}

struct IndoorActivityView_Previews: PreviewProvider {
    static var previews: some View {
        IndoorActivityView()
    }
}
