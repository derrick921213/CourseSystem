    //
    //  ContentView.swift
    //  CourseSystem
    //
    //  Created by derrick on 2024/3/24.
    //

import SwiftUI
import UIKit
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

struct SettingsView: View {
    var body: some View {
        VStack {
            HeaderView()
            Text("Setting")
            Spacer()
        }
       
    }
}
struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "envelope.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color(hex:"#FCEBD1"))
                    .padding(.trailing, 10)
            }
            .padding()
            .background(Color(hex:"#9E5858"))
            .edgesIgnoringSafeArea(.top)
        }
    }
}
struct ContentView: View {
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
    
    var body: some View {

        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
