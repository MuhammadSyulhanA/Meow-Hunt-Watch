//
//  IndoorActivityView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 19/07/22.
//

import SwiftUI

struct IndoorActivity: Identifiable {
    var id = UUID()
    var iconList: String
    var activityList: String
}

struct IndoorActivityView: View {
    var dataList = [
        IndoorActivity(iconList: "bookIcon", activityList: "Read a Story Together"),
        IndoorActivity(iconList: "singIcon", activityList: "Sing a Song"),
        IndoorActivity(iconList: "paintingIcon", activityList: "Colouring/Painting"),
        IndoorActivity(iconList: "cookIcon", activityList: "Bake and Cook"),
        IndoorActivity(iconList: "picnicIcon", activityList: "Indoor Picnic"),
        IndoorActivity(iconList: "bookIcon", activityList: "Jigsaw Puzzle"),
        IndoorActivity(iconList: "bookIcon", activityList: "Write A Letter"),
        IndoorActivity(iconList: "bookIcon", activityList: "Word Games"),
        IndoorActivity(iconList: "bookIcon", activityList: "Sensory Bin"),
        IndoorActivity(iconList: "bookIcon", activityList: "Face Painting"),
        IndoorActivity(iconList: "bookIcon", activityList: "Other Activity")]
    
    var body: some View {
        NavigationView {
            HStack {
                List(dataList){ i in{
                    HStack{
                        Image(i.iconList)
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text(i.activityList)
                    }
                }()
                }
                .navigationBarTitle("Indoor")
                .navigationBarHidden(true)
            }
        }
    }
}

struct IndoorActivityView_Previews: PreviewProvider {
    static var previews: some View {
        IndoorActivityView()
    }
}
