//
//  ContentView.swift
//  counterApp
//
//  Created by 神山駿 on 2021/02/04.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack{
        ZStack{
            Image("counter")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(number)")
                .foregroundColor(.white)
            }
        Button(action: {self.number += 1}) {
            Text("カウント")
                .padding()
                .foregroundColor(.white)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(10.0)
             }
            Button(action: {self.number = 0}) {
                Text("リセット")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
