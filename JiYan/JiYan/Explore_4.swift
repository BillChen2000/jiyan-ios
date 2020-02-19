//
//  Explore_4.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/12.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct Explore_4: View {
    var body: some View {
        VStack {
            Text("侬好")
                .font(.custom("HYChangLiSongKeBen(Truing)", size: 50))
                .foregroundColor(.white)
                .padding(.top,60)
            Text("普通话中的你好。")
                .font(.custom("PingFang SC", size: 18))
                .foregroundColor(.white)
                .padding(.top,40)
                .padding(.bottom,90)
            HStack{
                VStack{
                    Text("90")
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 65))
                    .foregroundColor(.white)
                    Text("跟读得分")
                    .font(.custom("PingFang SC", size: 18))
                    .foregroundColor(.white)
                }
                Text("读的不错")
            }
            player(text: "播放示例")
            player(text: "播放录音")
            VStack{
                Image("录音按钮")
                    .padding(.top,40)
                Text("试着模仿录音，在您准备好之后按住按钮录音。")
                    .font(.custom("PingFang SC", size: 16))
                    .foregroundColor(.gray)
                    .padding()
                Spacer()
            }
            .frame(width:425,height:250)
            .background(
                Image("Tabbar_ellipse")
                    .resizable()
            )
            
        }
        .frame(width:450)
        .background(Image("矩形深")
        .resizable()
        .aspectRatio(contentMode: .fill))
        
    }
}

struct Explore_4_Previews: PreviewProvider {
    static var previews: some View {
        Explore_4()
    }
}

struct player: View {
    var text : String
    var body: some View {
        HStack {
            VStack {
                Button(action: {playSound(sound: "audioTest", type: "mp3")}) {
                    Image(systemName: "play.circle")
                        .resizable()
                        .frame(width:38,height:38)
                        .foregroundColor(.white)
                }
                Text(text)
                .font(.custom("PingFang SC", size: 16))
                .foregroundColor(.white)
            }
            SimpleProgressBar()
                .padding(.bottom)
            
            
        }
        .padding(.bottom,40)
    }
}
