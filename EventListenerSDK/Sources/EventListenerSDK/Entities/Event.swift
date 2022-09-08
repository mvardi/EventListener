//
//  Event.swift
//  
//
//  Created by Interview on 06/09/2022.
//

import Foundation
import UIKit

struct Event {
    var timeStamp: Date
    var eventType: EventType?
    var OSVersion: String
    
    //init {
    //    var OSVersion = UIDevice.current.systemVersion
    //}
    init (eventType: EventType) {
        self.timeStamp = Date()
        self.eventType = eventType
        self.OSVersion = UIDevice.current.systemVersion
    }
}


public enum EventType {
  case Click
  case Navigate
}
