//
//  StringExtension.swift
//  Calculator Layout iOS13
//
//  Created by ifechukwu daniel; on 22/08/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

extension String {
    func toInteger () -> Int{
        return Int(self) ?? 0
    }
    
    func toFloat () -> Float{
        return Float(self) ?? 0.0
    }
}
