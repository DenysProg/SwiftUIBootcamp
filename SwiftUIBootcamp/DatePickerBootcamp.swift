//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 01.03.2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date =  Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected date is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            //        DatePicker("Select a Date", selection: $selectedDate)
            
            //        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .tint(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //                GraphicalDatePickerStyle()
                    //                WheelDatePickerStyle()
                )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
