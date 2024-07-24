//
//  BodyView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct BodyView: View {
    
    @EnvironmentObject var containerViewModel: ContainerViewModel
    
    var body: some View {
        VStack {
            if case let .loaded(loadStatus) = containerViewModel.status {
                loadedView(status: loadStatus)
            } else {
                loadingView()
            }
        }
    }
}
// MARK: Private methods
private extension BodyView {
    func loadingView() -> some View {
        ProgressView()
    }
    
    func loadedView(status: ContainerViewModel.LoadedStatus) -> some View {
        List {
            ForEach(status.result, id: \.id) { user in
                Text(user.name)
                    .onTapGesture {
                        containerViewModel.actionHandler(.userTapped(user))
                    }
            }
        }
    }
}
