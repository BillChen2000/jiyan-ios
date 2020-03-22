//
//  ContentView.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/2.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = false
    @State var options = false
    var DialectData = dialectdata
    var body: some View {
        NavigationView{
            ScrollView {
                
                VStack {
                    Text("纪言")
                        .font(.custom("HYChangLiSongKeBen(Truing)", size: 60))
                        .foregroundColor(.white)
                    
                    Text("点击地图开始探索。")
                        .fontWeight(.heavy)
                        .padding(.top, 15)
                        .foregroundColor(.white)
                    Text("为你的方言做出贡献以点亮地图。")
                        .font(.custom("PingFang SC", size: 16))
                        .fontWeight(.heavy)
                        .padding(.top)
                        .foregroundColor(.white)
                    Image("MapGreenWithLights")
                    .resizable()
                        .frame(width:330,height: 350)
                        .padding(.trailing, 50.0)
                        .padding(.top, 25)
                        .offset(x: 0, y: -20)
                    
                    Button(action: {self.isShow.toggle()}) {
                        HStack {
                            if isShow == false {
                                Image(systemName: "chevron.down.square")
                                    .foregroundColor(.white)
                            }
                            else {
                                Image(systemName: "chevron.up.square")
                                    .foregroundColor(.white)
                            }
                            Text("前往探索列表")
                                .font(.custom("PingFang SC", size: 20))
                                .foregroundColor(.white)
                        }
                    }
                }.offset(y: isShow ? -70 : 0)
                    .animation(.easeInOut)

                if isShow
                {
                    VStack(alignment: .leading){
                        Text("探索")
                            .font(.custom("HYChangLiSongKeBen(Truing)", size: 60))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.bottom)
                            .padding(.trailing, 130)
                            .padding(.leading, 40)
                        
                        Text("全国各地的声音……")
                            .font(.custom("HYChangLiSongKeBen(Truing)", size: 30))
                            .foregroundColor(.white)
                            .padding(.leading,35)
                            .padding(.bottom, 10)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(DialectData) { item in
                                    
                                    CardView(text: item.title, pic: item.image, language: item.language, briefintro: item.briefintro, pronunciation: item.pronunciation, development: item.development, image_1: item.image_1, image_2: item.image_2, options: self.$options)
                                            .onTapGesture {
                                                self.options.toggle()
                                    }
                                }
                            }
                            .frame(height:380)
                        }.padding(.leading, 30)
                            .padding(.bottom, 12)
                            .animation(.easeInOut)
                        
                        
                    }.offset(y: isShow ? -85 : 0)
                        .animation(.easeInOut)
                }
            }
            .frame(height:680)
            .background(Image("矩形")
            .resizable()
            .aspectRatio(contentMode: .fill)
            )
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var text : String
    var pic : String
    var language : String
    var briefintro : String
    var pronunciation : String
    var development : String
    var image_1 : String
    var image_2 : String
    @Binding var options : Bool
    var body: some View {
        VStack {
            VStack{
                Text(text)
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 20))
                    .foregroundColor(.black)
                Image(pic)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200, height:250)
                    .cornerRadius(20)
                    .padding(.bottom,10)
                
                
            }
            .frame(width:230, height:320)
            .background(Color.white)
            .opacity(0.92)
            .cornerRadius(20)
            .shadow(color: .black, radius: 10, x:5, y:10)
            .padding(.trailing)
            
            if options {
                OptionsBar(language: language, briefintro: briefintro, pronunciation: pronunciation, development: development, image_1: image_1, image_2: image_2)
                
            }
        }
        
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

struct OptionsBar: View {
    var language : String
    var briefintro : String
    var pronunciation : String
    var development : String
    var image_1 : String
    var image_2 : String
    var body: some View {
        HStack {
            NavigationLink(destination: Explore_2(language: language, briefintro: briefintro, pronunciation: pronunciation, development: development, image_1: image_1, image_2: image_2))
            {
                Image(systemName: "plus.circle")
                .resizable()
                .frame(width:23, height: 23)
                .foregroundColor(.black)
            }
            .padding()
            
            NavigationLink(destination: Explore_3()){
                Image(systemName: "mic")
                    .resizable()
                    .frame(width:23, height: 23)
                    .foregroundColor(.black)
            }
           
            
            NavigationLink(destination:Contribution_1())
            {
                Image(systemName: "ellipsis.circle")
                .resizable()
                .frame(width:23, height: 23)
                .foregroundColor(.black)
            }
            .padding()
        }.frame(width: 150, height: 40)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 2, x:1, y:4)
    }
}
