//
//  InfoView.swift
//  Slot Game
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI
internal import AVFAudio

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Game")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Gali Lee")
                    FormRowView(firstItem: "Designer", secondItem: "Gali Lee")
                    FormRowView(firstItem: "Music", secondItem: "Lebron James")
                    FormRowView(firstItem: "Website", secondItem: "https://github.com/gali981101")
                    FormRowView(firstItem: "Copyright", secondItem: "© All rights reserved.")
                    FormRowView(firstItem: "Version", secondItem: "1.0.1")
                }
            }
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button(action: {
                audioPlayer?.stop()
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
                .padding(.top, 30)
                .padding(.trailing, 20)
                .accentColor(Color.secondary)
            , alignment: .topTrailing
        )
        .onAppear(perform: {
            playSound(sound: "background-music", type: "mp3")
        })
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem).foregroundColor(Color.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

#Preview {
    InfoView()
}
