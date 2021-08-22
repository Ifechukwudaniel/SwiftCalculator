//
//  FloatExtension.swift
//  Calculator Layout iOS13
//
//  Created by ifechukwu daniel; on 22/08/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

extension Float{
    func nagateFn () -> Float{
        print(-1 * self)
        return self.sign  == .minus ? -1 * self  : -1 * self
    }
    
}
