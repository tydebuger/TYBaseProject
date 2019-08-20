//
//  HLAppDelegate+Extension.swift
//  HLYunVillage
//
//  Created by HaviLee on 2019/7/10.
//  Copyright © 2019 HaviLee. All rights reserved.
//

import Foundation
import CYLTabBarController
import CTMediator
import TYMediator
import HLUIKit
//

extension AppDelegate {
    
    func viewControllers() -> [UINavigationController]{
        let stationListVC = CTMediator.sharedInstance()?.getRootStationVC(callback: { (result) in
            
        })
        let stationNavi = BaseNaviViewController.init(rootViewController: stationListVC!)
    
        let orderListVC = CTMediator.sharedInstance()?.getRootOrderVC(callback: { (result) in
            
        })
        let orderNavi = BaseNaviViewController(rootViewController: orderListVC!)
        
        let personInfoVC = CTMediator.sharedInstance()?.getRootProfileVC(callback: { (result) in
            
        })
        let personNavi = BaseNaviViewController(rootViewController: personInfoVC!)
        
        let viewControllers = [stationNavi, orderNavi, personNavi]
        
        return viewControllers
        
    }
    
    
    func tabBarItemsAttributesForController() ->  [[String : String]] {
        
        let tabBarItemOne = [CYLTabBarItemTitle:"加油",
                             CYLTabBarItemImage:"tabbar_oil",
                             CYLTabBarItemSelectedImage:"tabbar_oil_selected"]
        
        let tabBarItemTwo = [CYLTabBarItemTitle:"订单",
                             CYLTabBarItemImage:"tabbar_order",
                             CYLTabBarItemSelectedImage:"tabbar_order_selected"]
        
        let tabBarItemThree = [CYLTabBarItemTitle:"我的",
                               CYLTabBarItemImage:"tabbar_me",
                               CYLTabBarItemSelectedImage:"tabbar_me_selected"]
        
        let tabBarItemsAttributes = [tabBarItemOne,tabBarItemTwo,tabBarItemThree]
        return tabBarItemsAttributes
    }
    
    func customizeTabbarItemInterface() {
        let normalAttr = [NSAttributedString.Key.foregroundColor: AppTheme.NormalColor.getColor()]
        let selectedAtt = [NSAttributedString.Key.foregroundColor: AppTheme.HighlightColor.getColor()]
        let tabbarItem = UITabBarItem.appearance()
        tabbarItem.setTitleTextAttributes(normalAttr, for: .normal)
        tabbarItem.setTitleTextAttributes(selectedAtt, for: .selected)
        let tabBar = UITabBar.appearance()
        tabBar.backgroundImage = UIImage.cyl_image(with: UIColor.rgbColorFromHex(rgb: 0x2e3033), size: CGSize(width: UIScreen.main.bounds.width, height: 44))
    }
}

