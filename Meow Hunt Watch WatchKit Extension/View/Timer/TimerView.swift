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
    @Environment(\.managedObjectContext) var context
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    @StateObject var managerClass:StopwatchManager = StopwatchManager()
    @State var lapTiming: TimeLap
    
    @Binding var playingActivityOut : OutdoorActivity?
    @Binding var playingActivityIn : IndoorActivity?
    
    @State var isMoving = false

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
                    addHistory()
                    self.managerClass.stop()
                    isMoving.toggle()
                }, label: {
                    Text("Stop")
                        .foregroundColor(.red)
                })
                .buttonStyle(.borderedProminent)
                .tint(.red.opacity(0.2))
                .background(
                    NavigationLink(destination: OnboardingView(), isActive: $isMoving, label: {
                        
                    })
                )
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
                    addHistory()
                    self.managerClass.stop()
                    isMoving.toggle()
                }, label: {
                    Text("Stop")
                        .foregroundColor(.red)
                })
                .buttonStyle(.borderedProminent)
                .tint(.red.opacity(0.2))
                .background(
                    NavigationLink(destination: OnboardingView(), isActive: $isMoving, label: {
                        
                    })
                )
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
                    addHistory()
                    self.managerClass.stop()
                    isMoving.toggle()
                }, label: {
                    Text("Stop")
                        .foregroundColor(.red)
                })
                .buttonStyle(.borderedProminent)
                .tint(.red.opacity(0.2))
                .background(
                    NavigationLink(destination: OnboardingView(), isActive: $isMoving, label: {
                        
                    })
                )
            }
            Text("\(String(format: "%.2f", lapTiming.lap)) s")
                .font(.system(size: 10))
        }
        
        .navigationBarHidden(true)
    }
    
    private func addHistory() {
        let act = Hunting(context: context)
        act.imageActivity = playingActivityIn?.iconList ?? playingActivityOut?.iconList ?? "other2Icon"
        act.nameActivity = playingActivityIn?.activityList ?? playingActivityOut?.activityList ?? "Free Activity"
        act.timeActivity = lapTiming.lap
        act.timeActivity = Double(round(100 * act.timeActivity) / 100)
        
        print(act)
        print(context)
        
        do {
            try context.save()
            presentationMode.wrappedValue.dismiss()
        } catch {
            print(error.localizedDescription)
        }
    }
    
//    func addActivity(){
//        let data = HistoryHunt(context: moc)
//        data.imageActivity = playingActivityIn?.iconList ?? playingActivityOut?.iconList ?? "other2Icon"
//        data.nameActivity = playingActivityIn?.activityList ?? playingActivityOut?.activityList ?? "Free Activity"
//        data.timeActivity = lapTiming.lap
//        data.timeActivity = Double(round(100 * data.timeActivity) / 100)
//
//        print(data.imageActivity!, data.nameActivity!, data.timeActivity)
//
//        do {
//            try moc.save()
//            presentation.wrappedValue.dismiss()
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(lapTiming: .init(0), playingActivityOut: .constant(nil), playingActivityIn: .constant(nil))
    }
}
