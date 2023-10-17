//
//  ContentView.swift
//  Calculator
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    private let buttonData: [[String]] = [
        ["C", "+/-", "%", "/"],
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "0", ".", "="]
    ]
    
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Spacer()
                Text(totalNumber)
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 70))
            }
            ForEach(buttonData, id: \.self) { line in
                HStack {
                    ForEach(line, id: \.self) {item in
                        Button(action: {
                            if totalNumber == "0" {
                                totalNumber = item
                            } else {
                                totalNumber += item
                            }
                        }, label: {
                            Text(item)
                                .frame(width: 80, height: 80)
                                .background(Color("NumberButton"))
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
