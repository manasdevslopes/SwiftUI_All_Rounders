//
//  ShippingForm.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 18/06/24.
//

import SwiftUI

struct ShippingForm: View {
  @State private var shippingAddress: ShippingAddress = ShippingAddress()
    var body: some View {
      Form {
        Section {
          TextInputField("First Name", text: $shippingAddress.firstName)
            .tint(.pink)
          TextInputField("Last Name", text: $shippingAddress.lastName)
          TextInputField("Street", text: $shippingAddress.street)
          TextInputField("Number", text: $shippingAddress.number)
          TextInputField("Post code", text: $shippingAddress.postCode)
          TextInputField("City", text: $shippingAddress.city)
            .clearButtonHidden(false)
          TextInputField("County", text: $shippingAddress.county)
          TextInputField("Country", text: $shippingAddress.country)
            .clearButtonHidden(false)
        } header: {
          Text("Input")
        }
        .clearButtonHidden(true)
        .textCase(.uppercase)
        
        Section {
          Text("First Name: \(shippingAddress.firstName)")
          Text("Last Name: \(shippingAddress.lastName)")
          Text("Street: \(shippingAddress.street)")
          Text("Number: \(shippingAddress.number)")
          Text("Post code: \(shippingAddress.postCode)")
          Text("City: \(shippingAddress.city)")
          Text("County: \(shippingAddress.county)")
          Text("Country: \(shippingAddress.country)")
        } header: {
          Text("Output")
        }
        
      }
      .navigationTitle("Address")
    }
}

struct ShippingForm_Previews: PreviewProvider {
    static var previews: some View {
        ShippingForm()
    }
}
