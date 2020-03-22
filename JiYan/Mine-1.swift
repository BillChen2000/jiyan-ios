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
    @State var show1 = false
    @State var change = false
    @State var dialect_command = ["无","沪","川"]
    @State var dialect_choose = 0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("欢迎回家")
                    .foregroundColor(.white)
                    .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                    .bold()
                    .padding(.bottom)
                Text("接下来请您简单地完善一下个人信息。")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.top)
                textfield(textfield_words_top1: $textfield_words_top1,
                          textfield_words_inside1: $textfield_words_inside1)
                    .padding(.top,40)
                HStack (spacing:80){
                    Text("性别:")
                        .foregroundColor(.white)
                        .bold()
                    HStack() {
                        tab_1(tab_word: $tab_word1, Image1: $Image1, Image2: $Image11,Color1: $color1)
                        tab_1(tab_word: $tab_word2, Image1: $Image2, Image2: $Image22,Color1: $color2)
                            .offset(x: 120)
                            .foregroundColor(.white)
                    }
                }.padding(.top)
                VStack(alignment: .leading, spacing:20) {
                    Text("已掌握方言:")
                        .bold()
                        .foregroundColor(.white)
                    
                    HStack(spacing: 20){

                        Button(action: {self.change.toggle()}) {
                            Text(dialect_command[dialect_choose])
                        .foregroundColor(.white)
                                .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                                .multilineTextAlignment(.center)
                                .frame(width: 70, height: 70)
                                .background(Color.black.opacity(0.4))
                                .cornerRadius(10)
                        }.popover(isPresented: $change){
                            Button(action: {self.change.toggle()}) {
                                HStack {
                                    Image(systemName: "chevron.left")
                                    Text("完成")
                                }
                            }.padding(.trailing,290)
                            Text("请选择你已经掌握的方言")
                                .padding()
                            Picker(selection: self.$dialect_choose, label: Text("")) {
                                Text("无").tag(0)
                                Text("上海话").tag(1)
                                Text("四川话").tag(2)
                            }.padding(.bottom,200)

                        }
                        
                        
                        Image("加号")
                            .resizable()
                            .frame(width: 45, height: 45)
                    }
      
                }.padding(.top,30)
                NavigationLink(destination:Mine_2()) {
                    
                    Text("完成")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 40)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                    
                }.padding(.top,30)
                    .padding(.bottom,150)
                    .padding(.leading,70)
                
                
                
            }
            .background(Image("b3")
            .resizable()
            .frame(width: 440, height: 700))
            .padding()
        }
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
                    .frame(width:35)
                Section {
                    TextField(textfield_words_top1,text: self.$textfield_words_inside1)
                    
                }.frame(width: 300, height: 50)
            }
            Image("直线").offset(x:18,y: -25)
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

