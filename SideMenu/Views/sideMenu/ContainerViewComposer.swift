//
//  ContainerViewComposer.swift
//  SideMenu
//
//  Created by Andrew Ananda on 20/05/2022.
//

import Foundation
import UIKit

final class ContainerViewComposer {
    static func makeContainer() -> ContainerViewController {
        let homeViewController = HomeViewController()
        let aboutViewController = AboutViewController()
        let sideMenuItems = [
            SideMenuItem(icon: UIImage(systemName: "house.fill"),
                         name: "Home",
                         viewController: .embed(homeViewController)),
            SideMenuItem(icon: UIImage(systemName: "info.circle"),
                         name: "About",
                         viewController: .push(aboutViewController)),
        ]
        let sideMenuViewController = SideMenuViewController(sideMenuItems: sideMenuItems)
        let container = ContainerViewController(sideMenuViewController: sideMenuViewController,
                                                rootViewController: homeViewController)
        
        return container
    }
}
