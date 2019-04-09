//
//  AppDelegate.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 08/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        /// Model
        let animalListRepository = AnimalListRepository()
        
        /// View
        let animalListView = AnimalListViewController()
        
        /// Presenter
        let animalListPresenter = AnimalListPresenter(animalListView, animalListRepository)
        
        animalListView.presenter = animalListPresenter
        
        /// Navigation in application
        let navigationController = UINavigationController(rootViewController: animalListView)
        
        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}
