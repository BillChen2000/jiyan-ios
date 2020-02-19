//
//  Mine-1.swift
//  Mine
//
//  Created by 于书懿 on 2020/2/19.
//  Copyright © 2020 于书懿. All rights reserved.
//

import SwiftUI

struct Mine_1: View {
    @State var textfield_words_top1 = ""
    @State var textfield_words_inside1 = ""
    @State var color1 = Color.white
     @State var color2 = Color.white
    @State var Image1  = "矩形1"
    @State var Image11 = "矩形2"
    @State var Image111 = "矩形2"
    @State var Image2  = "矩形1"
        @State var Image22 = "矩形2"
    @State var Image222 = ""
    @State var tab_word1 = "男"
    @State var tab_word2 = "女"
    @State var showingPopover1 = false
    @State var showingPopover2 = false
    var body: some View {
        VStack(alignment: .leading,spacing:40) {
            Text("欢迎回家")
                .foregroundColor(.white)
             .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
            Text("接下来请您简单地完善一下个人信息。")
                .foregroundColor(.white)
            .bold()
            textfield(textfield_words_top1: $textfield_words_top1,
                      textfield_words_inside1: $textfield_words_inside1)
               
            HStack (spacing:80){
                Text("性别:")
                    .foregroundColor(.white)
                    .bold()
                HStack() {
                    tab_1(tab_word: $tab_word1, Image1: $Image1, Image2: $Image11,Color1: $color1)
                        //.offset()
                    tab_1(tab_word: $tab_word2, Image1: $Image2, Image2: $Image22,Color1: $color2)
                     .offset(x: 120)
                        .foregroundColor(.white)
                     
                }
            }
            VStack(spacing:20) {
                Text("已掌握方言:")
                .bold()
                    .foregroundColor(.white)
                HStack(alignment: .center,spacing: 20){
                               Text("川")
                               .foregroundColor(.white)
                               .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                                   .multilineTextAlignment(.center)
                                   .frame(width: 70, height: 70)
                                   .background(Color.black.opacity(0.4))
                                   .cornerRadius(10)
                               Image("加号")
                                          .resizable()
                                          .frame(width: 45, height: 45)
                               }
            }
        .offset(x: 0, y: 30)
            VStack {
                Text("完成")
                    .multilineTextAlignment(.center)
                .frame(width: 300, height: 40)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(10)
            }.offset(x: 23, y: 30)
                
        }
    .offset(x: 0, y: -120)
        .background(Image("b3")
        .resizable()
        .frame(width: 420, height: 913))
    }
}

struct Mine_1_Previews: PreviewProvider {
    static var previews: some View {
        Mine_1()
    }
}


struct textfield: View {
    @Binding var textfield_words_top1 : String
    @Binding var textfield_words_inside1 : String
    var body: some View {
        VStack {
            HStack {
                Text("昵称:")
                .bold()
                    .foregroundColor(.white)
                Section {
                    TextField(textfield_words_top1,text: self.$textfield_words_inside1)
                    
                }.frame(width: 300, height: 50)
                .offset(x: 10)
                
            }
            Image("直线").offset(x:10,y: -25)
        }
    }
}
struct tab_1: View {
    @Binding var tab_word : String
    @Binding var Image1 : String
    @Binding var Image2 : String
    @Binding var Color1 : Color
    var body: some View {
        Button(action: {}) {
            VStack {
                Text(tab_word)
                    .foregroundColor(Color1)
               }
            .background(Image(Image1).resizable().frame(width: 130, height: 30).aspectRatio(contentMode: .fill).foregroundColor(.white))
        
        .onTapGesture {
            
            self.Image1 = self.Image2
            self.Color1 = .black
            
           
        }
        }
    }
}

