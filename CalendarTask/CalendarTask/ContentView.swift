//
//  ContentView.swift
//  CalendarTask
//
//  Created by Juho Montonen on 07/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @State private var wakeUp = Date()
    
    var body: some View {
        // Creating a Date
        let date = Date(timeIntervalSinceReferenceDate: 559769693)

        // Creating a Calendar with TimeZone
        let nyTimeZone = TimeZone(identifier: "America/New_York")
        var nyCalendar = Calendar(identifier: .gregorian)
        nyCalendar.timeZone = nyTimeZone!

        // Creating DateComponents from a Date
        let dateComponents = nyCalendar.dateComponents(Set(arrayLiteral: .timeZone, .year, .month, .day, .hour, .minute, .second), from: wakeUp)

        // Creating a Date from DateComponents
        let reassembledDate = nyCalendar.date(from: dateComponents)
        print("\(wakeUp)")
        
        // let now = Date()
        // let tomorrow = Date().addingTimeInterval(86400)
        // let range = now ... tomorrow
        
        // return DatePicker("Please enter a date", selection:
        // $wakeUp, displayedComponents:
        //    .hourAndMinute).labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
