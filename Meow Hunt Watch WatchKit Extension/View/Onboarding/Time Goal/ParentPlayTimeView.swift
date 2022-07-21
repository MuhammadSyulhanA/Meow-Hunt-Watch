//
//  ParentPlayTimeView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 21/07/22.
//

import SwiftUI

struct ParentPlayTimeView: View {
    @State var currentView = 1
    @State var timerVal : Int
    
    var body: some View {
        TabView(selection: $currentView) {
            PlayTimeView(timerVal: timerVal).tag(1)
            ChangeGoalView().tag(2)
        }
    }
}

struct ParentPlayTimeView_Previews: PreviewProvider {
    static var previews: some View {
        ParentPlayTimeView(timerVal: 3)
    }
}
