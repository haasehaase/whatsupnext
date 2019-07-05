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
    public let didChange = PassthroughSubject<Void, Never>()
    
    var event = event1{
    didSet{
        self.didChange.send(())
        }
    }
}

