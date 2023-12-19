//
//  timeline_Test.swift
//  api_test
//
//  Created by hisame on 2023/12/10.
//
import SwiftUI

struct TimeLine: View {
    var body: some View {
        HStack{
            Spacer()
            Text("おすすめ")
                .font(.title2)
                .bold()
            Spacer()
            Text("フォロー中")
                .font(.title2)
                .bold()
            Spacer()
        }
        Spacer()
        Button(action: {
            Timeline_API()
        }
        ){
            Text("APIを取得する")
        }
    }
}


#Preview {
    TimeLine()
}


func Timeline_API(){
    print("Timeline_API has called.")
    let Server_URL = "voskey.icalo.net"
    let API_URL = URL(string: "https://\(Server_URL)/api/notes/featured")!
    let API_Key = "null"//ここにAPIキー
    let Body = "i = \(API_Key) , limit: 10 , offset: 0,"
    
    var request = URLRequest(url: API_URL)
    request.httpBody = Body.data(using: .utf8)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.allHTTPHeaderFields = ["Content-Type": "application/json"]
    request.httpMethod = "POST" //POST request
    
    let task = URLSession.shared.dataTask(with: request){ (data, response,error) in
        guard let data = data else{ return }
        do {
            let object = try JSONSerialization.jsonObject(with: data, options: [])
            print(object)
        } catch let error {
            print(error)
        }
    }
    task.resume()
}
