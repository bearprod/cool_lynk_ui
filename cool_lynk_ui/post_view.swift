//
//  post_view.swift
//  cool_lynk_ui
//
//  Created by Alex Bearducci on 7/12/23.
//

import SwiftUI

struct post_view: View {
    var body: some View {
        Image("me")
            .resizable()
            .frame(width: 180.0, height: 180.0)
            //.shadow(color: .pink, radius: 8)
            .overlay(
                            Circle()
                                .stroke(Color.purple, lineWidth: 6)
                                .blur(radius: 4)
                        )
    }
}

struct post_view_Previews: PreviewProvider {
    static var previews: some View {
        post_view()
    }
}
