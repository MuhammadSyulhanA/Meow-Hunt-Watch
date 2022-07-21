//
//  TimerView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 20/07/22.
//

import SwiftUI

struct TimeLap: Identifiable {
    var id = UUID()
    let lap: Double
    init(_ lap: Double){
        self.lap = lap
    }
}

struct TimerView: View {
    @StateObject var managerClass:StopwatchManager = StopwatchManager()
    @State var lapTiming: TimeLap
    
    @Binding var playingActivityOut : OutdoorActivity?
    @Binding var playingActivityIn : IndoorActivity?

    var body: some View {
        VStack {
            Text(String(format: "%.2f", managerClass.secondElapsed))
                .padding()
                .font(.system(size: 50))
                .foregroundColor(.green)
            Text(playingActivityOut?.activityList ?? playingActivityIn?.activityList ?? "Activity")
                .font(.system(size: 10))
            if managerClass.mode == .stopped {
                Button(action: {
                    self.managerClass.start()
                }, label: {
                    Text("Start")
                        .foregroundColor(.green)
//                    Image(systemName: "play.fill")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.blue)
//                        .cornerRadius(100)
                })
                .buttonStyle(.borderedProminent)
                .tint(.green.opacity(0.2))
                
                Button(action: {
                    lapTiming = TimeLap(managerClass.secondElapsed)
                    self.managerClass.stop()
                }, label: {
                    Text("Stop")
                        .foregroundColor(.red)
                })
                .buttonStyle(.borderedProminent)
                .tint(.red.opacity(0.2))
            }
            
            if managerClass.mode == .running {
                Button(action: {
                    self.managerClass.pause()
                }, label: {
                    Text("Pause")
                        .foregroundColor(.yellow)
                })
                .buttonStyle(.borderedProminent)
                .tint(.yellow.opacity(0.2))
                
                Button(action: {
                    lapTiming = TimeLap(managerClass.secondElapsed)
                    self.managerClass.stop()
                }, label: {
                    Text("Stop")
                        .foregroundColor(.red)
                })
                .buttonStyle(.borderedProminent)
                .tint(.red.opacity(0.2))
            }
            
            if managerClass.mode == .paused {
                Button(action: {
                    self.managerClass.start()
                }, label: {
                    Text("Start")
                        .foregroundColor(.green)
                })
                .buttonStyle(.borderedProminent)
                .tint(.green.opacity(0.2))
                
                Button(action: {
                    lapTiming = TimeLap(managerClass.secondElapsed)
                    self.managerClass.stop()
                }, label: {
                    Text("Stop")
                        .foregroundColor(.red)
                })
                .buttonStyle(.borderedProminent)
                .tint(.red.opacity(0.2))
            }
            Text("\(String(format: "%.2f", lapTiming.lap)) s")
                .font(.system(size: 10))
        }
        .navigationBarHidden(true)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(lapTiming: .init(0), playingActivityOut: .constant(nil), playingActivityIn: .constant(nil))
    }
}
