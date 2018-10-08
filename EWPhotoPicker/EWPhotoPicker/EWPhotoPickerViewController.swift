//
//  EWNavigationViewController.swift
//  EWPhotoPicker
//
//  Created by Ethan.Wang on 2018/10/8.
//  Copyright © 2018年 Ethan. All rights reserved.
//

import UIKit
/// 通用navigationController
class EWPhotoPickerViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    /// 将delegate传入,可自定制tintColor,默认黑色
    init(photoDelegate: EWImageCropperDelegate, tintColor: UIColor = UIColor.black) {
        let vc = EWPhotoCollectionViewController()
        vc.delegate = photoDelegate
        super.init(rootViewController: vc)
        self.navigationBar.tintColor = tintColor
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
