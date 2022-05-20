//
//  SideMenuDelegate.swift
//  SideMenu
//
//  Created by Andrew Ananda on 20/05/2022.
//

import Foundation
import UIKit

protocol SideMenuDelegate: AnyObject {
    func menuButtonTapped()
    func itemSelected(item: ContentViewControllerPresentation)
}
