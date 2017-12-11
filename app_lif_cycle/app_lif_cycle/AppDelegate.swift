//
//  AppDelegate.swift
//  app_lif_cycle
//
//  Created by LuizRamos on 11/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    /*
     Usado pra realizar uma operação antes do aplicativo começar a rodar.
     */
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        print("DidFinishLauchingWithOptions")
        return true
    }

    /*
 
     Este método é disparado quando a aplicação parte do estado ativo para o estado de INATIVO.
     por alguma interrupção
     
     */
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("WillResignActive")
    }

    /*
 
 Este método é disparado quando a aplicação efetivamente entra em background.
     
 */
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        print("applicationDidEnterBackground")
    }

    /*
 
     Este método é dipara quando a aplicação está saindo de background e indo para o estado ativo.
     */
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
        print("applicationWillEnterForeground")
    }

    /*
     Método dispara quado a aplicação volta efetivamente para o estado ativo
 
     */
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        print("applicationDidBecomeActive")
    }

    /*
 Método disparado quando a aplicação está prestes a ser finalizado
     
     */
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        print("applicationWillTerminate")
    }


}

