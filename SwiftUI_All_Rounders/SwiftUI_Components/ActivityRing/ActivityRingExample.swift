//
//  ActivityRingExample.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 04/06/24.
//

import HealthKit
import SwiftUI

struct ActivityRingExample: View {
  @State private var activitySummary = HKActivitySummary()
  
  var body: some View {
    ZStack {
      RingActivity(activitySummary: $activitySummary)
        .onAppear {
          postLoadData()
        }
    }
    .background(Color.black)
  }
}

extension ActivityRingExample {
  func postLoadData() {
    // Move: active enery burned / goal
    // Quantity unit must be energy, ie. calorie
    activitySummary.activeEnergyBurned = HKQuantity(unit: .largeCalorie(), doubleValue: 30)
    activitySummary.activeEnergyBurnedGoal = HKQuantity(unit: .largeCalorie(), doubleValue: 100)
    
    // Exercise: exercise time / goal
    // Quantity unit must be time (hour, minute, or second)
    activitySummary.appleExerciseTime = HKQuantity(unit: .minute(), doubleValue: 20)
    activitySummary.appleExerciseTimeGoal = HKQuantity(unit: .minute(), doubleValue: 30)
    
    // Stand: hours time / goal
    // Quantity unit must be count
    activitySummary.appleStandHours = HKQuantity(unit: .count(), doubleValue: 1)
    activitySummary.appleStandHoursGoal = HKQuantity(unit: .count(), doubleValue: 4)
  }
}

struct ActivityRingExample_Previews: PreviewProvider {
  static var previews: some View {
    ActivityRingExample()
  }
}
