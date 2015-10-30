//
//  Transformation.swift
//  WatsonCore
//
//  Created by Karl Weinmeister on 10/29/15.
//  Copyright © 2015 MIL. All rights reserved.
//

import Foundation
import ObjectMapper
public class Transformation {
    
    static let stringToInt = TransformOf<Int, String>(fromJSON: { (value: String?) -> Int? in
    // transform value from String? to Int?
    if let x = value {
        return Int(x)
    }
    return nil
    }, toJSON: { (value: Int?) -> String? in
        // transform value from Int? to String?
        if let value = value {
            return String(value)
        }
        return nil
})
}