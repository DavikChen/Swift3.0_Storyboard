//
//  ViewController.swift
//  SwiftNavgation
//
//  Created by DavikChen on 2016/10/20.
//  Copyright © 2016年 davikchen. All rights reserved.
//

import UIKit

class RootViewController: UIViewController ,SearchKeywordDelegate{

    @IBOutlet weak var mSearchKeyworld: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "首页"
        
        let mSearchButton = UIBarButtonItem(title: "搜索", style: .plain, target: self, action: #selector(RootViewController.goSearchPage))
        
        self.navigationItem.rightBarButtonItem = mSearchButton
        
        
    }

   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goSearchPage()  {
        // 通过StoryBoard ID 来初始化窗口
        let mSearchPage = UIStoryboard(name: "SearchPage", bundle: nil).instantiateViewController(withIdentifier: "SearchPage") as! SearchPageController
        // 通过 ViewController
        // let mSearchPage UIStoryboard(name: "SearchPage", bundle: nil).instantiateInitialViewController() as ! SearchPageController
        mSearchPage.mSearchKeywordDelegate = self // 代理协议
        self.navigationController?.pushViewController(mSearchPage, animated: true)
        
    }
    
    // 代理传值
    func userChangeKeyword(mKeyword: String){
        
        mSearchKeyworld.text = "搜索关键字: \(mKeyword)"
    }
    
}

