//
//  EventModel.swift
//  whatsupnext
//
//  Created by Martin Haase on 19.06.19.
//  Copyright © 2019 Martin Haase. All rights reserved.
//

import SwiftUI

struct EventModel: Identifiable, Codable {
    var id: Int
    var title: String
    var hashtag: String
}
