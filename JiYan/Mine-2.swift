//
//  Mine-2.swift
//  Mine
//
//  Created by 于书懿 on 2020/2/18.
//  Copyright © 2020 于书懿. All rights reserved.
//

import SwiftUI

struct Mine_2: View {
   // @State var show
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
     @State var show1 = false
    
    
    var body: some View {
       
        VStack() {
            VStack {
                Titlewords()
               
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
                            .padding(.top,5)
                    }.offset(x: 15, y: -40)
                }
                .padding(.bottom,20)
            }
            
            
    
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
                .font(.custom("HYChangLiSongKeBen(Truing)",size:40))
                .foregroundColor(Color("darkgreen"))
            Text(text)
                .foregroundColor(Color("darkgreen"))
        }
        .padding(.bottom,30)
        .frame(width: 120, height: 120)
        .background(Color.white.opacity(0.6))
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
                    .bold()
                HStack {
                    Text("BillChen2000")
                        .foregroundColor(.white)
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                        .bold()
                    Text("川")
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:25))
                        .frame(width: 33, height: 33)
                        .foregroundColor(.white)
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(8)
                      
                }
                Text("感谢有你，")
                    .foregroundColor(.white)
                    .padding(.top,15)
                Text("你在纪言的362天里")
                    .foregroundColor(.white)
                    .padding(.top,10)
            }
            
            
            
        }
    }
}

struct symbols: View {
    var body: some View {
        HStack(spacing:20){
            VStack(alignment: .center) {
                Image(systemName: "bookmark")
                .resizable()
                    .frame(width:20,height:30)
                    .foregroundColor(.white)
                Text("收藏")
                    .foregroundColor(.white)
            }
            VStack(alignment: .center) {
                Image(systemName: "gear")
                .resizable()
                    .frame(width:30,height:30)
                    .foregroundColor(.white)
                Text("设置")
                    .foregroundColor(.white)
            }
            NavigationLink(destination:Mine_4()){
                VStack(alignment: .center) {
                    Image(systemName: "heart.circle.fill")
                    .resizable()
                        .frame(width:30,height:30)
                        .foregroundColor(.white)
                    Text("关于")
                        .foregroundColor(.white)
                }
            }

        }
    }
}

