    //
    //  CourseSearch.swift
    //  CourseSystem
    //
    //  Created by derrick on 2024/5/26.
    //

import SwiftUI
struct SuperTextField: View {
    
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
    
}
//struct CourseSearch: View {
//    @State private var currentPageTitle = "課程搜尋"
//    @State private var selectedOption = "112"
//    let options = ["111", "112", "113"]
//    @State private var selectedOption1 = "下學期"
//    let options1 = ["上學期", "下學期"]
//    @State private var courseNumber = ""
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                HeaderView(title: $currentPageTitle)
//                Spacer()
//            }
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 2)
//        }
//    }
//}
//
struct CourseSearch: View {
    @State private var currentPageTitle = "課程搜尋"
    @State private var selectedOption = "112"
    let options = ["111", "112", "113"]
    @State private var selectedOption1 = "下學期"
    @State private var selectedOption2 = "資電學院"
    @State private var selectedOption3 = "資訊二乙"
    let options1 = ["上學期", "下學期"]
    let options2 = ["資電學院"]
    let options3 = ["資訊二乙"]
    @State private var courseNumber = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: $currentPageTitle)
                HStack {
                    Group {
                        Text("學年:")
                        Picker("學年", selection: $selectedOption) {
                            ForEach(options, id: \.self) { option in
                                Text(option)
                                    .tag(option)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding(.leading, 10)
                        .background(Color(hex: "#FCEBD1"))
                        .cornerRadius(999)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(Color.gray, lineWidth: 0.5)
                        )
                    }
                    Spacer().frame(width: 25)
                    Group {
                        Text("學期:")
                        Picker("學期", selection: $selectedOption1) {
                            ForEach(options1, id: \.self) { option in
                                Text(option)
                                    .tag(option)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding(.leading, 10)
                        .background(Color(hex: "#FCEBD1"))
                        .cornerRadius(999)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(Color.gray, lineWidth: 0.5)
                        )
                    }
                }
                .padding(.top, 8)
                ZStack(alignment: .top) {
                    Rectangle()
                        .fill(Color(hex: "#b68282"))
                        .frame(width: 380, height: 394)
                        .cornerRadius(10)
                    VStack {
                        Text("依輸入條件查詢")
                            .padding(.top, 13)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Group {
                            CourseSearchRow(label: "選課代號：", placeholder: "4501", text: $courseNumber)
                            CourseSearchRow(label: "星        期：", placeholder: "星期一", text: $courseNumber)
                            CourseSearchRow(label: "節        次：", placeholder: "8", text: $courseNumber)
                            CourseSearchRow(label: "科目名稱：", placeholder: "系統程式", text: $courseNumber)
                            CourseSearchRow(label: "教師姓名：", placeholder: "林志敏", text: $courseNumber)
                            CourseSearchRow(label: "授課語言：", placeholder: "中文", text: $courseNumber)
                            CourseSearchRow(label: "課程描述：", placeholder: "", text: $courseNumber)
                        }
                        Button(action: {
                                // 空的 action，不執行任何動作
                        }) {
                            Text("搜索")
                                .frame(width: 112, height: 30)
                                .background(Color(hex: "#862E2E"))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.top, 10)
                    }
                    .zIndex(2)
                }
                .padding(.bottom,25)
                ZStack(alignment: .top) {
                    Rectangle()
                        .fill(Color(hex: "#fef5e8"))
                        .frame(width: 380, height: 227)
                        .cornerRadius(10)
                    VStack {
                        Text("依開課系所查詢")
                            .padding(.top, 13)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        Group{
                            HStack{
                                Spacer()
                                Text("學院:")
                                Picker("學期", selection: $selectedOption2) {
                                    ForEach(options2, id: \.self) { option in
                                        Text(option)
                                            .tag(option)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                                .padding(.leading, 10)
                                .background(Color(hex: "#e2d7c3"))
                                .cornerRadius(999)
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 999)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                                Spacer()
                            }
                        }
                        Group{
                            HStack{
                                Spacer()
                                Text("系所:")
                                Picker("系所", selection: $selectedOption2) {
                                    ForEach(options2, id: \.self) { option in
                                        Text(option)
                                            .tag(option)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                                .padding(.leading, 10)
                                .background(Color(hex: "#e2d7c3"))
                                .cornerRadius(999)
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 999)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                                Spacer()
                            }
                        }
                        Group{
                            HStack{
                                Spacer()
                                Text("班級:")
                                Picker("班級", selection: $selectedOption3) {
                                    ForEach(options3, id: \.self) { option in
                                        Text(option)
                                            .tag(option)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                                .padding(.leading, 10)
                                .background(Color(hex: "#e2d7c3"))
                                .cornerRadius(999)
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 999)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                                Spacer()
                            }
                        }
                        Button(action: {
                                // 空的 action，不執行任何動作
                        }) {
                            Text("搜索")
                                .frame(width: 112, height: 30)
                                .background(Color(hex: "#862E2E"))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.top, 5)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct CourseSearchRow: View {
    var label: String
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack(alignment: .center) {
            Circle()
                .fill(Color.white)
                .frame(width: 16, height: 16)
            Text(label)
                .foregroundColor(.white)
            ZStack {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.white)
                        .opacity(1)
                        .padding(.leading, 5)
                        .zIndex(2)
                }
                SuperTextField(
                    placeholder: Text(""),
                    text: $text
                )
                .multilineTextAlignment(.center)
                .background(Color(hex: "#c6adac"))
                .frame(width: 112, height: 30)
                .cornerRadius(900)
                .overlay(
                    RoundedRectangle(cornerRadius: 900)
                        .stroke(Color.gray, lineWidth: 0.5)
                )
                .zIndex(-1)
            }
        }
    }
}
#Preview {
    CourseSearch()
}
