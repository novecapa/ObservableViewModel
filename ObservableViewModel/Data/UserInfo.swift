//
//  UserInfo.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 23/7/24.
//

import Foundation

struct UserInfo: Identifiable, Equatable {
    let id: UUID = UUID()
    let name: String
    let address: String
}
// MARK: Mock data
extension UserInfo {
    static let mock: [UserInfo] = [
        UserInfo(name: "Alice", address: "123 Main St, Springfield"),
        UserInfo(name: "Bob", address: "456 Elm St, Shelbyville"),
        UserInfo(name: "Charlie", address: "789 Oak St, Capital City"),
        UserInfo(name: "David", address: "101 Maple St, Ogdenville"),
        UserInfo(name: "Eve", address: "202 Birch St, North Haverbrook"),
        UserInfo(name: "Frank", address: "303 Pine St, Brockway"),
        UserInfo(name: "Grace", address: "404 Cedar St, Cypress Creek"),
        UserInfo(name: "Hannah", address: "505 Walnut St, West Springfield"),
        UserInfo(name: "Ivy", address: "606 Ash St, Springfield Heights"),
        UserInfo(name: "Jack", address: "707 Willow St, Evergreen Terrace")
    ]
}
