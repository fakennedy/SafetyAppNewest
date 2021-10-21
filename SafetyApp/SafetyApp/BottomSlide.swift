//
//  ContentView.swift
//  MyBottomBoard
//
//  Created by Kim Kennedy on 16/09/2021.
//
//pod init, open cocoapod, pod 'BulletinBoard'


import SwiftUI

struct BottomSlide: View {
    @State private var showModal = false
    
    var body: some View {
        ZStack{
            Image("Kingdom")
                .resizable()
                .ignoresSafeArea()
            
            Button(action: {showModal = true}){
                Text("Click me")
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 40)
                    .background(Color.black.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .offset(y: -100)
            
            ModalView(isShowing: $showModal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .statusBar(hidden: true)
    }
}

struct BottomSlide_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
