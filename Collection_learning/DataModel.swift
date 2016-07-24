//
//  dataModel.swift
//  Collection_learning
//
//  Created by Pankaj on 21/07/16.
//  Copyright © 2016 Pankaj. All rights reserved.
//

import Foundation
import ObjectMapper

public class dataModel: Mappable
{
    public var events: [String]?
    
    required public init?(_ map: Map) {
        super.init()
        mapping(map)
    }
    
    override public func mapping(map: Map) {
        events <- map["events"]
        }
}
