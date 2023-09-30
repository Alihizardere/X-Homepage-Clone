//
//  ViewController.swift
//  X Homepage Clone
//
//  Created by alihizardere on 27.09.2023.
//

import UIKit

class Homepage: UIViewController {
    
    
    @IBOutlet weak var tweetTableView: UITableView!
    
    var tweetList = [Tweets]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        tweetTableView.delegate = self
        tweetTableView.dataSource = self
    
        let t1 = Tweets(userId: 1, userName:"@kasimADALAN", userNick: "Kasım ADALAN", userBlueTick: "bluetick", userImage: "kasimAdalan", tweetContent: "Udemy üzerindeki bütün kurslarımız için kullanabileceğiniz Ekim ayı kuponlarımız hazır, fırsatı kaçırmayın, başarılar dilerim.😊", tweetTime: "·1 g", tweetReply: "13", tweetRepost: "34", tweetLike: "343", tweetView: "1,762")
        let t2 = Tweets(userId: 2, userName:"@alihizardere", userNick: "Ali Hızardere", userBlueTick: "bluetick", userImage: "aliHizardere", tweetContent: "Kasım Adalan hocamızın eşliğinde IOS Bootcamp'in tasarım ödevini tamamlamış bulunmaktayım. Yeni güzel projeler geliştirme dileğiyle. 🎉😊", tweetTime: "·23 sa", tweetReply: "3", tweetRepost: "", tweetLike: "34", tweetView: "246")
        let t3 = Tweets(userId: 3, userName:"@elonmusk", userNick: "Elon Musk", userBlueTick: "bluetick", userImage: "elonMusk", tweetContent: "Why why do so many American politicians from both parties care 100 times more about the Ukraine border than the USA border?", tweetTime: "·2 sa", tweetReply: "54.5B", tweetRepost: "92B", tweetLike: "520.1B", tweetView: "45Mn")
        let t4 = Tweets(userId: 4, userName:"@tim_cook", userNick: "Tim Cook", userBlueTick: "bluetick", userImage: "timCook", tweetContent: "Artist Ignasi Monreal’s iPad Pro and Procreate creations are a mesmerizing blend of traditional and digital artistry. Thanks for everything!", tweetTime: "·2 g", tweetReply: "221", tweetRepost: "691", tweetLike: "12.5B", tweetView: "528.1B")
        let t5 = Tweets(userId: 5, userName:"@GalatasaraySK", userNick: "Galatasaray SK", userBlueTick: "bluetick", userImage: "galatasaraySK", tweetContent: "Galatasaray’ın, Şampiyonlar Ligi A Grubu’nda Manchester United ile Old Trafford’da oynayacağı maç öncesi medya programı belli oldu.", tweetTime: "·6 sa", tweetReply: "281", tweetRepost: "678", tweetLike: "9,082", tweetView: "467.2B")
       
        
        
        tweetList.append(t1)
        tweetList.append(t2)
        tweetList.append(t3)
        tweetList.append(t4)
        tweetList.append(t5)
      
        
        addTitleViewLogo(named: "logo")
        addLeftBarButtonItem(named: "aliHizardere")
        
        
        let appearanceTabBar = UITabBarAppearance()
        appearanceTabBar.backgroundColor = UIColor(named: "tabbarBgColor")
        
        changeColor(itemAppearance: appearanceTabBar.stackedLayoutAppearance)
        changeColor(itemAppearance: appearanceTabBar.inlineLayoutAppearance)
        changeColor(itemAppearance: appearanceTabBar.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearanceTabBar
        tabBarController?.tabBar.scrollEdgeAppearance = appearanceTabBar

    
        
    }
    func changeColor(itemAppearance: UITabBarItemAppearance){
        //Selected
        itemAppearance.selected.iconColor = UIColor(named: "tabbarIconColor")
        itemAppearance.selected.badgeBackgroundColor = UIColor(named: "color1")
        //Unselected
        itemAppearance.normal.iconColor = UIColor(named: "tabbarIconColor")
        itemAppearance.normal.badgeBackgroundColor = UIColor(named: "color1")
    }
    
    func addTitleViewLogo(named: String){
        let logoImage = UIImage(named: named)
        let logoImageView = UIImageView(image: logoImage)
        logoImageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.tintColor =  UIColor(named: "tabbarIconColor")
        navigationItem.titleView = logoImageView
    }
    
    func addLeftBarButtonItem(named:String){
        let profileImage = UIImage(named: named)
        let profileImageView = UIImageView(image: profileImage)
        profileImageView.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        profileImageView.contentMode = .scaleAspectFit
        let profileItem = UIBarButtonItem(customView: profileImageView)
        let widthConstraint = profileItem.customView?.widthAnchor.constraint(equalToConstant: 35)
        let heightConstraint = profileItem.customView?.heightAnchor.constraint(equalToConstant: 35)
        widthConstraint?.isActive = true
        heightConstraint?.isActive = true
        navigationItem.leftBarButtonItem = profileItem
        
    }

}

extension Homepage: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweetList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dataFrom = tweetList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tweetCell") as!  TweetTableViewCell
        
        cell.userName.text = dataFrom.userName
        cell.userNick.text = dataFrom.userNick
        cell.userBlueTick.image = UIImage(named: dataFrom.userBlueTick!)
        cell.userImage.image = UIImage(named: dataFrom.userImage!)
        cell.tweetContent.text = dataFrom.tweetContent
        cell.tweetReply.text = dataFrom.tweetReply
        cell.tweetRepost.text = dataFrom.tweetRepost
        cell.tweetLike.text = dataFrom.tweetLike
        cell.tweetView.text = dataFrom.tweetView
        cell.tweetTime.text = dataFrom.tweetTime
        
        
        return cell
    }
    
    
}
