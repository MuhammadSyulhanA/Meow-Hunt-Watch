//
//  ChangeGoalView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 21/07/22.
//

import SwiftUI

struct ChangeGoalView: View {
    @State var isMove = false
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Image("questionCat")
                        .resizable()
                    .frame(width: 155, height: 85)
                    
                    Image("questionCat")
                        .resizable()
                    .frame(width: 155, height: 85)
                }.padding(3)
                Text("Change your goal?")
                
            } .padding()
            
            Button(action: {
                isMove.toggle()
            }, label: {
                Text("Yes")
                    .foregroundColor(.orange)
                    .font(.system(size: 17, weight: .semibold))
            })
            .buttonStyle(.borderedProminent)
            .tint(Color(UIColor(red: 0.26, green: 0.26, blue: 0.27, alpha: 1.00)))
            .background(
                NavigationLink(destination: PickTimeView(), isActive: $isMove, label: {
                    
                })
            )
        }
    }
}

struct ChangeGoalView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeGoalView()
    }
}
