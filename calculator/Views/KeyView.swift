//
//  KeyView.swift
//  calculator
//
//  Created by Calin Rafa on 20.03.2023.
//

import SwiftUI

struct KeyView: View {
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperatio: Operation = .none
    @State private var changeColor: Bool = false
    
    let buttons : [[Keys]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .substract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(changeColor ? Color("num") : Color.pink.opacity(0.2))
                    .scaleEffect(changeColor ? 1.5 : 1.0)
                    .frame(width: 350, height: 280)
                    .animation(.easeInOut.repeatForever().speed(0.17), value: changeColor)
                    .onAppear(perform: {
                        self.changeColor.toggle()
                    })
                    .overlay(
                        Text(value)
                            .font(.system(size: 100))
                            .foregroundColor(.black)
                    )
            }.padding()
            ForEach(buttons, id: \.self) { row in
                HStack(spacing: 10){
                    ForEach(row, id: \.self) { elem in
                        Button {
                            self.didTap(button: elem)
                        } label: {
                            Text(elem.rawValue)
                                .font(.system(size: 30))
                                .frame(width: 60, height: 60)
                                .background(elem.buttonColor)
                                .foregroundColor(.black)
                                .cornerRadius(30)
                                .shadow(color: .purple.opacity(0.8), radius: 30)
                        }

                    }
                }
                .padding(.bottom, 4)
            }
        }
    }
    
    func didTap(button: Keys) {
        print("Apasat!")
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView()
    }
}
