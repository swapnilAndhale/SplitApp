//
//  UserDefaultsAndAppStorage.swift
//  Starter
//
//  Created by Swapnil on 28/07/22.
//

import SwiftUI

struct UserDefaultsAndAppStorage: View {
    //@State private var number = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage("num") private var number = 0
    var body: some View {
        Button("add number = \(number)") {
            number += 1
           // UserDefaults.standard.set(self.number, forKey: "Tap")
        }
    }
}

struct UserDefaultsAndAppStorage_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsAndAppStorage()
    }
}
