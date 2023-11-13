//
//  Layout.swift
//  WarmUp
//
//  Created by xinapse on 11/9/23.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            Text("Text Element 1")
                .font(.headline)
                .padding()
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
            Text("Text Element 3")
                .font(.body)
//                .font(.system(size: 30))
                .padding()
            
            HStack {
//                Button {
//                    
//                } label: {
//                    Text("Button 1")
//                        .padding()
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .cornerRadius(10)
//                }
                
//                Button {
//                    
//                } label: {
//                    Text("Button 2")
//                        .padding()
//                        .background(.green)
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .cornerRadius(10)
//                }
                
//                MyButton()
//                MyButton()
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .cyan)
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            }
        }
    }
}

//struct MyButton: View {
//    var body: some View {
//        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
//    }
//}

#Preview {
    Layout()
}
