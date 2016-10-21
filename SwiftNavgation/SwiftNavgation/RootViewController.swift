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
        let mSearchPage = UIStoryboard(name: "SearchPage", bundle: nil).instantiateViewController(withIdentifier: "SearchPage") as! SearchPageController
       // let mSearchPage UIStoryboard(name: "SearchPage", bundle: nil).instantiateInitialViewController() as ! SearchPageController
        
        // let mSearchPage = HomeCategoryController();
        mSearchPage.mSearchKeywordDelegate = self
        self.navigationController?.pushViewController(mSearchPage, animated: true)
        
    }
    
    // 代理传值
    func userChangeKeyword(mKeyword: String){
        
        mSearchKeyworld.text = "搜索关键字: \(mKeyword)"
    }
    
}

