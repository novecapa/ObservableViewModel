//
//  UsersUseCase.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 23/7/24.
//

import Foundation

protocol UsersUseCaseProtocol {
    func getUsersList() async throws -> [UserInfo]
}

final class UsersUseCase: UsersUseCaseProtocol {

    func getUsersList() async throws -> [UserInfo] {
        try await Task.sleep(nanoseconds: 2_000_000_000)
        return UserInfo.mock
    }
}
