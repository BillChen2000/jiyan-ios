//
//  Explore_2.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/19.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct Explore_2: View {
    var language : String
    var briefintro : String
    var pronunciation : String
    var development : String
    var image_1 : String
    var image_2 : String
    @State var show_refference = false
    @State var show_recommendation = false
    
    var body: some View {
        ScrollView {
            VStack{
                Text(language)
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 50))
                    .foregroundColor(.white)
                    .padding(.top)
                Text("简介")
                    .font(.custom("PingFang SC", size: 28))
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.trailing,280)
                Text(briefintro)
                    .font(.custom("PingFang SC", size: 20))
                    .foregroundColor(.white)
                    .frame(width:340)
                    .padding(.top)
                Image(image_1)
                    .cornerRadius(20)
                Text("发音")
                    .font(.custom("PingFang SC", size: 28))
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.trailing,280)
                Text(pronunciation)
                    .font(.custom("PingFang SC", size: 20))
                    .foregroundColor(.white)
                    .frame(width:340)
                    .padding(.top)
                Image(image_2)
                    .cornerRadius(20)
                Text("发展")
                    .font(.custom("PingFang SC", size: 28))
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.trailing,280)
                Text(development)
                    .font(.custom("PingFang SC", size: 20))
                    .foregroundColor(.white)
                    .frame(width:340)
                    .padding(.top)
                
                VStack {
                    Button(action: {self.show_refference.toggle()}) {
                    Text("参考文献")
                        .frame(width:300, height:50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .opacity(0.9)
                    }.popover(isPresented: $show_refference) {
                     Text("暂无")
                    }
                    .padding(.top, 50)
                    
                    Button(action: {self.show_recommendation.toggle()}) {
                    Text("推荐资料")
                        .frame(width:300, height:50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .opacity(0.9)
                    }.popover(isPresented: $show_recommendation) {
                    Text("暂无")
                    }
                    .padding(.top)
                    .padding(.bottom,90)
                }
                
                
            }
            .frame(width:450)
            .frame(minHeight:0, maxHeight: .infinity)
            .background(Image("矩形")
            .resizable()
            .aspectRatio(contentMode: .fill))
        }
    }
}

struct Explore_2_Previews: PreviewProvider {
    static var previews: some View {
        Explore_2(
            language: "上海话",
            briefintro: "上海话，是吴语的一种方言，属于汉藏语系-汉语语族-吴语-太湖片-苏沪嘉小片。其在上海地区悠久历史中形成的方言，汇聚了吴越江南语言文化的精华，有深厚文化积淀。上海话承载上海这座城市的时代回音、文化血脉、历史记忆。",
            pronunciation: "据统计，上海市区声母有27个。上海郊区声母数与市区不同，如松江有34个声母，金山有32个声母。上海市区大多不分尖团音，而上海郊区的浦东、金山、嘉定、青浦、宝山等能够区分尖团音。",
            development: "从传承上海文化基因的角度出发，我们认为，当前在推广普通话的同时，也要传承好上海话。因为，语言文化的主体性和多样性都不可忽视，是互补双赢的关系。一个缺失本土文化的城市不可能成为世界文化的中心。上海要建成世界性的多语多文化的国际大都市，上海要在文化上屹立于世界又区别于其他国际都市，应有其鲜明的主色调，上海的本土文化特征应该是具体的、丰富的和感性的。",
            image_1: "introSH-1",
            image_2: "introSH-2"
        )
    }
}
