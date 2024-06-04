//
//  HKActivityRingViewRepresentable.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 04/06/24.
//

import HealthKitUI
import SwiftUI
import UIKit

struct RingActivity: UIViewRepresentable {
  typealias UIViewType = HKActivityRingView
  
  @Binding var activitySummary: HKActivitySummary
  
  func makeUIView(context: Context) -> HKActivityRingView {
    return HKActivityRingView()
  }
  
  func updateUIView(_ uiView: HKActivityRingView, context: Context) {
    uiView.setActivitySummary(activitySummary, animated: true)
  }
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  class Coordinator: NSObject {
    var parent: RingActivity
    
    init(_ ringView: RingActivity) {
      self.parent = ringView
    }
  }
}
