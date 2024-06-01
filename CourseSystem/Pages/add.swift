//
//  add.swift
//  CourseSystem
//
//  Created by derrick on 2024/5/28.
//

import SwiftUI

struct add: View {
    @State private var currentPageTitle = "加退選系統"
    var body: some View {
        VStack {
            HeaderView(title: $currentPageTitle)
            ZStack{
                
                VStack{
                    Spacer()
                    ZStack{
                        Image("group4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 186.9, height: 360)
//                            .zIndex(5)
                            .offset(x: 70)
                        Image("松鼠2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 61, height: 61)
                            //                            .zIndex(5)
                            .offset(x: -37,y: 130)
                        
                    }
                }
                VStack{
                    HStack{
                        Circle()
                            .fill(Color(hex: "#9E5858"))
                            .frame(width: 205, height: 205)
                            .overlay(
                                Text("加選")
                                    .foregroundColor(Color(hex: "#FCEBD1"))
                                    .font(.title)
                            )
                            .offset(y: -55)
                    }
                    HStack{
                        Circle()
                            .fill(Color(hex: "#af7572"))
                            .frame(width: 205, height: 205)
                            .overlay(
                                Text("退選")
                                    .foregroundColor(Color(hex: "#FCEBD1"))
                                    .font(.title)
                            )
                            .offset(x: 10, y: -95)
                        
                        Circle()
                            .fill(Color(hex: "#c58a88"))
                            .frame(width: 205, height: 205)
                            .overlay(
                                Text("結果")
                                    .foregroundColor(Color(hex: "#FCEBD1"))
                                    .font(.title)
                            )
                            .offset(x: -10, y: -95)
                    }
                }
                
            }
            .padding(.bottom,-10)
            Spacer()
        }
    }
}


#Preview {
    add()
}
