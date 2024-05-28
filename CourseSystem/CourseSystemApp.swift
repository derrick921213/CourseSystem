//
//  CourseSystemApp.swift
//  CourseSystem
//
//  Created by derrick on 2024/3/24.
//

import SwiftUI
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = Double((rgbValue >> 16) & 0xFF) / 255.0
        let g = Double((rgbValue >> 8) & 0xFF) / 255.0
        let b = Double(rgbValue & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
extension UIColor {
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = CGFloat((rgbValue >> 16) & 0xFF) / 255.0
        let g = CGFloat((rgbValue >> 8) & 0xFF) / 255.0
        let b = CGFloat(rgbValue & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}

struct HeaderView: View {
    @Binding var title: String
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                HStack {
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 60)
//                        .border(Color.black, width: 1.5)
                    Spacer().frame(width: 60)
                    Text(title)
                        .font(.title)
                        .foregroundColor(Color(hex: "#FCEBD1"))
//                        .border(Color.black, width: 1.5)
                        .frame(maxWidth: .infinity)
//                        .border(Color.red, width: 1.5)
                    Spacer(minLength: 0)
                    NavigationLink(destination: DetailView()) {
                        Image(systemName: "envelope.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(hex: "#FCEBD1"))
                            .padding(.trailing, 15)
                    }
                }
                .padding(.vertical, 10)
                .frame(height: geometry.safeAreaInsets.top)
                .background(Color(hex: "#9E5858"))
            }
            .frame(height: 60)
        }
        .frame(height: 60)
    }
}
struct TailView: View {
    @State public var selectedTab: Int
    var body: some View{
        NavigationStack {
            TabView(selection: $selectedTab) {
                CourseSearch()
                    .tabItem {
                        Label("課程瀏覽",systemImage: "rectangle.and.text.magnifyingglass")
                    }
                    .tag(1)
                Text("Second Page")
                    .tabItem {
                        Label("加退選",systemImage: "square.and.at.rectangle")
                    }
                    .tag(2)
                Home()
                    .tabItem {
                        Label("首頁",systemImage: "house")
                    }
                    .tag(3)
                Text("Forth Page")
                    .tabItem {
                        Label("課程表",systemImage: "calendar")
                    }
                    .tag(4)
                Text("Five Page")
                    .tabItem {
                        Label("學分統計",systemImage: "list.bullet.clipboard")
                    }
                    .tag(5)
            }
        }
    }
}

@main
struct CourseSystemApp: App {
    let persistenceController = PersistenceController.shared
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = UIColor(hex: "#9E5858")
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor(hex: "#FCEBD1")
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor(hex: "#ffd700")
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(hex: "#ffd700")]
        UITabBar.appearance().standardAppearance = tabBarAppearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
        
        UITabBar.appearance().isTranslucent = true
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
