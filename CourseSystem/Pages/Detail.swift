//
//  Detail.swift
//  CourseSystem
//
//  Created by derrick on 2024/5/9.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment: .center){
            VStack(spacing: 10){
                Group{
                    HStack(alignment: .top){
                        Image("松鼠3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 52, height: 52)
                        Text("訊息:")
                            .foregroundColor(.green)
                            .font(.largeTitle)
                            .padding(.top,10)
                        Spacer()
                    }
                    .padding(.top,10)
                    Rectangle()
                        .frame(height: 1.5)
                        .foregroundColor(.black)
                        .padding(.horizontal,0)
                        .padding(.top, -10)
                }
                Group{
                    HStack(alignment: .center){
                        Text("已成功加選『iOS APP程式設計』")
                        Spacer()
                    }
                    Rectangle()
                        .frame(height: 1.5)
                        .foregroundColor(Color(hex: "C5C5C5").opacity(65))
                }
                Group{
                    HStack(alignment: .center){
                        Text("已成功加選『體育－籃球』")
                        Spacer()
                    }
                    .padding(.horizontal,0)
                    .padding(.vertical,0)
                    Rectangle()
                        .frame(height: 1.5)
                        .foregroundColor(Color(hex: "C5C5C5").opacity(65))
                }
                Group{
                    HStack(alignment: .center){
                        Text("你關注的『環境土壤學』有餘額可加選")
                        Spacer()
                    }
                    .padding(.horizontal,0)
                    .padding(.vertical,0)
                    Rectangle()
                        .frame(height: 1.5)
                        .foregroundColor(Color(hex: "C5C5C5").opacity(65))
                }
                Group{
                    HStack(alignment: .center){
                        Text("通識(夜)類課程於113年2月16日13:00前不.....")
                        Spacer()
                    }
                    .padding(.horizontal,0)
                    .padding(.vertical,0)
                    Rectangle()
                        .frame(height: 1.5)
                        .foregroundColor(Color(hex: "C5C5C5").opacity(65))
                }
                Group{
                    HStack(alignment: .center){
                        Text("已成功關注『環境土壤學』")
                        Spacer()
                    }
                    .padding(.horizontal,0)
                    .padding(.vertical,0)
                    Rectangle()
                        .frame(height: 1.5)
                        .foregroundColor(Color(hex: "C5C5C5").opacity(65))
                }
                Group{
                    HStack(alignment: .center){
                        Text("延修生若於加選截止日（學分費核算基準.......")
                        Spacer()
                    }
                    .padding(.horizontal,0)
                    .padding(.vertical,0)
                    Rectangle()
                        .frame(height: 1.5)
                        .foregroundColor(Color(hex: "C5C5C5").opacity(65))
                }
            }
        }
        .padding(.horizontal,25)
        
        .navigationBarTitle("訊息通知", displayMode: .inline)
        Spacer()
    }
}

#Preview {
    DetailView()
}
