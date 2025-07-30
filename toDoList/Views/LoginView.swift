//
//  LoginView.swift
//  toDoList
//
//  Created by Siddhant Srivastava on 7/25/25.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        //Since the elements are aaranged vertically, the natural assumption would be to use a vertical stack to arrange the elements
        NavigationView{
            VStack{
                
                //Header
                HeaderView(title: "Welcome to ToDoList",
                           description: "Get things done",
                           angle: 15,
                           backgroundColor: .red
                )
                //Login Form
                
                Form{
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        //Attempt login
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                                .frame(height: 44)
                            Text("Login")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                    }
                    .padding()
                    
                }
                .frame(maxHeight: 253)
                .offset(x: 0, y: -50)
                
                
                //Create account
                
                VStack{
                    Text("New around here? Sign up!")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                .offset(x: 0, y: 60)
                
                Spacer()
                
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
