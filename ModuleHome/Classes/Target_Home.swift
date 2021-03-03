//
//  Target_Home.swift
//  SLProjectModuleComm
//
//  Created by 孙梁 on 2021/2/4.
//

import UIKit

@objc(Target_Home)
class Target_Home: NSObject {
    @objc func Action_HomeViewController(_ params: [NSString: AnyObject]?) -> UIViewController {
        SLHomeViewController()
    }
}
