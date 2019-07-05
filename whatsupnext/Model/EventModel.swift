//
//  EventModel.swift
//  whatsupnext
//
//  Created by Martin Haase on 19.06.19.
//  Copyright © 2019 Martin Haase. All rights reserved.
//

import SwiftUI

struct EventModel: Identifiable, Codable{ //Check: wann Struct, wann Class
    var id: Int
    var name: String
    var hashtag: String
}

var event1 = EventModel(id: 1, name: "Kebap-Connection", hashtag: "#DönerMachtSchöner")
