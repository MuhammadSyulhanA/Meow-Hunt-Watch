//
//  ComplicationManager.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by Ferry Julian on 21/07/22.
//

import Foundation

struct Activity: Identifiable {
    var id = UUID()
    var progressDone: String
    var ProgressRemaining: String
}

extension Activity{
    static func getDummyData() -> Activity {
        return Activity(progressDone: "2.15 Hours • 75%", ProgressRemaining: "45 Mins Remaining")
    }
}
