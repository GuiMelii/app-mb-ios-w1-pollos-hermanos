//
//  AppMbIosW1PollosHermanosAppDelegate.swift
//  AppMbIosW1PollosHermanos
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//

import UIKit
import MLConfigurationProvider
import MLCommons

@UIApplicationMain
class AppMbIosW1PollosHermanosAppDelegate: MLCBaseAppDelegate {
    var coordinator: AppMbIosW1PollosHermanosExampleAppCoordinator?

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navController = UINavigationController()
        coordinator = AppMbIosW1PollosHermanosExampleAppCoordinator(navigationController: navController)
        coordinator?.start()

        window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navController
        window.makeKeyAndVisible()

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    override func applicationIsSubscribingAppBehaviours(_ behaviourManager: MLCAppBehaviourManager) {
        // suscribe here your app behaviours
        // more info: https://sites.google.com/mercadolibre.com/mobile/arquitectura/ios/app-behaviours
    }
}
