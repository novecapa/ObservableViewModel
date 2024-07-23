//
//  ContentView.swift
//  ObservableViewModel
//
//  Created by Josep Cerdá Penadés on 22/7/24.
//

import SwiftUI

struct ContentView: View {

    @State var contentViewModel: ContentViewModel

    var body: some View {
        GeometryReader { proxy in
            VStack {
                HStack {
                    Button(action: {
                        contentViewModel.nameHeader = "Header name"
                    }, label: {
                        Text(contentViewModel.buttonHeaderTitle)
                            .bold()
                            .foregroundColor(.white)
                            .padding(6)
                            .background(.pink)
                            .cornerRadius(6)
                    })
                    Button(action: {
                        contentViewModel.counter += 1
                    }, label: {
                        Text("Update counter x1")
                            .bold()
                            .foregroundColor(.white)
                            .padding(6)
                            .background(.pink)
                            .cornerRadius(6)
                    })
                    Button(action: {
                        contentViewModel.nameFooter = "Footer name"
                    }, label: {
                        Text("Add Footer title")
                            .bold()
                            .foregroundColor(.white)
                            .padding(6)
                            .background(.pink)
                            .cornerRadius(6)
                    })
                }
                .frame(height: 60)
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
        .environment(contentViewModel)
    }
}

#Preview {
    ContentViewBuilder().build()
}
