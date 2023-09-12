//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by John Joseph Aguado on 9/5/23.
//

import SwiftUI

struct ContentView: View {
    @State var isToggleOn = false
    var body: some View {
        NavigationStack {
            VStack {
                Link(destination: URL(string: "https://www.apple.com")!) {
    //                Text("Apple Web site")
                    Image("swift")
                        .padding()
                }
                
                Color.green
                    .frame(width: 100, height: 100)
                
                Toggle("Toggle", isOn: $isToggleOn)
                
    //            AsyncImage(url: URL(string: "https://2.bp.blogspot.com/-j6GnzMTBe4w/XQcSyjNPHLI/AAAAAAAAc3I/BGKE5e_83-gcpFVYRtXH9MVsBIJSEyjBACLcBGAs/s1600/SwiftUI.png"))
                
                Button("A New Day") {
                    print("hello from the button!")
                }
                .background(.white)
                
    //            Group {
    //                Image(systemName: "globe")
    //                    .imageScale(.large)
    //                    .foregroundColor(.orange)
    //                Text("Hello, world!")
    //                Text("Hello, world!")
    //                Text("Hello, world!")
    //                Text("Hello, wforld!")
    //                Text("Hello, world!")
    //                Text("Hello, world!")
    //                Text("Hello, world!")
    //                Text("Hello, world!")
    //                Text("Hello, world!")
    //            }
            }
    //        .background(.blue)
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
    }
}
