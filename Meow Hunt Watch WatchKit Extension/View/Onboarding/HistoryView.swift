//
//  HistoryView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 21/07/22.
//

import SwiftUI
import CoreData

struct HistoryView: View {

    @FetchRequest(entity: Hunting.entity(), sortDescriptors: [])
//    @FetchRequest(sortDescriptors: [])
    var dataHunt: FetchedResults<Hunting>
    
    var body: some View {
            VStack {
                if dataHunt.isEmpty {
                    Text("No History Found")
                } else {
                    List(dataHunt) { item in
                        HStack{
                            Image(item.imageActivity ?? "")
                                .resizable()
                                .frame(width: 40, height: 35)
                            
                            VStack {
                                HStack {
                                    Text(item.nameActivity ?? "")
                                        .font(.system(size: 12))
                                    Spacer()
                                }.padding(.bottom, 1)

                                HStack {
                                    Text(String(item.timeActivity))
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
