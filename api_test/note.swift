//
//  note.swift
//  api_test
//
//  Created by hisame on 2023/12/08.
//

import SwiftUI

struct Note: View {
    var body: some View {
        let Note_UserName: String = "氷雨"
        let Note_UserID: String = "@hisameroid@voskey.icalo.net"
        let Note_UserAvatar: String = "https://voskey.icalo.net/proxy/avatar.webp?url=https%3A%2F%2Fvoskeyfiles.icalo.net%2Fdrv%2F187aeae9-7787-473b-b3f0-f0eb0f3c9fc1.jpg&avatar=1"
        let Note_Sentence: String = "こんな感じのMisskeyクライアントが欲しいです..."
        
        
        HStack{
            EditableAsyncImage(urlString: Note_UserAvatar)
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width:65)
                .padding(10)
            VStack{
                HStack{
                    Text(Note_UserName)
                        .font(.headline)
                    Text(Note_UserID)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Spacer()
                }
                HStack{
                    Text(Note_Sentence)
                        .font(.callout)
                    Spacer()
                }
                Spacer()
                    .frame(height: 15)
                HStack{
                    Text("\(Image(systemName: "message"))  0")
                        .font(.subheadline)
                    Spacer()
                    Text("\(Image(systemName: "arrow.2.squarepath"))  1")
                        .font(.subheadline)
                    Spacer()
                    Text("\(Image(systemName: "heart"))  2")
                        .font(.subheadline)
                    Spacer()
                }
                
                Spacer()
                    .frame(height:15)
                Text("(この辺りにリアクションボタンを置きたい)")
                    .font(.caption)
            }
        }
        .padding(.vertical,10)
        .border(Color.gray)
    }
}

#Preview{
    Note()
}
