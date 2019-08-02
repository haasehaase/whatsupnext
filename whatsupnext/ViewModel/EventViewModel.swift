//
//  EventViewModel.swift
//  whatsupnext
//
//  Created by Martin Haase on 25.06.19.
//  Copyright © 2019 Martin Haase. All rights reserved.
//

import SwiftUI
import Combine

public class EventViewModel: ObservableObject {
    
    public let didChange = PassthroughSubject<Void, Never>()
    
    var event: EventModel? {
        didSet{
            self.didChange.send(())
        }
    }
    
//    init(from eventModel: EventModel) {
//        self.event = eventModel
//    }

    init(fromJsonFile jsonFileName: String) {
        self.event = loadJson(fileName: jsonFileName)
    }
    
    func loadJson(fileName: String) -> EventModel? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(EventModel.self, from: data)
                return jsonData
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }
        return nil
    }
    
}

