//
//  BodyView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct BodyView: View {
    
    @Environment(ContentViewModel.self) var contentViewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Body: \(contentViewModel.counter)")
                .font(.title)
            Button(action: {
                contentViewModel.counter += 10
            }, label: {
                Text("Update counter x10")
            })
        }
    }
}
