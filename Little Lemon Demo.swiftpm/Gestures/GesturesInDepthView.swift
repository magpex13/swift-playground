//
//  SwiftUIView.swift
//  
//
//  Created by Magno on 28/04/23.
//

import SwiftUI

struct GesturesInDepthView: View {
    @State private var offsetValue = CGSize.zero
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    @State private var amountm = 0.0
    @State private var finalAmountm = 1.0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            /*.onTapGesture(count: 3) {
                print("Tapped!")
            }*/
            .onLongPressGesture(minimumDuration: 3, maximumDistance: 15, perform: {
                print("Long press!")
            }, onPressingChanged: {state in
                print(state)
            })
        Image("lastofus")
            /*.offset(offsetValue)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        offsetValue = gesture.translation
                    })
            )*/
            /*.rotationEffect(amount + finalAmount)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        amount = value
                    }
                    .onEnded { value in
                        finalAmount += amount
                        amount = .zero
                    }
            )*/
            .scaleEffect(finalAmountm + amountm)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        amountm = value - 1
                    }
                    .onEnded { value in
                        finalAmountm += amountm
                        amountm = 0
                    }
            )
    }
}
