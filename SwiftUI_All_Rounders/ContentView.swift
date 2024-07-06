//
//  ContentView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 01/06/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    
    /* SwiftUI_Components --> ActionSheetExample */
    // ActionSheetExample()
    // ActivityRingExample()
    // ShareSheetExample()
    // AlertExample()
    // ButtonExample()
    // BarChart()
    // ColorPickerExample()
    // DisclosureGroupExample()
    // VStack {
      // SimpleGaugeExample()
      // CircularGaugeExample()
      // LabeledGaugeExample()
    // }
    // GroupBoxExample()
    // ImageView()
    // LabelExample()
    // VStack {
      // CustomLinkButton()
      // LinkExample()
    // }
    // ListWithoutIdentifiable()
    // ListSeparatorHidden()
    // ListIdentifiable()
    // MenuExample()
    // PageControlExample()
    // TabBarExample()
    // PickerExample()
    // PopoverExample()
    // ProgressIndicatorExample()
    // ScrollViewExample()
    // SegmentedControlExample()
    // SheetExample()
    // SliderExample()
    // VStack {
      // ThreeColumnSplitView()
      // SplitView()
    // }
    // StepperExample()
    // TableColumnWidth()
    // TableStaticRow()
    // TableSelection()
    // TableDisclosureRow()
    // TableExample()
    // TableSorting()
    // TextExample()
    // TextFieldExample()
    // ToggleExample()
    // ToolbarExample()
    // TextInputTypeExample()
    
    /* View Communication Patterns In SwiftUI */
    // FromParentToDistantChildExample()
    // ShippingForm()
    // ParentsView()
    // BindingParentView()
    // PreferenceKey1View()
    // PreferenceKey2View()
    // PreferenceKey3View()
    // PreferenceKey4View()
    // PreferenceKey5View()
    // BetweenChildren()
    
    // Switch between NetworkService() and MockDataService() for real and mock data
    // PostsList(dataService: NetworkService())
    // PostsList(dataService: MockDataService(mockData: nil))
    /* PostsList(dataService: MockDataService(mockData: [
      Post(userId: 1, id: 1, title: "Injected Mock Title 1", body: "Injected Mock Body 1"),
      Post(userId: 2, id: 2, title: "Injected Mock Title 2", body: "Injected Mock Body 2")
    ]))
    */
    
    /* UI_UX */
    // CustomModifiers()
    // GroupBoxes()
    // ShareHomeView()
    CustomFonts()
    
    /* Apps --> AppleKits */
    // WebViewInSwiftUI()
    // ImagePickerView()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
