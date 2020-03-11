//
//  TimeListView.swift
//  aura
//
//  Created by tomo on 2020/03/10.
//  Copyright © 2020 tomo. All rights reserved.
//

import Foundation
import UserNotifications

class AlarmListViewModel: ObservableObject {
    @Published var alarmList = CreateDefaultList()
    
    static private func CreateDefaultList() -> [Alarm] {
        var alarmList = [Alarm]()
        (0...23).forEach { i in
            let alarm = Alarm()
            alarm.hour = i
            alarm.minute = 0
            alarm.isOn = false
            alarmList.append(alarm)
        }
        return alarmList
    }
    
    init() {
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if granted {
                print("許可されました。")
            } else {
                print("許可されませんでした。")
            }
        }
    }
}
