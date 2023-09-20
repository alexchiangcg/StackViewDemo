//
//  ContentView.swift
//  StackViewDemo
//
//  Created by 江德宣 on 2023/9/19.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundColor(.indigo)
                Text("Get help from experts in 15 minutes")
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                Image("user1")
                    .resizable()// 延伸圖片來填滿可用區域
                    .scaledToFit()// 保持原來圖片的長寬比
                Image("user2")
                    .resizable()
                    .scaledToFit()
                Image("user3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal, 20)
            
            Text("Need help with swift problems? Register!")
            
            // 留白
            Spacer()
            
            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            } else {
                VSignUpButtonGroup()
            }
        }
        .padding(.top, 30)
        .background {
            Image("background")
                .resizable()
                .ignoresSafeArea() // 全螢幕
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //        ContentView()
        //        .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
        //        .previewDisplayName("iPhone 12 Pro")    }
        
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro")) .previewDisplayName("iPhone 14 Pro")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro")) .previewDisplayName("iPhone 14 Pro left") .previewInterfaceOrientation(.landscapeLeft)
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max")) .previewDisplayName("iPhone 14 Pro Max")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
                .previewDisplayName("iPad Air")
        }
    }
}

struct VSignUpButtonGroup: View {
    var body: some View {
        VStack {
            Button {
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(30)
            Button {
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(30)
        }
    }
}

struct HSignUpButtonGroup: View {
    var body: some View {
        HStack {
            Button {
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            Button {
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        } }
}
