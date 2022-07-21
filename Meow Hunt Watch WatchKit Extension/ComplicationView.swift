//
//  ComplicationView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 21/07/22.
//

import SwiftUI
import ClockKit

struct ComplicationView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ComplicationViewCircular: View {
    var body: some View {
        ZStack {
            ProgressView(value: 0.3)
                .progressViewStyle(CircularProgressViewStyle(tint: Color(red: 0.75, green: 0.57, blue: 0.31)))
            Image("onboard")
                .resizable()
                .frame(width: 30, height: 25)
        }
    }
}

struct ComplicationViewRectangular: View {
    @State var playingActivity: Activity

    var body: some View {
        HStack (spacing: 10) {
            VStack {
                VStack {
                    Text("History")
                    
                    Text(playingActivity.progressDone).font(.headline)
                    
                    Text(playingActivity.ProgressRemaining).font(.footnote)
                }
            }
        }
    }
}

struct ComplicationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CLKComplicationTemplateGraphicCircularView(ComplicationViewCircular()).previewContext()
            
        
//            CLKComplicationTemplateGraphicRectangularFullView(ComplicationViewRectangular(playingActivity: Activity.getDummyData())).previewContext()
        }
    }
}
