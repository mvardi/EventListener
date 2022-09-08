//
//  EventListener.swift
//  
//
//  Created by Interview on 06/09/2022.
//

import Foundation
import UIKit


public protocol EventListenerProtocol {}


public class EventListenerHelper: UIApplication, EventListenerProtocol{

    public override func sendEvent(_ event: UIEvent) {
        super.sendEvent(event)
        if let touches = event.allTouches {
            for touch in touches where touch.phase == UITouch.Phase.began {
                if touch.view is UIButton {//detect only uibutton views
                    print("UIButton clicked \(String(describing: touch.view))")
                    saveEvent(eventType: .Click)
                }
            }
        }
    }
    
    
    func saveEvent(eventType: EventType){
        let event = createEvent(eventType: eventType)
        
        print("\(event.timeStamp),\(String(describing: event.eventType)),\(event.OSVersion)", to: &FileRepositoriy.log)
        
    }
        
    func createEvent(eventType: EventType) -> Event{
        let event = Event(eventType: eventType)
        return event
    }
}

