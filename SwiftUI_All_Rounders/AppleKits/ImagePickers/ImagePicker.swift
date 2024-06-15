//
//  ImagePicker.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 03/06/24.
//

import SwiftUI

// ImagePicker struct is a SwiftUI wrapper around UIImagePickerController
struct ImagePicker: UIViewControllerRepresentable {
  typealias UIViewControllerType = UIImagePickerController
  
  @Binding var isPresented:Bool // Binding to control the presentation of the image picker
  @Binding var image: UIImage? // Binding to hold the selected image
  var sourceType: UIImagePickerController.SourceType // Specifies the source type for the image picker (Camera/photos lisbrary)
  
  // Return the UIKit View that you want to use, i.e., UIImagePickerController
  func makeUIViewController(context: Context) -> UIImagePickerController {
    let picker = UIImagePickerController()
    // Set the delegate to handle image picker events
    picker.delegate = context.coordinator
    // Set the source type ( camera or photos library)
    picker.sourceType = sourceType
    return picker
  }
  
  // This one gives opportunity to updte the UIKit component(UIImagePickerController) for presentation in your SwiftUI Views. But not used in this case.
  func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) { }
  
  // This method creates a Coordinator instance which handles the delegation of UIImagePickerController
  func makeCoordinator() -> Coordinator {
    Coordinator(parent: self)
  }
  
  // Coordinator Class handles the delegate methods of UIImagePickerController
  class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    // Reference to the parent ImagePicker struct
    var parent: ImagePicker
    init(parent: ImagePicker) {
      self.parent = parent
    }
    
    // This delegate method is called when an image is selected
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      // Retrieve the selected image
      if let uiImage = info[.originalImage] as? UIImage {
        parent.image = uiImage
      }
      // Dismiss the image Picker
      parent.isPresented = false
    }
    
    // This delegate method is called when an image picker is cancelled
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
      // Dismiss the image Picker
      parent.isPresented = false
    }
  }
}
