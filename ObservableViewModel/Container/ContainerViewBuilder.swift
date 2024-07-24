//
//  ContainerViewBuilder.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import Foundation

final class ContainerViewBuilder {
    func build() -> ContainerView {
        let useCase = UsersUseCase()
        let interactor = ContainerViewInteractor(useCase: useCase)
        let viewModel = ContainerViewModel(interactor: interactor)
        let view = ContainerView(containerViewModel: viewModel)
        return view
    }
}
