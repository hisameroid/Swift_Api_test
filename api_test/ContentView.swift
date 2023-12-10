//
//  ContentView.swift
//  api_test
//
//  Created by hisame on 2023/12/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView{
            
            VStack {
                let Profbanner: String = "https://voskeyfiles.icalo.net/drv/webpublic-221417d6-e930-4561-9287-e910eda443c5.png"
                let ProfAvatar: String = "https://voskey.icalo.net/proxy/avatar.webp?url=https%3A%2F%2Fvoskeyfiles.icalo.net%2Fdrv%2F187aeae9-7787-473b-b3f0-f0eb0f3c9fc1.jpg&avatar=1"
                let followers: Int = 39
                let following: Int = 19
                
                HStack{
                    EditableAsyncImage(urlString: Profbanner)
                        .scaledToFit()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        //.cornerRadius(8)
                }
                
                HStack{
                    EditableAsyncImage(urlString:ProfAvatar)
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 70)
                        .padding(5)
                        
                    Spacer()
                    
                    Button(action: {
                                        print("follow request")
                                    }) {
                                        Text("フォローする")
                                            .font(.subheadline)
                                            .bold()
                                            .frame(width: 160, height: 35)
                                            .foregroundColor(Color.white)
                                            .background(Color.black)
                                            .cornerRadius(25)
                                        
                                    }.padding(.trailing , 20)
                }
                
                VStack{
                    HStack{
                        Text("氷雨")
                            .bold()
                            .font(.title2)
                        Spacer()
                    }
                    
                    HStack{
                        
                        Text("@hisameroid@voskey.icalo.net")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 15)
                    
                    HStack{
                        Text("ボイスロイドが好きです。")
                            .font(.subheadline)
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height:10)
                    
                    HStack{
                        Text("\(Image(systemName: "link"))https://hisameroid.github.io/links/")
                            .font(.footnote)
                        Spacer()
                    }
                    
                    HStack{
                        Text("\(Image(systemName: "link"))https://x.com/hisameroid")
                            .font(.footnote)
                        Spacer()
                    }
                    
                    HStack{
                        Text("\(Image(systemName: "link"))https://www.pixiv.net/users/94934368")
                            .font(.footnote)
                        
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height:10)
                    
                    HStack{
                        Text("\(following) フォロー中")
                            .font(.subheadline)
                        Text("\(followers) フォロワー")
                            .font(.subheadline)
                        Spacer()
                    }
                }.padding(.horizontal)
                
                Spacer()
                    .frame(height:10)
                
                
                HStack{
                    Spacer()
                    Text("ノート")
                        .font(.subheadline)
                    Spacer()
                    Text("メディア")
                        .font(.subheadline)
                    Spacer()
                    Text("リアクション")
                        .font(.subheadline)
                    Spacer()
                }
                
            }
            //.padding()
            
            Note()
            Note()
            Note()
        }
        
    }
}

#Preview {
    ContentView()
}


struct EditableAsyncImage: View { //非同期で画像を取得
    let urlString: String
    var body: some View{
        if let url = URL(string: urlString) {
            AsyncImage(url: url) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
        }
    }
}
