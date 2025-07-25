//
//  toDoListApp.swift
//  toDoList
//
//  Created by Siddhant Srivastava on 7/22/25.
//
import FirebaseCore
import SwiftUI

@main
struct toDoListApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
