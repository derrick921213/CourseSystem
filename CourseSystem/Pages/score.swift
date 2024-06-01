//
//  score.swift
//  CourseSystem
//
//  Created by derrick on 2024/5/28.
//

import SwiftUI

struct score: View {
    @State private var currentPageTitle = "學生成績公告"
    var body: some View {
       
            VStack {
                    // 顶部的 HeaderView
                HeaderView(title: $currentPageTitle)
                    Spacer()
                
                    // 主内容
                VStack(spacing: 40) {
                    VStack {
                        Image("公告")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 162, height: 152)
                            .foregroundColor(Color(hex: "#F2D7B6"))
                        Text("成績公告")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    
                    VStack {
                        Image("學生")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 162, height: 152)
                            .foregroundColor(Color(hex: "#F2D7B6"))
                        Text("學分統計")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
            }
        }
    
}

#Preview {
    score()
}
