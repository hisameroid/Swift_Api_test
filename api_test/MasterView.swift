//
//  MasterView.swift
//  api_test
//
//  Created by hisame on 2023/12/19.
//

import SwiftUI


struct MasterPreview: View{
    var body: some View{
        NavigationView{
            MasterView()
        }
    }
}

struct MasterView: View {
    @State var Home = true
    @State var Profile = false
    
    var body: some View {
        HStack{
            VStack{
                NavigationLink(destination: TimeLine(), isActive: $Home){
                    EmptyView()
                }
                NavigationLink(destination: api_test.Profile(), isActive: $Profile){
                    EmptyView()
                }
                
                
                
                HStack{
                    Spacer()
                        .frame(width: 20)
                    Button(action:{
                        Home.toggle()
                    }){
                        Text("\(Image(systemName: "house"))　ホーム")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.black)
                    }
                    Spacer()
                }.padding(.vertical , 7)
                
                HStack{
                    Spacer()
                        .frame(width: 20)
                    Button(action:{
                        Profile.toggle()
                    }){
                        Text("\(Image(systemName: "magnifyingglass"))　話題を検索")
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                    Spacer()
                }.padding(.vertical , 7)
                
                HStack{
                    Spacer()
                        .frame(width: 20)
                    Button(action:{
                        Profile.toggle()
                    }){
                        Text("\(Image(systemName: "person"))　プロフィール")
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                    Spacer()
                }.padding(.vertical , 7)
                
                HStack{
                    Spacer()
                    Button(action:{
                        Profile.toggle()
                    }){
                        Text("ノートする")
                            .frame(width: 250,height:60)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .background(Color(.blue))
                            .cornerRadius(30)
                    }
                    Spacer()
                }.padding(.vertical , 7)
                
                
                
                
                
                
                
            }
            .navigationBarHidden(true)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "magnifyingglass")
                }
            }
        }
        Trend()
            .frame(width: 100)
    }
}

#Preview {
    MasterPreview()
}


struct Trend: View {
    var body: some View {
        Text("トレンド")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
