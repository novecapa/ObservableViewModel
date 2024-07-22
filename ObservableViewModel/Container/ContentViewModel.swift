//
//  ContentViewModel.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

@Observable
final class ContentViewModel {
    var counter: Int = 0
    var buttonHeaderTitle: String = "Add header title"
    var nameFooter: String = ""
    var nameHeader: String = ""
}
