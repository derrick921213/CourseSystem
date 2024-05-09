//
//  Home.swift
//  CourseSystem
//
//  Created by derrick on 2024/5/6.
//

import SwiftUI

struct Home: View {
    let data: [String] = [
        "學生繳費依據本校學雜費收費標準表辦理。",
        "延修生若於加選截止日（學分費核算基準.......",
        "體育及軍訓課程按每週上課時數收取2個學.....",
        "通識(夜)類課程於113年2月16日13:00前不.....",
        "延修生、進修學士班學生或採學分費核算者....",
        "延修生若於加選截止日（學分費核算基準......."
    ]
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                HStack{
                    Image("松鼠2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 61, height: 61)
                    Text("歡迎回來！D000000 陳大文")
                        .padding(.leading, 5)
                        .fixedSize(horizontal: true, vertical: true)
                }
                Spacer().frame(height: 10)
                ZStack(alignment: .topLeading){
                    Text("學分:")
                        .frame(width: 54,height: 26, alignment: .center)
                        .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .padding(.top,10)
                        .padding(.leading,10)
                        .foregroundStyle(Color.white)
                        .zIndex(2)
                        //                        .border(.green)
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(Color(hex: "#862E2E").opacity(0.50))
                        .frame(width: 379,height: 161)
                        .zIndex(1)
                        .cornerRadius(20)
                    Group{
                        Ellipse()
                            .fill(Color(hex: "#862E2E").opacity(0.50))
                            .foregroundColor(.clear)
                            .frame(width: 78, height: 78)
                            .padding(.leading,30)
                            .padding(.top,30)
                            .zIndex(1)
                        Text("15")
                            .frame(width: 43,height: 40)
                            .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                            .padding(.top,49)
                            .padding(.leading,47)
                            .font(.largeTitle)
                            .zIndex(2)
                        Text("本學期")
                            .frame(width: 54,height: 26)
                            .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                            .padding(.top,115)
                            .padding(.leading,43.5)
                            .zIndex(2)
                    }
                    Group{
                        Ellipse()
                            .fill(Color(hex: "#862E2E").opacity(0.50))
                            .foregroundColor(.clear)
                            .frame(width: 78, height: 78)
                            .padding(.leading,150)
                            .padding(.top,30)
                            .zIndex(1)
                        Text("101")
                            .frame(width: 52,height: 40)
                            .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                            .padding(.top,49)
                            .padding(.leading,164)
                            .font(.largeTitle)
                            .zIndex(2)
                        Text("已獲得")
                            .frame(width: 54,height: 26)
                            .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                            .padding(.top,115)
                            .padding(.leading,163)
                            .zIndex(2)
                    }
                    Group{
                        Ellipse()
                            .fill(Color(hex: "#862E2E").opacity(0.50))
                            .foregroundColor(.clear)
                            .frame(width: 78, height: 78)
                            .padding(.leading,273)
                            .padding(.top,30)
                            .zIndex(1)
                        Text("32")
                            .frame(width: 52,height: 40)
                            .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                            .padding(.top,49)
                            .padding(.leading,286)
                            .font(.largeTitle)
                            .zIndex(2)
                        Text("尚需要")
                            .frame(width: 54,height: 26)
                            .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                            .padding(.top,115)
                            .padding(.leading,286)
                            .zIndex(2)
                    }
                }
                ZStack{
                    HStack{
                        ZStack(alignment: .topLeading){
                            Rectangle()
                                .foregroundColor(.clear)
                                .background(Color(hex: "#FCEBD1").opacity(0.50))
                                .frame(width: 180,height: 161)
                                .zIndex(1)
                                .cornerRadius(20)
                            Text("選課截至日:")
                                .foregroundStyle(Color(hex: "#474747"))
                                .zIndex(2)
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .frame(width: 108,height: 26)
                                .padding(.top,10)
                                .padding(.leading,10)
                            Text("2月23日")
                                .foregroundStyle(Color(hex: "#862E2E"))
                                .zIndex(2)
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .frame(width: 150,height: 40)
                                .font(.largeTitle)
                                .padding(.top,65)
                                .padding(.leading,16)
                        }
                        ZStack(alignment: .topLeading){
                            Rectangle()
                                .foregroundColor(.clear)
                                .background(Color(hex: "#FCEBD1").opacity(0.50))
                                .frame(width: 180,height: 161)
                                .zIndex(1)
                                .cornerRadius(20)
                            Text("成績公告日:")
                                .foregroundStyle(Color(hex: "#474747"))
                                .zIndex(2)
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .frame(width: 108,height: 26)
                                .padding(.top,10)
                                .padding(.leading,10)
                            Text("6月14日")
                                .foregroundStyle(Color(hex: "#862E2E"))
                                .zIndex(2)
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .frame(width: 150,height: 40)
                                .font(.largeTitle)
                                .padding(.top,65)
                                .padding(.leading,16)
                        }
                    }
                    .zIndex(1)
                    Image("松鼠1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 63, height: 63)
                        .zIndex(5)
                        .offset(x: 165,y: 85)
                }
                ZStack{
                    VStack{
                        List{
                            Section{
                                ForEach(data, id: \.self) { item in
                                    HStack {
                                        Text(item)
                                        
                                    }
                                }
                                .background(Color.clear)
                                .listRowBackground(Color.clear)
                                .listRowSeparatorTint(Color(hex: "#862E2E"),edges: .bottom)
                                
                            }header: {
                                Text("通知:")
                                    .font(.title)
                                    .foregroundStyle(Color(hex: "#474747"))
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .zIndex(3)
                                    
                            }
                        }
//                        .border(.red,width: 2)
                        .listStyle(.plain)
                        .padding(.top,-15)
                        .padding(.leading)
                        .padding(.trailing)
                    }
                    .zIndex(2)
                }
                
                Spacer()
            }
        }
    }
}
#Preview {
    Home()
}
