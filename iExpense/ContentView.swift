//
//  ContentView.swift
//  iExpense
//
//  Created by Khalid Kamil on 23/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        NavigationStack {
            VStack {
                Button("Tap count: \(tapCount)") {
                    tapCount += 1
                    UserDefaults.standard.set(self.tapCount, forKey: "Tap")
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
