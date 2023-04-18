//
//  ViewController.swift
//  RickMorty
//
//  Created by ahmed nagi on 18/04/2023.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
         setupTabBar()
         configTabBar()
    }

    private func setupTabBar(){
        var viewControllers = [charactrController(),locationController(),episodController(),settingController()]
        for nav in viewControllers {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers(viewControllers, animated: true)
    }
    private func configTabBar(){
        tabBar.itemPositioning = .centered
        tabBar.tintColor = .black
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    private func charactrController() -> UINavigationController{
        let charactrVc = RMCharacterController()
        charactrVc.title = "Character"
        charactrVc.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person"),tag: 1)
        charactrVc.navigationItem.largeTitleDisplayMode = .automatic
        return UINavigationController(rootViewController: charactrVc)
    }
    
    private func locationController() -> UINavigationController{
        let locationVc = RMLocationController()
        locationVc.title = "Location"
        locationVc.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "globe"),tag: 2)
        locationVc.navigationItem.largeTitleDisplayMode = .automatic
        return UINavigationController(rootViewController: locationVc)
    }
    
    
    private func episodController() -> UINavigationController{
        let episodVc = RMEpisodController()
        episodVc.title = "Episod"
        episodVc.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "tv"),tag: 3    )
        episodVc.navigationItem.largeTitleDisplayMode = .always
        return UINavigationController(rootViewController: episodVc)
    }
    private func settingController() -> UINavigationController{
        let settingVc = RMSettingController()
        settingVc.title = "Setting"
        settingVc.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "gear"),tag: 4)
        settingVc.navigationItem.largeTitleDisplayMode = .always
        return UINavigationController(rootViewController: settingVc)
    }
    
    
  
}

