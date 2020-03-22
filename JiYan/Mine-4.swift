//
//  Mine-4.swift
//  Mine
//
//  Created by 于书懿 on 2020/2/19.
//  Copyright © 2020 于书懿. All rights reserved.
//

import SwiftUI

struct Mine_4: View {
    
    var body: some View {
        VStack {
            VStack {
                VStack() {
                    Text("纪言")
                        .foregroundColor(.white)
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:60))
                    
                    Text("留下方言的声音。")
                        .foregroundColor(.white)
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:30))
                        .padding()
                    Text("语言文化遗产有特别重要的保护价值。体现着一个族群对世界的基本认知方式和成果，通常被当作构成一个民族的标志性元素之一。")
                        .foregroundColor(.white)
                        .frame(width: 320, height: 100)
                        .padding()
                    Text("一种语言并不仅仅是一种工具，而且是一种文化，是一个活生生的人群，是一种生活的韵味，是一种奇妙的风光，是自然风光也是人文景观")
                        .foregroundColor(.white)
                        .frame(width: 320, height: 140)
                        .padding()
                    VStack {
                        Text("朋友，你是哪儿的人？")
                            .foregroundColor(.white)
                            .font(.custom("HYChangLiSongKeBen(Truing)",size:25))
                        Text("还会说家乡的方言吗？")
                            .foregroundColor(.white)
                            .font(.custom("HYChangLiSongKeBen(Truing)",size:25))
                    }.padding(.bottom,60)
                    
                }
                
            }
            
        }
            .background(Image("b3")
            .resizable()
            .frame(width: 420, height: 913))
    }
}

struct Mine_4_Previews: PreviewProvider {
    static var previews: some View {
        Mine_4()
    }
}




