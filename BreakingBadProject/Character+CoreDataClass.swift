//
//  Character+CoreDataClass.swift
//  BreakingBadProject
//
//  Created by Kingsley Enoka on 10/13/20.
//
//

import Foundation
import CoreData

@objc(Character)
public class Character: NSManagedObject, Decodable {

  enum CharacterCodingKeys: String, CodingKey {
    case name
  }
  
  public convenience required init(from decoder: Decoder) throws {
    guard let entityDescription = NSEntityDescription.entity(forEntityName: "Character", in: CoreDataManager.shared.getContext()) else { throw CoreDataError.noSuchEntity}
    self.init(entity: entityDescription, insertInto: nil)
    let characterContainer = try decoder.container(keyedBy: CharacterCodingKeys.self)
    name = try characterContainer.decode(String.self, forKey: .name)
  }
  
}

enum CoreDataError: Error {
  case noSuchEntity
}
