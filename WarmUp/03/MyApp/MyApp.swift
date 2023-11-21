//
//  MyApp.swift
//  WarmUp
//
//  Created by xinapse on 11/21/23.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        TabView {
            //
            NavigationStack {
                List {
                    NavigationLink {
                        Text("첫 번째 하위페이지 입니다")
                    } label: {
                        Text("첫 번째 하위페이지")
                    }
                    
                    NavigationLink {
                        Text("두 번째 하위페이지 입니다")
                    } label: {
                        Text("두 번째 하위페이지")
                    }
                    
                    NavigationLink {
                        Text("세 번째 하위페이지 입니다")
                    } label: {
                        Text("세 번째 하위페이지")
                    }
                    
                    NavigationLink {
                        Text("네 번째 하위페이지 입니다")
                    } label: {
                        Text("네 번째 하위페이지")
                    }
                }
                .navigationTitle("리스트")
            }
            .tabItem {
                    Label("first", systemImage: "tray.and.arrow.down.fill")
                }
            
            //
            Text("두 번째 페이지")
                .tabItem {
                    Label("second", systemImage: "tray.and.arrow.down.fill")
                }
            
            //
            Text("세 번째 페이지")
                .tabItem {
                    Label("third", systemImage: "tray.and.arrow.down.fill")
                }
            
            //
            Text("네 번째 페이지")
                .tabItem {
                    Label("foutth", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                //
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("온보딩1")
                }
                
                ZStack {
                    Color.green.ignoresSafeArea()
                    Text("온보딩2")
                }
                
                ZStack {
                    Color.gray.ignoresSafeArea()
                    VStack {
                        Text("온보딩3")
                        Button {
                            showModal = false
                        } label: {
                            Text("Start")
                        }
                    }
                }
            }
            .tabViewStyle(.page)
        })
        .onAppear {
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
