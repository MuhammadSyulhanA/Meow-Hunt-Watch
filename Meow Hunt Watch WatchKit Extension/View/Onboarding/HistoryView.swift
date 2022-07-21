//
//  HistoryView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 21/07/22.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView {
            HStack {
                List {
                    HStack{
                        Image("bookIcon")
                            .resizable()
                            .frame(width: 40, height: 35)
                        
                        VStack {
                            HStack {
                                Text("Read Story Together")
                                    .font(.system(size: 12))
                                Spacer()
                            }.padding(.bottom, 1)
                            
                            HStack {
                                Text("15:38")
                                    .font(.system(size: 10))
                                    .foregroundColor(.yellow).opacity(0.7)
                                Spacer()
                            }
                                
                        }
                    }
                    
                }
                .navigationTitle("History")
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
