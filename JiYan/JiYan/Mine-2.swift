//
//  Mine-2.swift
//  Mine
//
//  Created by 于书懿 on 2020/2/18.
//  Copyright © 2020 于书懿. All rights reserved.
//

import SwiftUI

struct Mine_2: View {
    @State var number1 = "203"
    @State var number2 = "689"
    @State var number3 = "16"
    @State var number4 = "365"
    @State var number5 = "128"
    @State var number6 = "1243"
    @State var text1 = "次学习跟读"
    @State var text2 = "次被人听见"
    @State var text3 = "次社区建设"
    @State var text4 = "条语音贡献"
    @State var text5 = "条文字贡献"
    @State var text6 = "次评分互动"
    
    
    
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Titlewords().offset(x: -30, y: 0)
                HStack(spacing:25) {
                    VStack(spacing:20){
                        cubber(number: $number1, text: $text1)
                        cubber(number: $number2, text: $text2)
                        cubber(number: $number3, text: $text3)
                    }.offset(x: 0, y: -30)
                    VStack(spacing:20){
                        cubber(number: $number4, text: $text1)
                        cubber(number: $number5, text: $text2)
                        cubber(number: $number6, text: $text3)
                        symbols()
                    }.offset(x: 0, y: -60)
                }
            }
            tabbar()
            
    
        }
        
        .background(Image("b3")
        .resizable()
        .frame(width: 420, height: 913))
        
    }
}

struct Mine_2_Previews: PreviewProvider {
    static var previews: some View {
        Mine_2()
    }
}

struct cubber: View {
    @Binding var number : String
    @Binding var text : String
    var body: some View {
        VStack(alignment: .center) {
            Text(number)
                .font(.custom("HYChangLiSongKeBen(Truing)",size:65))
                .foregroundColor(Color("darkgreen"))
            Text(text)
                .foregroundColor(Color("darkgreen"))
        }
        .padding(.bottom,30)
        .frame(width: 160, height: 160)
        .background(Color.white.opacity(0.7))
        .cornerRadius(20)
    }
}

struct Titlewords: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 30) {
            VStack(alignment: .leading,spacing: -5) {
                Text("别来无恙")
                    .foregroundColor(.white)
                    .font(.custom("HYChangLiSongKeBen(Truing)",size:30))
                HStack {
                    Text("BillChen2000")
                        .foregroundColor(.white)
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                    Text("川")
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:25))
                        .frame(width: 33, height: 33)
                        .foregroundColor(.white)
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(8)
                        .offset(x: 55)
                }
            }
            
            VStack(alignment: .leading) {
                Text("感谢有你，")
                    .foregroundColor(.white)
                Text("你在纪言的362天里")
                    .foregroundColor(.white)
            }
            
        }
    }
}

struct symbols: View {
    var body: some View {
        HStack(spacing:20){
            VStack(alignment: .center) {
                Image("收藏")
                Text("收藏")
                    .foregroundColor(.white)
            }
            VStack(alignment: .center) {
                Image("设置")
                Text("设置")
                    .foregroundColor(.white)
            }
            VStack(alignment: .center) {
                Image("关于")
                Text("关于")
                    .foregroundColor(.white)
            }
        }
    }
}

struct tabbar: View {
    var body: some View {
        HStack(alignment: .center){
            VStack {
                
                Text("贡献")
                    .foregroundColor(Color("灰"))
                    .offset(x: -5, y: 30)
                
            }.background(Image("贡献").resizable().frame(width: 160, height: 160)).offset(x: -80)
            VStack {
                
                Text("探索")
                    .foregroundColor(Color("灰"))
                    .offset( y: 32)
                
            }
            .background(Image("探索")
            .resizable().frame(width: 100, height: 130)
            .offset(x: 0, y: 3))
            VStack {
                
                Text("我的")
                    .foregroundColor(Color("灰"))
                    .offset( x:89,y: 35)
                
            }
            .background(Image("我的")
            .resizable().frame(width: 130, height: 130).offset(x: 90, y: 22))
        }.background(Image("tab").resizable().frame(width: 415, height: 110).offset(x: 0, y: 3))
    }
}
