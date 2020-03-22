//
//  Introduction.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/4.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct Introduction: View {
    @State var show_refference = false
    @State var show_recommendation = false
    var language : String
    var briefintro : String
    var pronunciation : String
    var development : String
    var image_1 : String
    var image_2 : String
    var body: some View {
        ScrollView {
            VStack {
    
                ItroContent(
                    intro_title: language,
                    intro_briefintro: briefintro,
                    intro_pronunciation: pronunciation,
                    intro_development: development,
                    image1: image_1,
                    image2: image_2
                )
                
                
                VStack {
                    VStack {
                        BottomforIntro(
                            show: $show_refference,
                            label: "参考文献",
                            content: "中国社会科学院.中国语言地图集.1987.；沪语研究专家钱乃荣：上海话里的城市文化密码；钱乃荣．《当代吴语研究》：上海教育出版社，1960；江苏省和上海市方言调查组．《江苏省和上海市方言概况》：江苏人民出版社，1960；"
                        )
                            .padding()
                        BottomforIntro(show: $show_recommendation,
                                       label: "推荐资料",
                                       content: "暂无"
                        )
                    }
                }
                .padding(.bottom,400)
            }.frame(width:500)
                .background(
                    Image("矩形")
                        .resizable()
                        .frame(minHeight:0, maxHeight: .infinity)
            )
        }.frame(height:910)
    }
}

struct Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Introduction(language: "上海话",
        briefintro: "上海话，是吴语的一种方言，属于汉藏语系-汉语语族-吴语-太湖片-苏沪嘉小片。其在上海地区悠久历史中形成的方言，汇聚了吴越江南语言文化的精华，有深厚文化积淀。上海话承载上海这座城市的时代回音、文化血脉、历史记忆。",
        pronunciation: "据统计，上海市区声母有27个。上海郊区声母数与市区不同，如松江有34个声母，金山有32个声母。上海市区大多不分尖团音，而上海郊区的浦东、金山、嘉定、青浦、宝山等能够区分尖团音。",
        development: "从传承上海文化基因的角度出发，我们认为，当前在推广普通话的同时，也要传承好上海话。因为，语言文化的主体性和多样性都不可忽视，是互补双赢的关系。一个缺失本土文化的城市不可能成为世界文化的中心。上海要建成世界性的多语多文化的国际大都市，上海要在文化上屹立于世界又区别于其他国际都市，应有其鲜明的主色调，上海的本土文化特征应该是具体的、丰富的和感性的。",
        image_1: "introSH-1",
        image_2: "introSH-2"
        )
    }
}

struct BottomforIntro: View {
    @Binding var show : Bool
    var label : String
    var content : String
    var body: some View {
        Button(action: {
            self.show.toggle()
        }, label: {
            Text(label)
                .font(.custom("PingFang SC", size: 20))
                .foregroundColor(.black)
                .frame(width:310,height:50)
                .background(Color.white)
                .opacity(0.8)
                .cornerRadius(10)
        }).popover(isPresented: self.$show,attachmentAnchor:.rect(.bounds),arrowEdge: .bottom ) {
            Button(action: {
                self.show = false
            }) {
                
                HStack {
                    Text(self.content)
                        .padding()
                        .font(.custom("PingFang SC", size: 19))
                        .frame(width:380)
                }
            
            }
            
        }
    }
}

struct ItroContent: View {
    var intro_title : String
    var intro_briefintro : String
    var intro_pronunciation : String
    var intro_development : String
    var image1 : String
    var image2 : String
    var body: some View {
        VStack(alignment: .leading) {
            Text(intro_title)
                .font(.custom("HYChangLiSongKeBen(Truing)", size: 40))
                .padding(.leading, 110)
                .padding(.bottom, 30)
                .padding(.top, 45)
                .foregroundColor(.white)
            Text("简介")
                .font(.custom("PingFang SC", size: 26))
                .bold()
                .padding(.bottom, 10)
                .foregroundColor(.white)
            Text(intro_briefintro)
                .font(.custom("PingFang SC", size: 19))
                .frame(width:342)
                .foregroundColor(.white)
            Image(image1)
                .padding()
            Text("发音")
                .font(.custom("PingFang SC", size: 26))
                .bold()
                .padding(.bottom, 10)
                .foregroundColor(.white)
            Text(intro_pronunciation)
                .font(.custom("PingFang SC", size: 19))
                .frame(width:342)
                .foregroundColor(.white)
            Image(image2)
                .padding()
            Text("发展")
                .font(.custom("PingFang SC", size: 26))
                .bold()
                .padding(.bottom, 10)
                .foregroundColor(.white)
            Text(intro_development)
                .font(.custom("PingFang SC", size: 19))
                .frame(width:342)
                .foregroundColor(.white)
                .padding(.bottom)
        }
    }
}
