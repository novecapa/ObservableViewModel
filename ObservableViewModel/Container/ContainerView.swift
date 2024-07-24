//
//  ContainerView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct ContainerView: View {

    @StateObject var containerViewModel: ContainerViewModel

    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                VStack {
                    HeaderView()
                        .frame(height: 60)
                    BodyView()
                        .frame(maxHeight: .infinity)
                    FooterView()
                        .frame(height: 60)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .onAppear {
                    containerViewModel.actionHandler(.onAppear)
                }
                .onDisappear {
                    containerViewModel.actionHandler(.onDisappear)
                }
            }
        }
        .environmentObject(containerViewModel)
    }
}

#Preview {
    ContainerViewBuilder().build()
}
