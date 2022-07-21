//
//  StopwatchManager.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 21/07/22.
//

import Foundation
import SwiftUI

class StopwatchManager: ObservableObject {
    @Published var secondElapsed = 0.0
    @Published var mode: stopwatchMode = .stopped
    
    var timer = Timer()
    
    func start(){
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ timer in
            self.secondElapsed += 0.1
        }
    }
    
    func pause(){
        timer.invalidate()
        mode = .paused
    }
    
    func stop(){
        timer.invalidate()
        secondElapsed = 0
        mode = .paused
    }
}

enum stopwatchMode {
    case stopped
    case running
    case paused
}
