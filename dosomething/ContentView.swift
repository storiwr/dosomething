//
//  ContentView.swift
//  dosomething
//
//  Created by Stephen on 12/27/20.
//

import SwiftUI

struct ContentView: View {
    @State private var inToday = true
    @State private var complete = true
    
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            if complete == true {
                Image(systemName: "checkmark.circle")
            } else {
                Image(systemName: "circle")
            }
            Text("Hello, world!")
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            if inToday == true {
                Image(systemName: "sun.max.fill")
            } else {
                Image(systemName: "sun.max")
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
