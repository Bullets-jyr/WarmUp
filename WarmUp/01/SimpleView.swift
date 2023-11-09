//
//  SimpleView.swift
//  WarmUp
//
//  Created by xinapse on 11/9/23.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                // 이미지 사이즈 변경이 가능하고
                .resizable()
                .scaledToFit()
                // 이미지 사이즈 변경
                .frame(width: 200,height: 200)
            
            Text("헤드라인 입니다")
                .font(.headline)
                .bold()
                .padding()
            
            Text("서브헤드라인 입니다")
                .font(.subheadline)
                .padding()
            
            Text("바디 입니다")
                .font(.body)
                .padding()
            
            Button {
                
            } label: {
                Text("Click Me")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }
        }
    }
}

#Preview {
    SimpleView()
}
