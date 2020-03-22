//
//  TabBar.swift
//  JiYan
//
//  Created by 马诺 on 2020/3/1.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView(){
            ContentView().tabItem{
                VStack(alignment: .center){
                    Image(systemName: "map")
                        .resizable()
                        .frame(width:10,height: 10)
                    Text("探索")
                }
            }.tag(2)
            Contribution_2().tabItem{
                VStack{
                    Image(systemName: "plus.square")
                    Text("贡献")
                }
            }.tag(1)
            Mine_1().tabItem{
                VStack{
                    Image(systemName: "person.crop.square")
                    Text("我的")
                }
            }.tag(3)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
