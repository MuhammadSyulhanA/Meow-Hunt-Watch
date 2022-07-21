//
//  OutdoorActivityView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 19/07/22.
//

import SwiftUI

struct OutdoorActivityView: View {
    @Binding var playActivity : OutdoorActivity?
    @State private var isActivity = false
    
    
    var dataList = [
        OutdoorActivity(iconList: "parkIcon", activityList: "Going to Park"),
        OutdoorActivity(iconList: "gardenIcon", activityList: "Gardening"),
        OutdoorActivity(iconList: "picnicIcon", activityList: "Outdoor Picnic"),
        OutdoorActivity(iconList: "drawingIcon", activityList: "Draw With Chalk"),
        OutdoorActivity(iconList: "scavengerIcon", activityList: "Scavenger Hunt"),
        OutdoorActivity(iconList: "bugsIcon", activityList: "Bugs Hunter"),
        OutdoorActivity(iconList: "waterFightIcon", activityList: "Water Fights"),
        OutdoorActivity(iconList: "playingTagsIcon", activityList: "Play Tags"),
        OutdoorActivity(iconList: "washCarIcon", activityList: "Wash Car"),
        OutdoorActivity(iconList: "otherIcon", activityList: "Other Activity")]
    
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
                .navigationBarTitle("Outdoor")
            }
            .background(
                NavigationLink(destination: CircleProgressView(playingActivityOut: $playActivity, playingActivityIn: .constant(nil)), isActive: $isActivity, label: {
                    
                })
            )
        
    }
}


struct OutdoorActivityView_Previews: PreviewProvider {
    static var previews: some View {
        OutdoorActivityView(playActivity: .constant(nil))
    }
}
