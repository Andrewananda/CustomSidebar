//
//  ContentViewControllerPresentation.swift
//  SideMenu
//
//  Created by Andrew Ananda on 20/05/2022.
//

import Foundation
import UIKit


enum ContentViewControllerPresentation {
    case embed(ContentViewController)
    case push(UIViewController)
    case modal(UIViewController)
}
