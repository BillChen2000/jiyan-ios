//
//  Contribution-3.swift
//  JiYan
//
//  Created by 于书懿 on 2020/2/23.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct Contribution_3: View {
    
    @State var thumbsup = "hand.thumbsup"
    @State var numberofGood = 0
    @State var thumbsdown = "hand.thumbsdown"
    @State var numberofBad = 0
    @State var bookmark = "bookmark"
    @State var numberofBookmark = 0
    /*
     var audio_list = [list_content(name: "小明", date: "2018-7-8"),
     list_content(name: "小红", date: "2015-7-1"),
     list_content(name: "小花", date: "2010-1-0")]
     */
    var body: some View {
        VStack {
            topwords(sentence: "你在爪子", description: "询问他人在做什么事情")
            List(updateData) { update in
                Button(action: {playSound(sound: "audioTest", type: "mp3")}) {
                    HStack {
                        Text(update.name).foregroundColor(.black)
                        Spacer()
                        Text(update.date).foregroundColor(.black)
                        buttomforThumbs(thumbs: self.$thumbsup, number:self.$numberofGood , icon_after: "hand.thumbsup.fill", color: "black")
                        buttomforThumbs(thumbs: self.$thumbsdown, number:self.$numberofBad , icon_after: "hand.thumbsdown.fill", color: "black")
                        buttomforThumbs(thumbs: self.$bookmark, number:self.$numberofBookmark , icon_after: "bookmark.fill", color: "black")
                    }
                }
            }.frame(width: 340, height: 400)
                .cornerRadius(10)
                .opacity(0.4)

        }
        .frame(width:420)
        .background(Image("矩形深").resizable().aspectRatio(contentMode: .fill))
        
    }
}

struct Contribution_3_Previews: PreviewProvider {
    static var previews: some View {
        Contribution_3()
    }
}
struct Update: Identifiable {
    var id = UUID()
    var name : String
    var date : String
    var thumbsup : String
    var thumbsdown : String
    var bookmark : String
    
}
let updateData  = [
    Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
    Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
    Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
    Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
    Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
    Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏")
]

