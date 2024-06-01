import SwiftUI

struct TimeTable: View {
    let columns = [
        GridItem(.fixed(50)),
        GridItem(.fixed(60)),
        GridItem(.fixed(60)),
        GridItem(.fixed(60)),
        GridItem(.fixed(60)),
        GridItem(.fixed(60))
    ]
    @State private var currentPageTitle = "功課表"
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                    // Header
                HeaderView(title: $currentPageTitle)
                LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
                    Text("").frame(height: 50)
                    Text("週一\n3/25").frame(height: 50)
                    Text("週二\n3/26").frame(height: 50)
                    Text("週三\n3/27").frame(height: 50)
                    Text("週四\n3/28").frame(height: 50)
                    Text("週五\n3/29").frame(height: 50)
                }
                .font(.headline)
                .padding(.top, 20)
                
                    // Time slots and classes
                ForEach(0..<10) { index in
                    LazyVGrid(columns: columns, spacing: 10) {
                        Text(timeText(for: index))
                            .frame(height: 60)
                            .font(.caption)
                        
                        ForEach(0..<5) { dayIndex in
                            ClassView(text: classText(for: index, on: dayIndex))
                                .frame(height: heightForClass(at: index, on: dayIndex))
                        }
                    }
                }
            }
//            .padding()
        }
    }
    
        // Helper functions
    func timeText(for index: Int) -> String {
        switch index {
        case 0: return "8:10~\n9:00"
        case 1: return "9:10~\n10:00"
        case 2: return "10:10~\n11:00"
        case 3: return "11:10~\n12:00"
        case 4: return "13:10~\n14:00"
        case 5: return "14:10~\n15:00"
        case 6: return "15:10~\n16:00"
        case 7: return "16:10~\n17:00"
        case 8: return "17:10~\n18:00"
        default: return ""
        }
    }
    
    func classText(for index: Int, on dayIndex: Int) -> String {
            // Define your class schedule based on the provided image
        let schedule = [
            ["", "", "", "", ""],
            ["", "倫理價值與生命哲學\n人405", "", "", ""],
            ["", "環境土壤學\n102", "體育（二）\n體館202", "創意思考\n人201", "中文思辨與表達\n人B116A"],
            ["", "", "公民參與\n人402", "", ""],
            ["", "", "", "", ""],
            ["大一英文\n忠303", "", "", "微積分（二）\n工301", ""],
            ["", "iOS APP程式設計\n行204", "", "", ""],
            ["", "社會實踐\n人304", "", "", ""],
            ["", "", "", "", ""],
            ["", "", "", "", ""]
        ]
        return schedule[index][dayIndex]
    }
    
    func heightForClass(at index: Int, on dayIndex: Int) -> CGFloat {
        let text = classText(for: index, on: dayIndex)
        return text.isEmpty ? 60 : (index == 2 ? 120 : 100)
    }
}

struct ClassView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray5))
            .cornerRadius(8)
            .padding(.vertical, 2)
    }
}


#Preview {
    TimeTable()
}
