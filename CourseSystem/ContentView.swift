    //
    //  ContentView.swift
    //  CourseSystem
    //
    //  Created by derrick on 2024/3/24.
    //

import SwiftUI
//struct SettingsView: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                HeaderView()
//                Text("Setting")
//                Spacer()
//            }
//        }
//    }
//}
//struct DetailView: View {
//    var body: some View {
//        Text("Detail Page")
//    }
//}
//struct HeaderView: View {
//    @State private var showDetailView = false
//    var body: some View {
//        GeometryReader { geometry in
//            VStack {
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        showDetailView = true
//                    }) {
//                        Image(systemName: "envelope.fill")
//                            .font(.largeTitle)
//                            .foregroundColor(Color(hex: "#FCEBD1"))
//                            .padding(.trailing, 10)
//                            .padding(.top, 5)
//                    }
//                    .sheet(isPresented: $showDetailView) {
//                        DetailView()
//                    }
//                }
//                .padding()
//                .frame(height: geometry.safeAreaInsets.top)
//                .background(Color(hex:"#9E5858"))
//            }
//        }
//    }
//}
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            Home()
//                .tabItem {
//                    Label("Home", systemImage: "house")
//                }
//            
//            SettingsView()
//                .tabItem {
//                    Label("Settings", systemImage: "gear")
//                }
//        }
//    }
//}
struct Home: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HeaderView()
                Text("Welcome to the Home Page")
                Spacer()
            }
        }
        .border(.black)
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                Text("Setting")
                Spacer()
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail Page")
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { geometry in
                HStack {
                    Spacer()
                    NavigationLink(destination: DetailView()) {
                        Image(systemName: "envelope.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(hex: "#FCEBD1"))
                            .padding(.trailing, 10)
                            .padding(.top, 5)
                    }
                }
                .padding()
                .frame(height: geometry.safeAreaInsets.top)
                .background(Color(hex: "#9E5858"))
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
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
}

#Preview {
    ContentView()
}
