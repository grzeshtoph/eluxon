//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Greg Smorag on 13/11/2017.
//  Copyright © 2017 Greg Smorag. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
            case .on:
                self = .off
            case .off:
                self = .on
        }
    }
}
