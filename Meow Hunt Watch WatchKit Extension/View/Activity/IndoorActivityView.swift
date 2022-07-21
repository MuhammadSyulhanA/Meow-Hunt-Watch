//
//  IndoorActivityView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 19/07/22.
//

import SwiftUI

struct IndoorActivityView: View {
    @Binding var playActivity : IndoorActivity?
    @State private var isActivity = false
    
    var dataList = [
        IndoorActivity(iconList: "bookIcon", activityList: "Read a Story Together"),
        IndoorActivity(iconList: "singIcon", activityList: "Sing a Song"),
        IndoorActivity(iconList: "paintingIcon", activityList: "Colouring/Painting"),
        IndoorActivity(iconList: "cookIcon", activityList: "Bake and Cook"),
        IndoorActivity(iconList: "picnicIcon", activityList: "Indoor Picnic"),
        IndoorActivity(iconList: "puzzleIcon", activityList: "Jigsaw Puzzle"),
        IndoorActivity(iconList: "writeIcon", activityList: "Write A Letter"),
        IndoorActivity(iconList: "wordIcon", activityList: "Word Games"),
        IndoorActivity(iconList: "sensoryIcon", activityList: "Sensory Bin"),
        IndoorActivity(iconList: "facePaintingIcon", activityList: "Face Painting"),
        IndoorActivity(iconList: "other2Icon", activityList: "Other Activity")]
    
    var body: some View {

            HStack {
                List(dataList){ i in{
                    HStack{
                        Image(i.iconList)
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text(i.activityList)
                    }
                    .onTapGesture {
                        playActivity = i
                        isActivity.toggle()
                    }
                }()
                }
                .navigationBarTitle("Indoor")
            }
            .background(
                NavigationLink(destination: CircleProgressView(playingActivityOut: .constant(nil), playingActivityIn: $playActivity), isActive: $isActivity, label: {
                    
                })
            )
    }
}

struct IndoorActivityView_Previews: PreviewProvider {
    static var previews: some View {
        IndoorActivityView(playActivity: .constant(nil))
    }
}
