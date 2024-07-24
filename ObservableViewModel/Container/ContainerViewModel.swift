//
//  ContainerViewModel.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

final class ContainerViewModel: ContainerViewModelProtocol {

    enum Event {
        case onAppear
        case onDisappear
        case userTapped(UserInfo)
        case resetHeader
    }

    enum Status: Equatable {
        case loading
        case loaded(LoadedStatus)
    }

    struct LoadedStatus: Equatable {
        let result: [UserInfo]
    }

    @Published private(set) var status: Status
    @Published var user: UserInfo?

    private let interactor: ContainerViewInteractor
    init(status: Status = .loading,
         interactor: ContainerViewInteractor) {
        self.status = status
        self.interactor = interactor
    }
}
// MARK: Public methods
extension ContainerViewModel {
    func actionHandler(_ event: Event) {
        switch event {
        case .onAppear:
            fetchUsers()
        case .onDisappear:
            print("onDisappear")
        case .userTapped(let user):
            userTapped(user)
        case .resetHeader:
            user = nil
        }
    }

    func fetchUsers() {
        Task { @MainActor in
            do {
                let result = try await interactor.useCase.getUsersList()
                status = .loaded(.init(result: result))
            } catch {
                print("Error: \(error)")
            }
        }
    }

    func userTapped(_ user: UserInfo) {
        self.user = user
        interactor.getUserInfo(user)
    }
}
