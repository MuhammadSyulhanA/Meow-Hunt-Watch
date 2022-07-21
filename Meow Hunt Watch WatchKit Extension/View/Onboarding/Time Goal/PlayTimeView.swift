//
//  PlayTimeView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 21/07/22.
//

import SwiftUI

struct PlayTimeView: View {
    @State private var progress = 0.2
    @State var timerVal : Int

    var body: some View {
        ScrollView {
            ZStack {
                Image("sleepCat")
                    .resizable()
                    .frame(width: 93, height: 79)
                
                ProgressView(value: progress, total: Double(timerVal) )
                    .progressViewStyle(GaugeProgressStyle())
                    .frame(width: 145, height: 145)
                .contentShape(Rectangle())
            }
            .padding(10)
            
            HStack {
                Text("Play Time")
                    .font(.system(size: 13, weight: .semibold))
                Spacer()
            }
            .padding(.top, 25)
            HStack {
                HStack {
                    Text("0")
                        .font(.system(size: 20, weight: .semibold))
                    Text("HR")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color(UIColor(red: 0.75, green: 0.57, blue: 0.31, alpha: 1.00)))
                    Text("0")
                        .font(.system(size: 20, weight: .semibold))
                    Text("MIN")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color(UIColor(red: 0.75, green: 0.57, blue: 0.31, alpha: 1.00)))
                }
                Spacer()
            }
            Button(action: {
                
            }, label: {
                Text("Chance Time Goal")
                    .foregroundColor(Color(UIColor(red: 0.75, green: 0.57, blue: 0.31, alpha: 1.00)))
                    .font(.system(size: 17, weight: .semibold))
                    
            })
            .buttonStyle(.borderedProminent)
            .tint(Color(UIColor(red: 0.26, green: 0.26, blue: 0.27, alpha: 1.00)))
            .background(
                NavigationLink("", destination: PickTimeView())
            )
        }
//            .onTapGesture {
//                if progress < 1.0 {
//                    withAnimation {
//                        progress += 0.2
//                    }
//                }
//            }
    }
}

struct PlayTimeView_Previews: PreviewProvider {
    static var previews: some View {
        PlayTimeView(timerVal: 0)
    }
}

struct GaugeProgressStyle: ProgressViewStyle {
    var strokeColor = Color(UIColor(red: 0.75, green: 0.57, blue: 0.31, alpha: 1.00))
    var strokeWidth = 15.0

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0

        return ZStack {
            Circle()
                .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round)).opacity(0.5)
            Circle()
                .trim(from: 0, to: fractionCompleted)
                .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
    }
}
