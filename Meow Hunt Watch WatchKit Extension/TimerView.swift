//
//  TimerView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 20/07/22.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        NavigationView{
            Text("00:00")
                .padding()
                .font(.system(size: 50))
                .foregroundColor(.green)
        
            VStack {
                ZStack {
                    Text ("\(Text("Pause").font(.system(size: 18)).bold())")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.yellow)
                }
                .frame(minWidth: 15, minHeight: 40, alignment: .center)
                .background(Color(.yellow).opacity(0.6).cornerRadius(20))
                
                ZStack {
                    Text ("\(Text("Stop").font(.system(size: 18)).bold())")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.red)
                }
                .frame(minWidth: 15, minHeight: 40, alignment: .center)
                .background(Color(.red).opacity(0.3).cornerRadius(20))
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
