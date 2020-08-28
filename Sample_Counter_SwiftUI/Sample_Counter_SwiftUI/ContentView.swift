//
//  ContentView.swift
//  Sample_Counter_SwiftUI
//
//  Created by Akane Yasuda on 2020/07/19.
//  Copyright © 2020 Pochi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var countText = "0"

    var body: some View {
        VStack(spacing:50){
            Text(countText)
                .font(.largeTitle)
                .fontWeight(.black)
            VStack(spacing:20){
                Button(action: {
                    var count = Int(self.countText)
                    count = count! + 1
                    self.countText = String(count!)
                }) {
                    Text("add")
                }
                Button(action: {
                    var count = Int(self.countText)
                    count = count! - 1
                    self.countText = String(count!)
                }) {
                    Text("minus")
                }
                Button(action: {
                    self.countText = "0"
                }) {
                    Text("reset")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
