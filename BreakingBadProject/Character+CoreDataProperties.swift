//
//  Character+CoreDataProperties.swift
//  BreakingBadProject
//
//  Created by Kingsley Enoka on 10/13/20.
//
//

import Foundation
import CoreData


extension Character {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Character> {
        return NSFetchRequest<Character>(entityName: "Character")
    }

    @NSManaged public var name: String?

}

extension Character : Identifiable {

}


