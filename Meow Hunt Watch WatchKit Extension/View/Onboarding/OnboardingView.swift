//
//  OnboardingView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 20/07/22.
//

import SwiftUI

struct OnboardingView: View {
    @State var isPlayTime = false
    
    var body: some View {
        ScrollView {
            VStack {
                Image("onboard")
                    .resizable()
                    .frame(width: 90, height: 73)
                Text("Care to Play?")
                
                ZStack {
                    NavigationLink("Track Now", destination: PlayTrackView())
                        .foregroundColor(Color(.green).opacity(0.8))
                        .font(.system(size: 16, weight: .semibold))
                }
                .frame(width: 154, height: 40, alignment: .center)
                .background(Color(.green).opacity(0.1))
                .cornerRadius(15)
            }
            
            NavigationLink(destination: ParentPlayTimeView(timerVal: 3)) {
                ZStack {
                    VStack {
                        
                        HStack {
                            Text("Play Time")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(Color(.black))
                            Spacer()
                        }
                        .padding([.leading, .top])
                        
                        HStack {
                            Text("0/3 HR")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(Color(.black))
                            
                            Spacer()
                            Image(systemName: "circle")
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(Color(.black))
                        }
                        .padding([.leading, .bottom, .trailing])
                        
                    }
                }
            }
            .frame(width: 154, height: 64, alignment: .center)
            .background(Color(UIColor(red: 0.75, green: 0.57, blue: 0.31, alpha: 1.00)))
            .cornerRadius(15)
            .padding(.top, 25)
            
            NavigationLink(destination: HistoryView()) {
                ZStack {
                    VStack {
                        
                        HStack {
                            Text("Today's Activity")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(Color(.black))
                            Spacer()
                        }
                        .padding([.leading, .top])
                        
                        HStack {
                            Text("0")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(Color(.black))
                            
                            Spacer()
                            Image("activity")
                                .resizable()
                                .frame(width: 28, height: 28)
                        }
                        .padding([.leading, .bottom, .trailing])
                        
                    }
                }
            }
            .frame(width: 154, height: 64, alignment: .center)
            .background(Color(UIColor(red: 1.00, green: 0.87, blue: 0.87, alpha: 1.00)))
            .cornerRadius(15)
        }
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
