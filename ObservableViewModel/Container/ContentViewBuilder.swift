//
//  ContentViewBuilder.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import Foundation

final class ContentViewBuilder {
    func build() -> ContentView {
        let viewModel = ContentViewModel()
        let view = ContentView(contentViewModel: viewModel)
        return view
    }
}
