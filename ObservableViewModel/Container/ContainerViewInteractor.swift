//
//  ContainerViewInteractor.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 23/7/24.
//

import Foundation

final class ContainerViewInteractor {

    let useCase: UsersUseCaseProtocol
    init(useCase: UsersUseCaseProtocol) {
        self.useCase = useCase
    }

    func fetchUsers() async throws -> [UserInfo] {
        try await useCase.getUsersList()
    }

    func getUserInfo(_ user: UserInfo) {
        print("\(user)")
    }
}
