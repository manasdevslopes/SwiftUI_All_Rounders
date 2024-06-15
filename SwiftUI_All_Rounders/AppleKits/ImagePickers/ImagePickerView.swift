//
//  ImagePickerView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 03/06/24.
//

import SwiftUI
import PhotosUI

enum SourceType {
  case camera
  case photoLibrary
}

struct ImagePickerView: View {
  
  @State private var avatarImage: UIImage?
  @State private var isConfirmationDialogPresented: Bool = false
  @State private var isImagePickerPresented: Bool = false
  @State private var sourceType: SourceType = .camera
  @State private var photosPickerItem: PhotosPickerItem?
  @State private var isPhotosPickerPresented: Bool = false
  
  var body: some View {
    VStack {
      HStack(spacing: 20) {
        ZStack {
          if let avatarImage {
            Image(uiImage: avatarImage)
              .resizable()
              .aspectRatio(contentMode: .fill).frame(width: 100, height: 100).clipShape(Circle())
          } else {
            Image(systemName: "person.fill")
              .resizable()
              .aspectRatio(contentMode: .fit).frame(width: 100, height: 100).clipShape(Circle())
          }
        }
        .onTapGesture {
          isConfirmationDialogPresented = true
        }
        .confirmationDialog("Choose an Option", isPresented: $isConfirmationDialogPresented) {
          Button("Camera") {
            sourceType = .camera
            isImagePickerPresented = true
          }
          Button("Photo Library") {
            sourceType = .photoLibrary
            isPhotosPickerPresented = true
          }
        }
        
        VStack(alignment: .leading) {
          Text("Manas Vijaywargiya")
            .font(.largeTitle)
          
          Text("iOS Developer")
            .font(.headline).foregroundStyle(.secondary)
        }
        Spacer()
      }
      Spacer()
    }
    .padding(30)
    .sheet(isPresented: $isImagePickerPresented) {
      if sourceType == .camera {
        ImagePicker(isPresented: $isImagePickerPresented, image: $avatarImage, sourceType: .camera)
      }
    }
    .photosPicker(isPresented: $isPhotosPickerPresented, selection: $photosPickerItem, matching: .images)
    .onChange(of: photosPickerItem) { _ in
      Task {
        if let photosPickerItem,
           let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
          if let image = UIImage(data: data) {
            avatarImage = image
          }
        }
        photosPickerItem = nil
      }
    }
  }
}

struct ImagePickerView_Previews: PreviewProvider {
  static var previews: some View {
    ImagePickerView()
  }
}
