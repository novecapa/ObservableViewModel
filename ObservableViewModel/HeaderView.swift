//
//  HeaderView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(ContentViewModel.self) var contentViewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Header: \(contentViewModel.nameHeader)")
                .font(.title)
        }
    }
}
