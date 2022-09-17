//
//  ContentView.swift
//  MiniApp95-ManyAlert-SwiftUI
//
//  Created by 前田航汰 on 2022/09/17.
//

import SwiftUI

struct ContentView: View {
    @State var showingAlert1 = false
    @State var showingAlert2 = false
    @State var showingAlert3 = false

    var body: some View {
        VStack {
            Button("Alert1") {
                self.showingAlert1 = true
            }
            .alert(isPresented: $showingAlert1) {
                Alert(title: Text("アラート１"),
                      message: Text("アラート１が表示中"),
                      dismissButton: .default(Text("OK")))
            }

            Button("Alert2") {
                self.showingAlert2 = true
            }
            .alert(isPresented: $showingAlert2) {
                Alert(title: Text("アラート２"),
                      message: Text("アラート２が表示中"),
                      dismissButton: .default(Text("OK")))
            }


            Button("Alert3") {
                self.showingAlert3 = true
            }
            .alert(isPresented: $showingAlert3) {
                Alert(title: Text("アラート３"),
                      message: Text("アラート３が表示中"),
                      dismissButton: .default(Text("OK")))
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
