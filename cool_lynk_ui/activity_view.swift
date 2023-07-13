//
//  activity_view.swift
//  cool_lynk_ui
//
//  Created by Alex Bearducci on 7/12/23.
//

import SwiftUI

struct activity_view: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
                          .fill(Color.purple.opacity(0.2))
                          .frame(width: 200.0, height: 200.0)
    }
}

struct activity_view_Previews: PreviewProvider {
    static var previews: some View {
        activity_view()
    }
}
