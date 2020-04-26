//
//  Explore_3.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/8.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI
import AVFoundation

struct Explore_3: View {
    
    @State var thumbsup = "hand.thumbsup"
    @State var numberofGood = 0
    @State var thumbsdown = "hand.thumbsdown"
    @State var numberofBad = 0
    @State var bookmark = "bookmark"
    @State var numberofBookmark = 0
    @State var pickerSelection = 0
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .gray
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
    }
    

    
    var body: some View {
        VStack {
            Text("侬好")
                .font(.custom("HYChangLiSongKeBen(Truing)", size: 50))
                .foregroundColor(.white)
                .padding(.top)
            Text("普通话中的你好。")
                .font(.custom("PingFang SC", size: 18))
                .foregroundColor(.white)
                .padding(.top,40)
            HStack{
                Button(action: {
                    playSound(sound: "audioTest", type: "mp3")
                }) {
                    Image(systemName: "play.circle")
                        .resizable()
                        .frame(width:38,height:38)
                        .foregroundColor(.white)
                }
                SimpleProgressBar()
                Button(action: {pauseSound()}) {
                    Image(systemName: "pause.circle")
                        .resizable()
                        .frame(width:38,height:38)
                        .foregroundColor(.white)
                }
            }
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("buttom_learning").renderingMode(.original)
                }
                .padding(.leading,20)
                .padding(.trailing,120)
                buttomforThumbs(thumbs: $thumbsup, number: $numberofGood, icon_after: "hand.thumbsup.fill")
                buttomforThumbs(thumbs: $thumbsdown, number: $numberofBad, icon_after: "hand.thumbsdown.fill")
                buttomforThumbs(thumbs: $bookmark, number: $numberofBookmark, icon_after: "bookmark.fill")
            }
            .padding()
            
            AllSentences(pickerSelection: $pickerSelection)
            
        }
        .frame(width:450)
        .background(Image("矩形深")
        .resizable()
        .aspectRatio(contentMode: .fill))
        
    }
}

struct Explore_3_Previews: PreviewProvider {
    static var previews: some View {
        Explore_3()
    }
}

struct buttomforThumbs: View {
    @Binding var thumbs : String
    @Binding var number : Int
    var icon_after : String
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            VStack {
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
}

struct AllSentences: View {
    var content = ["基本用语","人称代词","数词量词","情绪用语","特色长句"]
    @Binding var pickerSelection : Int
    var body: some View {
        VStack {
            Picker(selection: $pickerSelection, label: Text("")) {
                Text(content[0]).tag(0)
                Text(content[1]).tag(1)
                Text(content[2]).tag(2)
                Text(content[3]).tag(3)
                Text(content[4]).tag(4)
            }
            .pickerStyle(SegmentedPickerStyle()).foregroundColor(Color.orange)
            .frame(width:370)
            List{
                if(pickerSelection == 0) {Text("123")}
                else if(pickerSelection == 1) {Text("456")}
            }
            .frame(width:370,height: 350)
            .opacity(0.5)
            .cornerRadius(20)
        }
    }
}

struct SimpleProgressBar : View {
    @State var currentProgress: CGFloat = 0.0
     var timer = Timer()
    var body : some View {
        VStack{
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.gray)
                    .frame(width: 280, height: 6)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .frame(width: 280*currentProgress, height: 20)
            }
           
        }
    }
    
  
}
