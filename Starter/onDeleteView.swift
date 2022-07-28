//
//  onDeleteView.swift
//  Starter
//
//  Created by Swapnil on 28/07/22.
//

import SwiftUI

struct onDeleteView: View {
    @State private var number = [Int]()
    @State private var num1 = 1
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(number, id:\.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform: removeRow)
                }
                Button("Add numbers") {
                    number.append(num1)
                    num1 = num1 + 1   // num1 += 1
                    
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
    func removeRow(at offsets: IndexSet) {
        number.remove(atOffsets: offsets)
    }
    
}

struct onDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        onDeleteView()
    }
}
