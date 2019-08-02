//
//  EventViewModel.swift
//  whatsupnext
//
//  Created by Martin Haase on 25.06.19.
//  Copyright © 2019 Martin Haase. All rights reserved.
//

import SwiftUI
import Combine

public class EventViewModel: BindableObject{
    init() {
        self.event = EventViewModel.loadJson(fileName: "Event")
    }
    
    public let didChange = PassthroughSubject<Void, Never>()
    
    static func loadJson(fileName: String) -> EventModel? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(EventModel.self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    var event: EventModel?{
    didSet{
        self.didChange.send(())
        }
    }
}

