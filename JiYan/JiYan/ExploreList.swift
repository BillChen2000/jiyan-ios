//
//  ExploreList.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/3.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct ExploreList: View {
    var DialectData = dialectdata
    var body: some View {
        NavigationView{
            VStack() {
                Text("探索")
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom)
                    .padding(.trailing, 170)
                    .padding(.leading,35)
                
                Text("全国各地的声音……")
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 30))
                    .foregroundColor(.white)
                    .padding(.leading,35)
                    .padding(.bottom, 10)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(DialectData) { item in
                            NavigationLink(destination: Explore_2(language: item.language, briefintro: item.briefintro, pronunciation: item.pronunciation, development: item.development, image_1: item.image_1, image_2: item.image_2)){
                                CardView(text: item.title, pic: item.image)
                            }
                        }
                    }
                    .frame(height:500)
                }.padding(.leading, 30)
                    .padding(.bottom, 120)
                .animation(.easeInOut)
            }
            .background(
                Image("矩形")
                    .resizable()
                    .frame(width:418,height: 1000)
            )
        }
        
        
    }
}

struct ExploreList_Previews: PreviewProvider {
    static var previews: some View {
        ExploreList()
    }
}

struct CardView: View {
    var text : String
    var pic : String
    var body: some View {
        VStack{
            Text(text)
                .font(.custom("HYChangLiSongKeBen(Truing)", size: 34))
                .foregroundColor(.black)
            Image(pic)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:240, height:350)
                .cornerRadius(20)
                .padding(.bottom,10)
            
        }
        .frame(width:300, height:450)
        .background(Color.white)
        .opacity(0.92)
        .cornerRadius(20)
        .shadow(color: .black, radius: 10, x:5, y:10)
        .padding(.trailing)
    }
}

struct Dialect : Identifiable{
    var id = UUID()
    var title : String
    var image : String
    var language : String
    var briefintro : String
    var pronunciation : String
    var development : String
    var image_1 : String
    var image_2 : String
}

let dialectdata = [
    Dialect(
        title: "上海·Shanghai",
        image: "Shanghai",
        language: "上海话",
        briefintro: "上海话，是吴语的一种方言，属于汉藏语系-汉语语族-吴语-太湖片-苏沪嘉小片。其在上海地区悠久历史中形成的方言，汇聚了吴越江南语言文化的精华，有深厚文化积淀。上海话承载上海这座城市的时代回音、文化血脉、历史记忆。",
        pronunciation: "据统计，上海市区声母有27个。上海郊区声母数与市区不同，如松江有34个声母，金山有32个声母。上海市区大多不分尖团音，而上海郊区的浦东、金山、嘉定、青浦、宝山等能够区分尖团音。",
        development: "从传承上海文化基因的角度出发，我们认为，当前在推广普通话的同时，也要传承好上海话。因为，语言文化的主体性和多样性都不可忽视，是互补双赢的关系。一个缺失本土文化的城市不可能成为世界文化的中心。上海要建成世界性的多语多文化的国际大都市，上海要在文化上屹立于世界又区别于其他国际都市，应有其鲜明的主色调，上海的本土文化特征应该是具体的、丰富的和感性的。",
        image_1: "introSH-1",
        image_2: "introSH-2"
    ),
    Dialect(
        title: "四川·Sichuan",
        image: "Sichuan",
        language: "四川话",
        briefintro: "上海话，是吴语的一种方言，属于汉藏语系-汉语语族-吴语-太湖片-苏沪嘉小片。其在上海地区悠久历史中形成的方言，汇聚了吴越江南语言文化的精华，有深厚文化积淀。上海话承载上海这座城市的时代回音、文化血脉、历史记忆。",
        pronunciation: "据统计，上海市区声母有27个。上海郊区声母数与市区不同，如松江有34个声母，金山有32个声母。上海市区大多不分尖团音，而上海郊区的浦东、金山、嘉定、青浦、宝山等能够区分尖团音。",
        development: "从传承上海文化基因的角度出发，我们认为，当前在推广普通话的同时，也要传承好上海话。因为，语言文化的主体性和多样性都不可忽视，是互补双赢的关系。一个缺失本土文化的城市不可能成为世界文化的中心。上海要建成世界性的多语多文化的国际大都市，上海要在文化上屹立于世界又区别于其他国际都市，应有其鲜明的主色调，上海的本土文化特征应该是具体的、丰富的和感性的。",
        image_1: "introSH-1",
        image_2: "introSH-2"

    )
]
