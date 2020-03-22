//
//  Contribution-1.swift
//  Contribution
//
//  Created by 于书懿 on 2020/2/6.
//  Copyright © 2020 于书懿. All rights reserved.
//





 
import SwiftUI

struct Contribution_1: View {
    @State var showingPopover1 = false
    @State var showingPopover2 = false
    @State var showingPopover3 = false
    @State var showingPopover4 = false
   
    @State var tab_word1 = "编辑文本"
    @State var tab_word2 = "浏览已有录音"
    @State var tab_word3 = "上一句"
       @State var tab_word4 = "下一句"
    
    var body: some View {
        ZStack {
            VStack{
                VStack() {
                    topwords(sentence: "你在爪子", description: "询问他人在做什么事情")
                        .padding(.bottom)
                    /*tab1(showingPopover: $showingPopover1, tab_word: $tab_word1)
                    
                        .popover(isPresented: $showingPopover1)
                        {
                            tab1_content()
                    }
                   
                    tab11(show: $showingPopover2, tab_word: $tab_word2)
                    
                        
                    HStack {
                        NavigationLink(destination:tab2(showingPopover: $showingPopover3, tab_word: $tab_word3)){
                            tab11(show: $showingPopover2, tab_word: $tab_word2)
                        }
                        tab2(showingPopover: $showingPopover3, tab_word: $tab_word3)
                            .offset(x: -24, y: 0)
                        tab2(showingPopover: $showingPopover4, tab_word: $tab_word4)
                     .offset(x: 24, y: 0)
                     }*/
                    
                    
                    Button(action: {self.showingPopover1.toggle()}) {
                        Text("编辑文本")
                            .foregroundColor(.black)
                            .frame(width:250, height:40)
                            .background(Color.white)
                            .cornerRadius(10)
                            .opacity(0.9)
                    }.popover(isPresented: $showingPopover1) {
                        
                        tab1_content(sp: self.$showingPopover1)
                    }
                    .padding()
                    
                    
                    NavigationLink(destination:Contribution_3()) {
                        Text("浏览已有录音")
                            .foregroundColor(.black)
                            .frame(width:250, height:40)
                            .background(Color.white)
                            .cornerRadius(10)
                            .opacity(0.9)
                    }
                }
                .padding(.bottom,100)
                
                
                
                VStack (alignment: .center){
                    Image("录音按钮")
                        .resizable()
                        .frame(width:100,height:100)
                    Text("在你准备好之后，请用四川话录音")
                    Image("波形")
                }.background(
                    Circle()
                        .foregroundColor(.white)
                        .frame(width:700,height:700)
                        .padding(.top,400)
                )
                    .padding(.bottom,50)
            }
            .frame(width: 450,height: 900)
            .background(Image("矩形深")
            .resizable()
            .aspectRatio(contentMode: .fill)
            )
            

            
            
            
        }
    }
}

struct Contribution_1_Previews: PreviewProvider {
    static var previews: some View {
        Contribution_1()
    }
}

struct topwords: View {
    @State var sentence : String
    @State var description : String
    var body: some View {
        VStack (){
            Text(sentence)
                .font(.custom("HYChangLiSongKeBen(Truing)",size:40))
                .foregroundColor(.white)
                .padding(.bottom)
            Text(description)
                .foregroundColor(.white)
        }
    }
}

struct tab1: View {
    @Binding var showingPopover : Bool
    @Binding var tab_word : String
    var body: some View {
        Button(action: {
            self.showingPopover = true
        }) {
            Text(tab_word)
               .frame(width: 250, height: 40)
                .foregroundColor(.black)
                .background(Color.white
                    .opacity(0.8)
            )
                .cornerRadius(15)
                .shadow(color: Color("Cardcolor"), radius: 15)
        }
    }
}

struct tab11: View {
    @Binding var show : Bool
    @Binding var tab_word : String
    var body: some View {
       // NavigationLink(destination: Contribution_3()) {
  
            Button(action: {
                self.show.toggle()
                })
             {
                    Text(tab_word)
                       .frame(width: 250, height: 40)
                        .foregroundColor(.black)
                        .background(Color.white
                            .opacity(0.8)
                    )
                        .cornerRadius(15)
                        .shadow(color: Color("Cardcolor"), radius: 15)
           //  }
            }
           
    }
}
struct tab2: View {
    @Binding var showingPopover : Bool
    @Binding var tab_word : String
    var body: some View {
        Button(action: {
            self.showingPopover = true
        }) {
            Text(tab_word)
               .frame(width: 110, height: 40)
                .foregroundColor(.black)
                .background(Color.white
                .opacity(0.8))
                .cornerRadius(15)
                .shadow(color: Color("Cardcolor"), radius: 15)
        }
    }
}

struct Titlewords1: View {
    var body: some View {
        VStack {
            HStack {
               Text("编辑文本")
                                  .font(.custom("HYChangLiSongKeBen(Truing)",size:45))
                                  .fontWeight(.bold)
                                  .foregroundColor(.white)
                                  .padding(.leading,80)
               
            }
            
           
        }
    }
}

struct Textfield: View {
  //var textfield_words_title : String
@Binding var textfield_words_top : String
@Binding var textfield_words_inside : String
    var body: some View {
       
        VStack {
            Section {
                TextField(textfield_words_top,text: $textfield_words_inside)
            }
        
            .frame(width:300 , height:50)
            .background(Color.white)
        
        }
    }
}


struct tab1_content: View {
    @Binding var sp : Bool
    @State var textfield_words_top1 = "方言标题"
    @State var textfield_words_inside1 = ""
    @State var textfield_words_top2 = "普通话标题"
    @State var textfield_words_inside2 = ""
    var body: some View {
        VStack() {
            Button(action: {self.sp.toggle()}) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                        Text("返回")
                            .foregroundColor(.white)
                    }
            }
            .padding(.top)
            .padding(.trailing,280)
            
            VStack(alignment: .leading,spacing: 40){
                Text("编辑文本")
                    .font(.custom("HYChangLiSongKeBen(Truing)",size:45))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top,20)
                Text("方言标题")
                    .font(.title)
                    .foregroundColor(.white)
                Textfield(textfield_words_top: self.$textfield_words_top1, textfield_words_inside: self.$textfield_words_inside1)
                Text("普通话标题")
                    .font(.title)
                    .foregroundColor(.white)
                Textfield(textfield_words_top: self.$textfield_words_top2, textfield_words_inside: self.$textfield_words_inside2)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("提交")
                    .foregroundColor(.black)
                    .frame(width:100, height: 50)
                    .background(Color.white)
                    .opacity(0.8)
                    .cornerRadius(10)
                }.padding(.leading,100)
            }
            
        }
        .background(
            Image("矩形深")
        .resizable()
                .frame(width: 400)
        .aspectRatio(contentMode: .fill))
        .opacity(0.8)
    }
}

struct Titlewords2: View {
    var body: some View {
       
            VStack {
                HStack {
                    Text("你在爪子")
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading,80)
                    Spacer()
                }
                .padding(.top,100)
                Spacer()
                
            }
        
    }
}


