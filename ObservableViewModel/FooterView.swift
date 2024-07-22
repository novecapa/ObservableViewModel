//
//  FooterView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct FooterView: View {
    
    @Environment(ContentViewModel.self) var contentViewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Footer: \(contentViewModel.nameFooter)")
                .font(.title)
            Button(action: {
                contentViewModel.buttonHeaderTitle = "no title"
            }, label: {
                Text("Update header button title")
            })
        }
    }
}
