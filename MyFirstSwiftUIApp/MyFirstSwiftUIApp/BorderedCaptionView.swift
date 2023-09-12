//
//  BorderedCaptionView.swift
//  MyFirstSwiftUIApp
//
//  Created by John Joseph Aguado on 9/5/23.
//

import SwiftUI

struct BorderedCaptionView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            newSectionView
            loginView
            groupView
                .onTapGesture {
                    print("from tap gesture closure")
                }
        }
    }
    
    @ViewBuilder var loginView: some View {
        VStack {
            Text("Enter username")
            TextField("Username", text: $username)
            Text("Enter password")
            TextField("Password", text: $password)
            Button("Login from View Builder") {
                print("login")
            }
        }
    }
    
    @ViewBuilder var newSectionView: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(BorderedCaption(foregroundColor: .orange))

        Button("New Bordered Button") {
            print("hello")
        }
        .modifier(BorderedCaption(foregroundColor: Color.yellow))
    }
    
    @ViewBuilder var groupView: some View {
        Image("swift")
            .modifier(BorderedCaption())

        ContentView()
            .modifier(BorderedCaption())
            .padding()

        Text("Bordered Caption from Extension")
            .borderedCaption()
    }
}

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text("Enter username")
            TextField("Username", text: $username)
            Text("Enter password")
            TextField("Password", text: $password)
            Button("Login View") {
                print("login")
            }
        }
    }
}

struct BorderedCaptionView_Previews: PreviewProvider {
    static var previews: some View {
        BorderedCaptionView()
        LoginView()
    }
}
