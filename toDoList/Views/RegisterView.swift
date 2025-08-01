//
//  RegisterView.swift
//  toDoList
//
//  Created by Siddhant Srivastava on 7/25/25.
//

import SwiftUI

struct RegisterView: View {
    @State var email = ""
    @State var name = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Register",
                           description: "Sign up!",
                           angle: -15,
                           backgroundColor: .orange)
                
                Form{
                    TextField("Full Name", text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled(true)
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Sign up", background: .blue, action: {
                        
                    })
                }
                .offset(y: -50)
                .frame(maxHeight: 253)
                
                Spacer()
            }
//            .offset(y: -270)
            
            
        }
    }
}

#Preview {
    RegisterView()
}
