//
//  User.swift
//  GFFollowers
//
//  Created by Sean Lee on 8/9/24.
//

import Foundation

struct User: Codable {
  let login: String
  let avatarUrl: String
  var name: String?
  var location: String?
  var bio: String?
  let publicRepos: Int
  let publicGists: Int
  let htmlUrl: String
  let following: Int
  let followers: Int
  let createdAt: String
}
