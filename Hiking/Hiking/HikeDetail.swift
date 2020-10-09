//
//  HikeDetail.swift
//  Hiking
//
//  Created by preety on 9/10/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack{
            Image(hike.imageURL)
            .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }
            
            Text(hike.name)
            Text(String(format: "%.2f",hike.miles))
            
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
     }
}


struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "llal", imageURL: "tam", miles: 0.5))
    }
}
