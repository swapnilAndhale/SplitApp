//
//  CodableDataView.swift
//  Starter
//
//  Created by Swapnil on 01/08/22.
//

import SwiftUI

struct User1: Codable {
    let fullname: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}


struct CodableDataView: View {
    var body: some View {
        Button("Dcode JSON") {
            let input =
                """
                {
                "fullname": "Swapnil Andhale"
                "address": {
                    "street": "FC Road",
                    "city": "Pune"
                    }
                }
                """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User1.self, from: data) {
                print(user.address.street)  //FC Road
            }
        }
    }
}

struct CodableDataView_Previews: PreviewProvider {
    static var previews: some View {
        CodableDataView()
    }
}
