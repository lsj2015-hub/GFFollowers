//
//  GFRepoItemVC.swift
//  GFFollowers
//
//  Created by Sean Lee on 8/20/24.
//

import UIKit

protocol GFRepoItemInfoDelegate: AnyObject {
  func didTapGitHubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
  
  weak var delegate: GFRepoItemInfoDelegate!
  
  init(user: User, delegate: GFRepoItemInfoDelegate) {
    super.init(user: user)
    self.delegate = delegate
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureItems()
  }
  
  private func configureItems() {
    itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
    itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
    actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
  }
  
  override func actionButtonTapped() {
    delegate.didTapGitHubProfile(for: user)
  }
}
