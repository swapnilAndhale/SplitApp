//
//  Lists_SwiftUI.swift
//  Starter
//
//  Created by Swapnil on 20/07/22.
//

import SwiftUI

struct Lists_SwiftUI: View {
    
    let color = ["Green", "Red", "Blue", "White", "Black"]
    var body: some View {
        
        VStack {
            List {
                Section {
                    Text("Static list 1")
                    Text("Static list 2")
                }
                
                ForEach(0..<8) {
                    Text("Dynamic rows \($0)")
                }
                
                Text("Static")
            }
            
            List(color, id: \.self) {
                Text($0)
            }
            
        }
    }
}

struct Lists_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Lists_SwiftUI()
    }
}
