//
//  EventView.swift
//  whatsupnext
//
//  Created by Martin Haase on 26.06.19.
//  Copyright © 2019 Martin Haase. All rights reserved.
//

import SwiftUI
import Combine

struct EventView: View {
    
    @ObservedObject var viewModel: EventViewModel = EventViewModel(fromJsonFile: "Event")
    
    var body: some View {
        VStack {
            Text(viewModel.event!.title)
                .font(.title)
            Text(viewModel.event!.hashtag)
                .font(.subheadline)
        }
    }
    
}

#if DEBUG
struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(viewModel: EventViewModel(fromJsonFile: "Event"))
    }
}
#endif
