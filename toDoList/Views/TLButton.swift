//
//  ButtonView.swift
//  toDoList
//
//  Created by Siddhant Srivastava on 8/1/25.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            //Attempt login
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(background)
                    .frame(height: 44)
                Text(title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    TLButton(title: "Login", background: .blue) {
        //Action to be implemented
    }
}
