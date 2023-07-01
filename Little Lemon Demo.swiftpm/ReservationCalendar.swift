//
//  ReservationCalendar.swift
//  Little Lemon Demo
//
//  Created by Magno on 26/04/23.
//

import SwiftUI

struct ReservationCalendar: View {
    @State var currentDate = Date()
    
    var body: some View {
        Form {
            HStack {
                DatePicker(selection: $currentDate, displayedComponents: [.date, .hourAndMinute]) {}
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "pencil.and.outline")
                            .scaledToFit()
                        Text("Done")
                    }
                }
            }
            Text("Selected date: \(currentDate.formatted(date:.long, time: .complete))")
        }
    }
}
