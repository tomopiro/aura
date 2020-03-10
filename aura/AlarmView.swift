//
//  TimeView.swift
//  aura
//
//  Created by tomo on 2020/03/09.
//  Copyright © 2020 tomo. All rights reserved.
//

import SwiftUI

struct AlarmView: View {
    @ObservedObject var alarm: Alarm
    
    var body: some View {
        VStack {
            Toggle(isOn: $alarm.isOn) {
                Text(String(format: "%02d:%02d", alarm.hour, alarm.minute))
                    .bold()
                    .font(.largeTitle)
            }
            .padding(.horizontal)
            .frame(height: 80.0)
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        let alarm = Alarm()
        alarm.hour = 22
        
        return AlarmView(alarm: alarm)
    }
}

extension Date {
    func toDateFormat() -> String {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("Hm")
        return formatter.string(from: self)
    }
}
