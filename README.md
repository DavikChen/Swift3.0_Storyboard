# Swift3.0_Storyboard
Swift3.0_多Storyboard的使用

参考文章: [](http://davikchen.com/2016/10/21/Storyboard和UIViewController的结合/)

此demo 主要是多个Storyboard 结合ViewController 的使用

以及2个页面直接通过协议进行代理传值

#### 通过Storyboard id 来初始化页面


```
let mSearchPage = UIStoryboard(name: "SearchPage", bundle: 
nil).instantiateViewController(withIdentifier: "SearchPage") as! 
SearchPageController
mSearchPage.mSearchKeywordDelegate = self
self.navigationController?.pushViewController(mSearchPage, animated: true)
```


