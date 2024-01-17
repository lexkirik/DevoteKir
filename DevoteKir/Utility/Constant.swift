//
//  Constant.swift
//  DevoteKir
//
//  Created by Test on 26.09.23.
//

import SwiftUI
//formatter
let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

//ui
var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
//ux
let feedback = UINotificationFeedbackGenerator()
