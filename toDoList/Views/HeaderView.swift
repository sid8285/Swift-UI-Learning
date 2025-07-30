//
//  HeaderView.swift
//  toDoList
//
//  Created by Siddhant Srivastava on 7/29/25.
//

import SwiftUI

struct HeaderView: View {
    //defining some variables so we can fully abstract this header
    let title : String
    let description : String
    let angle : Double
    let backgroundColor : Color

    var body: some View {
            //The reason we use a ZStack is because we want the additional designs to stack out towards the user so in the "Z" direction
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(backgroundColor)
                    .rotationEffect(Angle(degrees: angle))
                VStack {
                    Text(title)
                    //.bold(true)
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    
                    Text(description)
                        .bold(true)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                .padding(.top, 80)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 350)
            .offset(x: 0, y: -150)
        }
    }


#Preview {
    HeaderView(title: "Welcome to ToDoList",
               description: "Get things done",
               angle: 15,
               backgroundColor: .red)
}
