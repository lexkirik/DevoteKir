//
//  BackgroundImageView.swift
//  DevoteKir
//
//  Created by Test on 27.09.23.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFit()
            .ignoresSafeArea(.all)
    }
}

#Preview {
    BackgroundImageView()
}
