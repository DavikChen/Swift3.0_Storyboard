//
//  HomeCategoryController.swift
//  SwiftNavgation
//
//  Created by DavikChen on 2016/10/20.
//  Copyright © 2016年 davikchen. All rights reserved.
//

import Foundation
import UIKit

class SearchPageController: UIViewController{
    
    @IBAction func sendKeyworld(_ sender: AnyObject) {
        mSearchKeywordDelegate?.userChangeKeyword(mKeyword: "秋季外套")
        
        self.navigationController!.popViewController(animated: true)
        
    }
    var mSearchKeywordDelegate : SearchKeywordDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "搜索页面"
        
        let mSearchButton = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(SearchPageController.goBack))
        
        self.navigationItem.leftBarButtonItem = mSearchButton
        
        self.view.backgroundColor = UIColor(red: 243, green: 244, blue: 245, alpha: 1)
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goBack()  {
        
        mSearchKeywordDelegate?.userChangeKeyword(mKeyword: "我返回了 你赶快修改数据吧")
        
        self.navigationController!.popViewController(animated: true)
    }

}
