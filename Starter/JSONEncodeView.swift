//
//  JSONEncodeView.swift
//  Starter
//
//  Created by Swapnil on 29/07/22.
//

import SwiftUI

struct User: Codable {
    let username: String
    let password: String
}

struct JSONEncodeView: View {
    @State private var user = User(username: "virocare", password: "Covid19")
    var body: some View {
        Button("Save data") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
            
        }
    }
}

struct JSONEncodeView_Previews: PreviewProvider {
    static var previews: some View {
        JSONEncodeView()
    }
}
