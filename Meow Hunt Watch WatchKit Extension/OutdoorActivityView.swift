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
        OutdoorActivity(iconList: "picnicIcon", activityList: "Draw With Chalk"),
        OutdoorActivity(iconList: "bookIcon", activityList: "Paint With Water"),
        OutdoorActivity(iconList: "bookIcon", activityList: "Scavenger Hunt"),
        OutdoorActivity(iconList: "bookIcon", activityList: "Hunt For Bugs"),
        OutdoorActivity(iconList: "bookIcon", activityList: "Water Fights"),
        OutdoorActivity(iconList: "bookIcon", activityList: "Play Tags"),
        OutdoorActivity(iconList: "bookIcon", activityList: "Wash Car"),
        OutdoorActivity(iconList: "bookIcon", activityList: "Other Activity")]
    
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
