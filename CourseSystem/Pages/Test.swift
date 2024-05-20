//
//  Test.swift
//  CourseSystem
//
//  Created by derrick on 2024/5/6.
//

import SwiftUI

struct Test: View {
    var body: some View {
        Text("Hello, World!#%#")
//        ZStack() {
//            Group {
//                Ellipse()
//                    .foregroundColor(.clear)
//                    .frame(width: 78, height: 78)
//                    .background(Color(red: 0.53, green: 0.18, blue: 0.18).opacity(0.50))
//                    .offset(x: -108, y: -230)
//                Ellipse()
//                    .foregroundColor(.clear)
//                    .frame(width: 78, height: 78)
//                    .background(Color(red: 0.53, green: 0.18, blue: 0.18).opacity(0.50))
//                    .offset(x: -2, y: -231)
//                Ellipse()
//                    .foregroundColor(.clear)
//                    .frame(width: 78, height: 78)
//                    .background(Color(red: 0.53, green: 0.18, blue: 0.18).opacity(0.50))
//                    .offset(x: 104, y: -230)
//                Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: 379, height: 161)
//                    .background(Color(red: 0.53, green: 0.18, blue: 0.18).opacity(0.50))
//                    .cornerRadius(20)
//                    .offset(x: -2.50, y: -221.50)
//                Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: 180, height: 161)
//                    .background(Color(red: 0.99, green: 0.92, blue: 0.82).opacity(0.50))
//                    .cornerRadius(20)
//                    .offset(x: -102, y: -39.50)
//                Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: 180, height: 161)
//                    .background(Color(red: 0.99, green: 0.92, blue: 0.82).opacity(0.50))
//                    .cornerRadius(20)
//                    .offset(x: 97, y: -39.50)
//                Text("歡迎回來！D0000000  陳大文  ")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
//                    .offset(x: 24.50, y: -347)
//                Text("通知：")
//                    .font(Font.custom("Zen Antique Soft", size: 20))
//                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
//                    .offset(x: -152, y: 74.50)
//                Text("學分：")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
//                    .offset(x: -142, y: -277)
//                Text("選課截止日：")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
//                    .offset(x: -124, y: -96)
//            };Group {
//                Text("成績公告日：")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
//                    .offset(x: 80, y: -101)
//                Text("本學期")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
//                    .offset(x: -108, y: -172)
//                Text("已獲得")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
//                    .offset(x: -2, y: -172)
//                Text("尚需要")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
//                    .offset(x: 104, y: -172)
//                Text("101")
//                    .font(Font.custom("ZCOOL KuaiLe", size: 40))
//                    .foregroundColor(.white)
//                    .offset(x: -3, y: -231)
//                Text("15")
//                    .font(Font.custom("ZCOOL KuaiLe", size: 40))
//                    .foregroundColor(.white)
//                    .offset(x: -107.50, y: -230)
//                Text("2月23日")
//                    .font(Font.custom("ZCOOL KuaiLe", size: 40))
//                    .foregroundColor(Color(red: 0.53, green: 0.18, blue: 0.18))
//                    .offset(x: -102, y: -33)
//                Text("6月14日")
//                    .font(Font.custom("ZCOOL KuaiLe", size: 40))
//                    .foregroundColor(Color(red: 0.53, green: 0.18, blue: 0.18))
//                    .offset(x: 98.50, y: -38)
//                Text("32")
//                    .font(Font.custom("ZCOOL KuaiLe", size: 40))
//                    .foregroundColor(.white)
//                    .offset(x: 103, y: -230)
//                ZStack() {
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 379, height: 0)
//                        .overlay(
//                            Rectangle()
//                                .stroke(Color(red: 0.53, green: 0.18, blue: 0.18), lineWidth: 0.50)
//                        )
//                        .offset(x: 0.50, y: -112.50)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 379, height: 0)
//                        .overlay(
//                            Rectangle()
//                                .stroke(
//                                    Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.63), lineWidth: 0.50
//                                )
//                        )
//                        .offset(x: 0.50, y: -67.50)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 379, height: 0)
//                        .overlay(
//                            Rectangle()
//                                .stroke(
//                                    Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.63), lineWidth: 0.50
//                                )
//                        )
//                        .offset(x: 0.50, y: -22.50)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 379, height: 0)
//                        .overlay(
//                            Rectangle()
//                                .stroke(
//                                    Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.63), lineWidth: 0.50
//                                )
//                        )
//                        .offset(x: 0.50, y: 22.50)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 379, height: 0)
//                        .overlay(
//                            Rectangle()
//                                .stroke(
//                                    Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.63), lineWidth: 0.50
//                                )
//                        )
//                        .offset(x: 0.50, y: 67.50)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 379, height: 0)
//                        .overlay(
//                            Rectangle()
//                                .stroke(
//                                    Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.63), lineWidth: 0.50
//                                )
//                        )
//                        .offset(x: -0.50, y: 112.50)
//                }
//                .frame(width: 380, height: 225)
//                .offset(x: 7, y: 210.50)
//            };Group {
//                Text("學生繳費依據本校學雜費收費標準表辦理。")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.54, green: 0.53, blue: 0.53))
//                    .offset(x: -12, y: 121)
//                Text("延修生若於加選截止日（學分費核算基準.......")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.54, green: 0.53, blue: 0.53))
//                    .offset(x: -1.50, y: 166)
//                Text("體育及軍訓課程按每週上課時數收取2個學.....")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.54, green: 0.53, blue: 0.53))
//                    .offset(x: -2.50, y: 211)
//                Text("通識(夜)類課程於113年2月16日13:00前不.....")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.54, green: 0.53, blue: 0.53))
//                    .offset(x: -2.50, y: 256)
//                Text("延修生、進修學士班學生或採學分費核算者....")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.54, green: 0.53, blue: 0.53))
//                    .offset(x: -2, y: 301)
//                Text("延修生若於加選截止日（學分費核算基準.......")
//                    .font(Font.custom("Zen Antique Soft", size: 18))
//                    .foregroundColor(Color(red: 0.54, green: 0.53, blue: 0.53))
//                    .offset(x: -2.50, y: 346)
//                Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: 63, height: 63)
//                    //                    .background(
//                    //                        AsyncImage(url: URL(string: "https://via.placeholder.com/63x63"))
//                    //                    )
//                    .offset(x: 173.50, y: 45.50)
//                Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: 61, height: 61)
//                    //                    .background(
//                    //                        AsyncImage(url: URL(string: "https://via.placeholder.com/61x61"))
//                    //                    )
//                    .offset(x: -134.50, y: -341.50)
//                ZStack() {
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 430, height: 97)
//                        .background(Color(red: 0.62, green: 0.35, blue: 0.35))
//                        .offset(x: 0, y: 0)
//                }
//                .frame(width: 430, height: 97)
//                .offset(x: 0, y: 417.50)
//                ZStack() {
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 430, height: 96)
//                        .background(Color(red: 0.62, green: 0.35, blue: 0.35))
//                        .offset(x: 0, y: 0)
//                    ZStack() { }
//                        .frame(width: 36.67, height: 25)
//                        .offset(x: 168.33, y: 20.50)
//                }
//                .frame(width: 430, height: 96)
//                .offset(x: 0, y: -418)
//            };Group {
//                ZStack() {
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 134, height: 5)
//                        .background(.black)
//                        .cornerRadius(100)
//                        .offset(x: 0, y: 454.50)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 430, height: 932)
//                        //                        .background(
//                        //                            AsyncImage(url: URL(string: "https://via.placeholder.com/430x932"))
//                        //                        )
//                        .offset(x: 0, y: 0)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 126, height: 37)
//                        .background(.black)
//                        .cornerRadius(19)
//                        .offset(x: 0, y: -436.50)
//                    ZStack() {
//                        Rectangle()
//                            .foregroundColor(.clear)
//                            .frame(width: 31, height: 13)
//                            //                            .background(
//                            //                                AsyncImage(url: URL(string: "https://via.placeholder.com/31x13"))
//                            //                            )
//                            .offset(x: 148.50, y: -0.31)
//                            .opacity(0.35)
//                        Rectangle()
//                            .foregroundColor(.clear)
//                            .frame(width: 323, height: 13.89)
//                            //                            .background(
//                            //                                AsyncImage(url: URL(string: "https://via.placeholder.com/323x14"))
//                            //                            )
//                            .offset(x: -2.50, y: 0)
//                    }
//                    .frame(width: 328, height: 13.89)
//                    .offset(x: 13, y: -437.19)
//                }
//                .frame(width: 430, height: 932)
//                .offset(x: 0, y: 0)
//            }
//        }
//        .frame(width: 430, height: 932)
//        .background(.white)
//    }
    }
}

#Preview {
    Test()
}
