//
//  PlayTrackView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 20/07/22.
//

import SwiftUI

struct PlayTrackView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Let’s track\nyour play time\nwith the children!")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                }
                
                .padding(10)
                
                NavigationLink(destination: CircleProgressView(playingActivityOut: .constant(nil), playingActivityIn: .constant(nil))) {
                    ZStack {
                        Text("Play Now")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(Color(.green).opacity(0.8))
                    }
                }
                .frame(width: 154, height: 40, alignment: .center)
                .background(Color(.green).opacity(0.1))
                .cornerRadius(15)
                
                NavigationLink(destination: ContentView()) {
                    ZStack {
                        Text("Choose Activities")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(Color(UIColor(red: 1.00, green: 0.87, blue: 0.87, alpha: 1.00)))
                    }
                }
                .frame(width: 154, height: 40, alignment: .center)
                .background(Color(UIColor(red: 1.00, green: 0.87, blue: 0.87, alpha: 1.00)).opacity(0.1))
                .cornerRadius(15)
            }
        }
        
        
    }
}

struct PlayTrackView_Previews: PreviewProvider {
    static var previews: some View {
        PlayTrackView()
    }
}
