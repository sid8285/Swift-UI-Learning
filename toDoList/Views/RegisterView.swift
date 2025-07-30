//
//  RegisterView.swift
//  toDoList
//
//  Created by Siddhant Srivastava on 7/25/25.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Register",
                           description: "Sign up!",
                           angle: -15,
                           backgroundColor: .orange)
                
                Spacer()
            }
//            .offset(y: -270)
            
            
        }
    }
}

#Preview {
    RegisterView()
}
