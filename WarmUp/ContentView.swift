//
//  ContentView.swift
//  WarmUp
//
//  Created by xinapse on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            Image(systemName: "globe")
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .padding(.top)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
