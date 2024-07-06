//
//  CustomFonts.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 06/07/24.
//

import SwiftUI

struct CustomFonts: View {
    var body: some View {
      VStack {
        Group {
          Text("Avenir Next").font(.custom("AvenirNext-Regular", size:28))
          Text("Baskerville").font(.custom("Baskerville", size:28))
          Text("Chalkboard SE").font(.custom("ChalkboardSE-Regular", size:28))
          Text("Georgia").font(.custom("Georgia", size:28))
          Text("Helvetica Neue").font(.custom("HelveticaNeue", size:28))
          Text("Marker Felt").font(.custom("MarkerFelt-Thin", size:28))
          Text("Noteworthy").font(.custom("Noteworthy-Light", size:28))
          Text("Palatino").font(.custom("Palatino-Roman", size:28))
          Text("Times New Roman").font(.custom("TimesNewRomanPSMT", size:28))
          Text("Trebuchet MS").font(.custom("TrebuchetMS", size:28))
        }
        Group {
          Text("Futura").font(.custom("Futura-Medium", size:28))
          Text("Gill Sans").font(.custom("GillSans", size:28))
          Text("Copperplate").font(.custom("Copperplate", size:28))
          Text("American Typewriter").font(.custom("AmericanTypewriter", size:28))
          Text("Bradley Hand").font(.custom("BradleyHandITCTT-Bold", size:28))
          Text("Didot").font(.custom("Didot", size:28))
          Text("Optima").font(.custom("Optima-Regular", size:28))
          Text("Hoefler Text").font(.custom("HoeflerText-Regular", size:28))
          Text("Papyrus").font(.custom("Papyrus", size:28))
          Text("Verdana").font(.custom("Verdana", size:28))
        }
      }
    }
}

struct CustomFonts_Previews: PreviewProvider {
    static var previews: some View {
        CustomFonts()
    }
}
