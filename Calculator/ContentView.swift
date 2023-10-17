//
//  ContentView.swift
//  Calculator
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

enum ButtonType {
    case one, two, three, four, five, six, seven, eight, nine, zero
    case dot, equal, plus, minus, multiply, devide
    case percent, opposite, clear
    
    var buttonDisplayName: String {
        switch self {
        case .one : return "1"
        case .two : return "2"
        case .three : return "3"
        case .four : return "4"
        case .five : return "5"
        case .six : return "6"
        case .seven : return "7"
        case .eight : return "8"
        case .nine : return "9"
        case .zero : return "0"
        case .dot : return "."
        case .equal : return "="
        case .plus : return "+"
        case .minus : return "-"
        case .multiply: return "*"
        case .devide : return "/"
        case .percent : return "%"
        case .opposite : return "+/-"
        case .clear : return "C"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .devide, .equal, .minus, .multiply, .plus : return Color.orange
        case .clear, .opposite, .percent : return Color.gray
        default : return Color("NumberButton")
        }
    }
    
    var foreColor: Color {
        switch self {
        case .clear, .opposite, .percent : return Color.black
        default : return Color.white
        }
    }
}

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    
    private let buttonData: [[ButtonType]] = [
        [.clear, .opposite, .percent, .devide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .zero, .dot, .equal]
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
                                totalNumber = item.buttonDisplayName
                            } else {
                                totalNumber += item.buttonDisplayName
                            }
                        }, label: {
                            Text(item.buttonDisplayName)
                                .frame(width: 80, height: 80)
                                .background(item.backgroundColor)
                                .cornerRadius(40)
                                .foregroundColor(item.foreColor)
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
