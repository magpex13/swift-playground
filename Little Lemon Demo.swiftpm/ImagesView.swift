//
//  ImagesView.swift
//  Little Lemon Demo
//
//  Created by Magno on 26/04/23.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        Image("lastofus")
            .resizable()
            .scaledToFit()
            //.aspectRatio(contentMode: ContentMode.fit)
            .frame(width: 50, height: 50)
    }
}
