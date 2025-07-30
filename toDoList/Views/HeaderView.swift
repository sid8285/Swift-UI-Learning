//
//  HeaderView.swift
//  toDoList
//
//  Created by Siddhant Srivastava on 7/29/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
            //In order:
            //The reason we use a ZStack is because we want the additional designs to stack out towards the user so in the "Z" direction
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.red)
                    .rotationEffect(Angle(degrees: 15))
                VStack {
                    Text("Welcome to ToDoList")
                    //.bold(true)
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    
                    Text("Get things done")
                        .bold(true)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                .padding(.top, 40)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(x: 0, y: -100)
        }
    }


#Preview {
    HeaderView()
}
