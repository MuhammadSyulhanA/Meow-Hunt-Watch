//
//  PickTimeView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 21/07/22.
//

import SwiftUI

struct PickTimeView: View {
    @State var secondScreenShown = false
    @State var timerVal = 3
    
    var body: some View {
        VStack {
            Text("Choose your playtime")
            Picker(selection: $timerVal, label: Text("")) {
                Text("1 Hours").tag(1)
                Text("2 Hours").tag(2)
                Text("3 Hours").tag(3)
            }
//            .padding(.bottom, 10)
            .font(.system(size: 25))
            
            NavigationLink(
                destination: ParentPlayTimeView(timerVal: timerVal),
                isActive: $secondScreenShown,
                label: {Text("Set")})
        }
    }
}

struct PickTimeView_Previews: PreviewProvider {
    static var previews: some View {
        PickTimeView()
    }
}
