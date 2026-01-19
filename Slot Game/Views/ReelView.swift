//
//  ReelView.swift
//  Slot Game
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct ReelView: View {
    
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}


#Preview {
    ReelView()
}
