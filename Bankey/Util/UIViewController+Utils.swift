//
//  UIViewController+Utils.swift
//  Bankey
//
//  Created by jrasmusson on 2021-10-23.
//

import UIKit

extension UIViewController {
    
    // This one styles both the status bar and the navigation bar.
       func setStatusBar() {
           let navBarAppearance = UINavigationBarAppearance()
           navBarAppearance.configureWithTransparentBackground() // to hide Navigation Bar Line also
           navBarAppearance.backgroundColor = appColor
           UINavigationBar.appearance().standardAppearance = navBarAppearance
           UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
       }
 /*   func setStatusBar() {
        let statusBarSize = UIApplication.shared.statusBarFrame.size // deprecated but OK
        let frame = CGRect(origin: .zero, size: statusBarSize)
        let statusbarView = UIView(frame: frame)

        statusbarView.backgroundColor = appColor
        view.addSubview(statusbarView)
    } */
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
