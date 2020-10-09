//
//  Hike.swift
//  Hiking
//
//  Created by preety on 9/10/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import Foundation

struct Hike {
    
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        return [
            Hike(name: "Salmonberry Trail", imageURL: "sal", miles: 6),
            Hike(name: "Tom, Dick, and Harry Mountain", imageURL: "tom", miles: 5.8),
            Hike(name: "Tamanawas Falls", imageURL: "tam", miles: 5)
        ]
    }
}
