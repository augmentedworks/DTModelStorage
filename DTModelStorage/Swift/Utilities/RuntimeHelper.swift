//
//  RuntimeHelper.swift
//  DTModelStorageTests
//
//  Created by Denys Telezhkin on 15.07.15.
//  Copyright (c) 2015 Denys Telezhkin. All rights reserved.
//

import Foundation

public final class RuntimeHelper
{
    public class func classNameFromReflectionSummary(summary: String) -> String
    {
        if (contains(summary,"."))
        {
            return summary.componentsSeparatedByString(".").last!
        }
        return summary
    }
    
    public class func classNameFromReflection(reflection: MirrorType) -> String
    {
        if (contains(reflection.summary,"."))
        {
            return reflection.summary.componentsSeparatedByString(".").last!
        }
        return reflection.summary
    }
}