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
        VStack{
            VStack(alignment: .center,spacing: 24) {
                topwords().offset(x: 0, y: -50)
                tab1(showingPopover: $showingPopover1, tab_word: $tab_word1)
                
                    .popover(isPresented: $showingPopover1)
                    {
                        tab1_content()
                }
                tab1(showingPopover: $showingPopover2, tab_word: $tab_word2)
                    
                    .popover(isPresented: $showingPopover2)
                    {
                        tab2_content()
                }
                HStack {
                    tab2(showingPopover: $showingPopover3, tab_word: $tab_word3)
                        .offset(x: -24, y: 0)
                    tab2(showingPopover: $showingPopover4, tab_word: $tab_word4)
                    .offset(x: 24, y: 0)
                }
                 
            }
            
            VStack (alignment: .center,spacing: 34){
                Image("录音按钮")
                    .resizable()
                    .frame(width: 120, height: 120)
                Text("在你准备好之后，请用四川话录音")
                Image("波形")
            }.background(Image("bottom")
                .resizable()
                .frame(width: 700, height: 370)
                .aspectRatio(contentMode: .fill)
            )
            .offset(x: 0, y: 89)
        }
        .frame(width: 450)
        .background(Image("矩形深")
        .resizable()
        .aspectRatio(contentMode: .fill)
        )
    }
}

struct Contribution_1_Previews: PreviewProvider {
    static var previews: some View {
        Contribution_1()
    }
}

struct topwords: View {
    var body: some View {
        VStack (spacing:35 ){
            Text("你在爪子")
                .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                .foregroundColor(.white)
            Text("询问他人在做什么事情")
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
               .frame(width: 300, height: 45)
                .foregroundColor(.black)
                .background(Color.white
                    .opacity(0.8)
            )
                .cornerRadius(15)
                .shadow(color: Color("Cardcolor"), radius: 15)
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
               .frame(width: 120, height: 45)
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
    @State var textfield_words_top1 = "方言标题"
    @State var textfield_words_inside1 = ""
    @State var textfield_words_top2 = "普通话标题"
    @State var textfield_words_inside2 = ""
    var body: some View {
        VStack() {
            Titlewords1()
            VStack(alignment: .leading,spacing: 40){
                Text("方言标题")
                    .font(.title)
                    .foregroundColor(.white)
                Textfield(textfield_words_top: self.$textfield_words_top1, textfield_words_inside: self.$textfield_words_inside1)
                Text("普通话标题")
                    .font(.title)
                    .foregroundColor(.white)
                Textfield(textfield_words_top: self.$textfield_words_top2, textfield_words_inside: self.$textfield_words_inside2)
            }.offset(x: 0, y: -300)
            
        }
        .background(Image("矩形深").resizable().aspectRatio(contentMode: .fill))
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
struct list_content: Identifiable {
  var id = UUID()
  var name : String
    var date : String
    
}
struct list_row: View {
    @Binding var thumbsup : String
    @Binding var numberofGood : Int
    @Binding var thumbsdown :String
    @Binding var numberofBad : Int
    @Binding var bookmark : String
    @Binding var numberofBookmark : Int

    
    var List_content = list_content(name: "小明", date: "2018-7-8")
    var body: some View {
        
        HStack {
            Text("\(List_content.name)")
                //Spacer()
            Text("\(List_content.date)")
            buttomforThumbs(thumbs: $thumbsup, number: $numberofGood, icon_after: "hand.thumbsup.fill")
            buttomforThumbs(thumbs: $thumbsdown, number: $numberofBad, icon_after: "hand.thumbsdown.fill")
           // buttomforThumbs(thumbs: $thumbsup, number: $numberofGood, icon_after: "bookmark.fill")
            
        }//.background(Color.black)
    }
}
/*
struct ListViewDemo: View {
  
    var body: some View {
        
        let list_row1 = list_content(name: "小明", date: "2018-7-8")
         let list_row2 = list_content(name: "小红", date: "2015-7-1")
        let list_row3 = list_content(name: "小花", date: "2010-1-0")
          //数据数组
          let recorder = [list_row1, list_row2, list_row3]
         return List(recorder){ List_content in
            list_row(List_content: List_content)
            
        }
        }
    }
*/
 
struct tab2_content: View {
    @State var thumbsup = "hand.thumbsup"
    @State var numberofGood = 0
    @State var thumbsdown = "hand.thumbsdown"
    @State var numberofBad = 0
    @State var bookmark = "bookmark"
    @State var numberofBookmark = 0
  
  var audio_list = [list_content(name: "小明", date: "2018-7-8"),
    list_content(name: "小红", date: "2015-7-1"),
    list_content(name: "小花", date: "2010-1-0")]
    var body: some View {
        VStack {
            Titlewords2()
            NavigationView {
               
                list_row(thumbsup: $thumbsup, numberofGood: $numberofGood, thumbsdown: $thumbsdown, numberofBad: $numberofBad, bookmark: $bookmark, numberofBookmark: $numberofBookmark)
                
            }//.background(Image("矩形深").resizable().aspectRatio(contentMode: .fill))
                //.opacity(0.5)
        } .background(Image("矩形深").resizable().aspectRatio(contentMode: .fill))
            .opacity(0.8)
    }
}

/*struct buttomforThumbs: View {
    @Binding var thumbs : String
    @Binding var number : Int
    var icon_after :String
    var body: some View{
        Button(action:{})
        {
            VStack{
                Image(systemName: thumbs)
                    .foregroundColor(.white)
                    .onTapGesture {
                        self.number += 1
                        self.thumbs = self.icon_after
                }
                Text("\(number)")
                    .foregroundColor(.white)
            }
        }
    }
}*/
