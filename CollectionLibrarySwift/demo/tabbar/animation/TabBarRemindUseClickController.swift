//
//  TabBarRemindUseClickController.swift
//  CollectionLibrarySwift
//
//  Created by Huatu on 2019/12/29.
//  Copyright © 2019 YoungManSter. All rights reserved.
//

import UIKit

class TabBarRemindUseClickController:YYTabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let normalImgs=["home","find","favor","message","me"]
        let selectImgs=["home_1","find_1","favor_1","message_1","me_1"]
        let titles=["首页","搜索","收藏","消息","我的"]
        let chidVC=[CommonWithoutNavController(),CommonWithoutNavController(),CommonWithoutNavController(),CommonWithoutNavController(),CommonWithoutNavController()]
        
        
        let builder:TabBarBasicParamBuilder=TabBarBasicParamBuilder
            .with(childVCs: chidVC, normalImgs: normalImgs, selectImgs: selectImgs, titles: titles)
            .defultStyle()
            .backgroundColorWithoutTitlesAnimationStyle()
            .setSwithcBouncesAnimation(switchBgAnimation: true)
            .setSpecialIndexAndColor(bgColorIndex: 2)
            .retunDefaultStyle()
            .setRemindUseClickIndex(remindUseClickIndex: 2)
            .build()
        
        
        let _:TabBarSetting=TabBarSetting(vc:self,tabBarBuilder: builder)
        
    }
}
