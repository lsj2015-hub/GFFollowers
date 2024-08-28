//
//  GFDataLoadingVC.swift
//  GFFollowers
//
//  Created by Sean Lee on 8/26/24.
//

import UIKit

class GFDataLoadingVC: UIViewController {
  
  var containerView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  func showLoadingView() {
    containerView = UIView(frame: view.bounds)
    view.addSubview(containerView)
    
    containerView.backgroundColor = .systemBackground
    containerView.alpha           = 0
    
    UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
    
    let activateIndicator = UIActivityIndicatorView(style: .large)
    containerView.addSubview(activateIndicator)
    
    activateIndicator.translatesAutoresizingMaskIntoConstraints = false
     
    NSLayoutConstraint.activate([
      activateIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
      activateIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
    ])
    
    activateIndicator.startAnimating()
  }
  
  func dismissLoadingView() {
    DispatchQueue.main.async {
      self.containerView.removeFromSuperview()
      self.containerView = nil
    }
  }
  
  func showEmptyStateView(with message: String, in view: UIView) {
    let emptyStateView = GFEmptyStateView(message: message)
    emptyStateView.frame = view.bounds
    view.addSubview(emptyStateView)
    
  }
  
}
