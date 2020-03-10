//
//  TimeListView.swift
//  aura
//
//  Created by tomo on 2020/03/10.
//  Copyright © 2020 tomo. All rights reserved.
//

import SwiftUI

struct AlarmListView: View {
    @EnvironmentObject var alarmListVM: AlarmListViewModel
    
    var body: some View {
        List {
            ForEach(alarmListVM.alarmList) { alarm in
                AlarmView(alarm: alarm)
            }
        }
    }
}

struct AlarmListView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmListView()
            .environmentObject(AlarmListViewModel())
    }
}
