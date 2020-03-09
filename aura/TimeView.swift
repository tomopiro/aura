//
//  TimeView.swift
//  aura
//
//  Created by tomo on 2020/03/09.
//  Copyright © 2020 tomo. All rights reserved.
//

import SwiftUI

struct TimeView: View {
    @ObservedObject var time: Time
    
    var body: some View {
        VStack {
            Toggle(isOn: $time.isOn) {
                Text(String(format: "%02d:%02d", time.hour, time.minute))
                    .bold()
                    .font(.largeTitle)
            }
            .padding(.horizontal)
            .frame(height: 80.0)
        }
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        let time = Time()
        time.hour = 22
        
        return TimeView(time: time)
    }
}

extension Date {
    func toDateFormat() -> String {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("Hm")
        return formatter.string(from: self)
    }
}
