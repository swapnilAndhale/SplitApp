//
//  ScrollViewView.swift
//  Starter
//
//  Created by Swapnil on 01/08/22.
//

import SwiftUI

struct ScrollViewView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                ForEach(0..<100) {
                    Text("Hello, World! \($0)")
                }
            }
            .frame(maxWidth: .infinity )
        }
    }
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
