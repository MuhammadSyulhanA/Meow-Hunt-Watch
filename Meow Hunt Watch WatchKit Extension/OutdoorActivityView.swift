//
//  OutdoorActivityView.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 19/07/22.
//

import SwiftUI

struct OutdoorActivity: Identifiable {
    var id = UUID()
    var iconList: String
    var activityList: String
}

struct OutdoorActivityView: View {
    var dataList = [
        OutdoorActivity(iconList: "playingIcon", activityList: "Play Games"),
        OutdoorActivity(iconList: "parkIcon", activityList: "Going to Park"),
        OutdoorActivity(iconList: "gardenIcon", activityList: "Gardening"),
        OutdoorActivity(iconList: "outdoorPicnicIcon", activityList: "Outdoor Picnic"),
        OutdoorActivity(iconList: "drawingIcon", activityList: "Draw With Chalk"),
        OutdoorActivity(iconList: "waterPaintingIcon", activityList: "Water Painting"),
        OutdoorActivity(iconList: "scavengerIcon", activityList: "Scavenger Hunt"),
        OutdoorActivity(iconList: "bugsIcon", activityList: "Bugs Hunter"),
        OutdoorActivity(iconList: "waterFightIcon", activityList: "Water Fights"),
        OutdoorActivity(iconList: "playingTagsIcon", activityList: "Play Tags"),
        OutdoorActivity(iconList: "washCarIcon", activityList: "Wash Car"),
        OutdoorActivity(iconList: "other2Icon", activityList: "Other Activity")]
    
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
                .navigationBarTitle("Outdoor")
                .navigationBarHidden(true)
            }
        }
    }
}


struct OutdoorActivityView_Previews: PreviewProvider {
    static var previews: some View {
        OutdoorActivityView()
    }
}
