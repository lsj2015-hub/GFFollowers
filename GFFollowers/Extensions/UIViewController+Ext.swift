//
//  UIViewController+Ext.swift
//  GFFollowers
//
//  Created by Sean Lee on 8/8/24.
//

import UIKit

fileprivate var containerView: UIView!

extension UIViewController {
  
  func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
    DispatchQueue.main.async {
      let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
      alertVC.modalPresentationStyle = .overFullScreen
      alertVC.modalTransitionStyle = .crossDissolve
      self.present(alertVC, animated: true)
    }
  }
  
  func showLoadingView() {
    containerView = UIView(frame: view.bounds)
    view.addSubview(containerView)
    
    containerView.backgroundColor = .systemBackground
    containerView.alpha           = 0
    
    UIView.animate(withDuration: 0.25) { containerView.alpha = 0.8 }
    
    let activateIndicator = UIActivityIndicatorView(style: .large)
    containerView.addSubview(activateIndicator)
    
    activateIndicator.translatesAutoresizingMaskIntoConstraints = false
    
    
    NSLayoutConstraint.activate([
      activateIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      activateIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    
    activateIndicator.startAnimating()
  }
  
  func dismissLoadingView() {
    DispatchQueue.main.async {
      containerView.removeFromSuperview()
      containerView = nil
    }
  }
}
