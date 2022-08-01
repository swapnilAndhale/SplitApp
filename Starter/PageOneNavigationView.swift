//
//  PageOneNavigationView.swift
//  Starter
//
//  Created by Swapnil on 31/07/22.
//

import SwiftUI

struct PageOneNavigationView: View {
    var body: some View {
        
        NavigationView {
            List{
                VStack {
                    NavigationLink(destination: PageTwoNavigationView()) {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.mint)
                            .bold()
                        
                        Text("Some text")
                            .foregroundColor(.brown)
                            .bold()
                    }
                    
                }
                .navigationTitle("Navigation view")
            }
            
        }
    }
}
    
    struct PageOneNavigationView_Previews: PreviewProvider {
        static var previews: some View {
            PageOneNavigationView()
        }
    }
