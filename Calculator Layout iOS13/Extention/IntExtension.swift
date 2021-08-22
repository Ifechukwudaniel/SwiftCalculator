//
//  IntExtension.swift
//  Calculator Layout iOS13
//
//  Created by ifechukwu daniel; on 22/08/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


extension Int{
    func nagateFn () -> Int{
        print(self.signum())
        return self.signum() == -1 ? abs(self) : -self
    }
    
}
