//
//  HeaderView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var containerViewModel: ContainerViewModel
    
    var body: some View {
        VStack {
            Text("User: \(containerViewModel.user?.name ?? "")")
                .font(.title)
        }
    }
}
