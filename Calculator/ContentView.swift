//
//  ContentView.swift
//  Calculator
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
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
            HStack {
                Button(action: {
                    totalNumber = "0"
                }, label: {
                    Text("C")
                        .frame(width: 80, height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                })
                Text("+/-")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Text("%")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("/")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            HStack {
                Button(action: {
                    if totalNumber == "0" {
                        totalNumber = "7"
                    } else {
                        totalNumber += "7"
                    }
                }, label: {
                    Text("7")
                        .frame(width: 80, height: 80)
                        .background(Color("NumberButton"))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                })
                Text("8")
                    .frame(width: 80, height: 80)
                    .background(Color("NumberButton"))
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("9")
                    .frame(width: 80, height: 80)
                    .background(Color("NumberButton"))
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("X")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            HStack {
                Text("4")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("5")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("6")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("-")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            HStack {
                Text("1")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("2")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("3")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("+")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            HStack {
                Text("0")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("0")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text(".")
                    .frame(width: 80, height: 80)
                    .background(.gray)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("=")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
        }
    }
}

#Preview {
    ContentView()
}
