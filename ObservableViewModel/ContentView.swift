//
//  ContentView.swift
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

final class ContentViewBuilder {
    func build() -> ContentView {
        let viewModel = ContentViewModel()
        let view = ContentView(viewModel: viewModel)
        return view
    }
}

struct ContentView: View {
    
    @State var viewModel: ContentViewModel
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Button(action: {
                    viewModel.nameHeader = "Header name"
                }, label: {
                    Text(viewModel.buttonHeaderTitle)
                        .bold()
                })
                Button(action: {
                    viewModel.counter += 1
                }, label: {
                    Text("Update counter x1")
                })
                Button(action: {
                    viewModel.nameFooter = "Footer name"
                }, label: {
                    Text("Add Footer title")
                })
                HeaderView()
                    .frame(height: proxy.size.height / 3)
                BodyView()
                    .frame(height: proxy.size.height / 3)
                FooterView()
                    .frame(height: proxy.size.height / 3)
                
            }
            .frame(maxWidth: .infinity)
            .padding()
        }
        .environment(viewModel)
    }
}

struct HeaderView: View {
    
    @Environment(ContentViewModel.self) var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Header: \(viewModel.nameHeader)")
                .font(.title)
        }
    }
}

struct BodyView: View {
    
    @Environment(ContentViewModel.self) var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Body: \(viewModel.counter)")
                .font(.title)
            Button(action: {
                viewModel.counter += 10
            }, label: {
                Text("Update counter x10")
            })
        }
    }
}

struct FooterView: View {
    
    @Environment(ContentViewModel.self) var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Footer: \(viewModel.nameFooter)")
                .font(.title)
            Button(action: {
                viewModel.buttonHeaderTitle = "no title"
            }, label: {
                Text("Update header button title")
            })
        }
    }
}

#Preview {
    ContentViewBuilder().build()
}
