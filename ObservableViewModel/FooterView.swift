//
//  FooterView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct FooterView: View {
    
    @EnvironmentObject var containerViewModel: ContainerViewModel
    
    var body: some View {
        VStack {
            Button(action: {
                containerViewModel.actionHandler(.resetHeader)
            }, label: {
                Text("Reset title")
            })
        }
    }
}
