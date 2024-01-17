//
//  CheckBoxStyleView.swift
//  DevoteKir
//
//  Created by Test on 27.09.23.
//

import SwiftUI

struct CheckBoxStyleView: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                    feedback.notificationOccurred(.success)
                    if configuration.isOn {
                        playSound(sound: "sound-rise", type: "mp3")
                    } else {
                        playSound(sound: "sound-tap", type: "mp3")
                    }
                }
            configuration.label
        }
    }
}

#Preview {
    Toggle("Placeholder Label", isOn: .constant(false))
        .toggleStyle(CheckBoxStyleView())
        .padding()
        .previewLayout(.sizeThatFits)
}
