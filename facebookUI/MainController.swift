//
//  MainController.swift
//  facebookUI
//
//  Created by prog on 12/8/19.
//  Copyright © 2019 prog. All rights reserved.
//

import UIKit
class postCell:LBTAListCell<String>{
    
    override var item: String! {
           didSet {
               circular.image = UIImage(named: item)
 
           }
       }
   let circular = CircularImageView(width: 40, image:  UIImage(named: "abdulahad"))
    let nameLabel = UILabel(text: "Abdul ahad", font: .boldSystemFont(ofSize: 15), textColor: .black, textAlignment: .left, numberOfLines: 2)
    let dateLabel = UILabel(text: "Thursday at 10:00 pm", font: .systemFont(ofSize: 10), textColor: .darkGray, textAlignment: .left, numberOfLines: 1)
    let postTextLabel =  UILabel(text: "I am extremly happy to post my first facebook status and i had extreme fun at making this UI", font: .systemFont(ofSize: 20), textColor: .black, textAlignment: .left, numberOfLines: 0)
//    let imageViewGrid = UIView(backgroundColor: .yellow)
    let photoGridController = PhotoGridController()
    override func setupViews() {
        backgroundColor = .white
        stack(hstack(circular.withWidth(40).withHeight(40),stack(nameLabel,dateLabel),spacing:8).padLeft(8).padLeft(8).padTop(12),hstack(postTextLabel).padLeft(8),photoGridController.view,spacing:8)
    }
    
}

class StoryHeader: UICollectionReusableView {
    
    let storiesController = StoriesController(scrollDirection: .horizontal)
    let containerspacerView = UIView(backgroundColor: .init(white: 0.9, alpha: 1))
    let imageView = UIImageView(image: UIImage(named: "story_photo2"), contentMode: .scaleAspectFill)
   let circular = CircularImageView(width: 40, image:  UIImage(named: "abdulahad"))
    let nameLabel = UILabel(text: "whats on your mind ?", font: .boldSystemFont(ofSize: 14), textColor: .black)
    let circular1 = CircularImageView(width: 20, image:  UIImage(named: "story_photo2"))
    let nameLabel1 = UILabel(text: "Lee", font: .boldSystemFont(ofSize: 10), textColor: .black)
    let circular2 = CircularImageView(width: 20, image:  UIImage(named: "story_photo2"))
       let nameLabel2 = UILabel(text: "post", font: .boldSystemFont(ofSize: 10), textColor: .black)
    let circular3 = CircularImageView(width: 20, image:  UIImage(named: "story_photo2"))
       let nameLabel3 = UILabel(text: "in", font: .boldSystemFont(ofSize: 10), textColor: .black)
    lazy var  containerView1 :UIView = {
        let view = UIView()
        let nameLabel = UILabel(text: "Live", font: .boldSystemFont(ofSize: 8), textColor: .black)
        let circular = CircularImageView(width: 20, image:
            UIImage(named: "video"))
        circular.image = circular.image?.withRenderingMode(.alwaysTemplate)
        circular.tintColor = UIColor.red
        view.addSubview(nameLabel)
        view.addSubview(circular)
//        circular.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1)
        circular.centerYTo(view.centerYAnchor)
        circular.centerXTo(view.centerXAnchor)
        nameLabel.anchor(top: nil, leading: circular.trailingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 3, bottom: 0, right: 0), size: .init(width: 0, height: 0))
        nameLabel.centerYTo(circular.centerYAnchor)
//        view.backgroundColor = .red
        view.withBorder(width: 2, color: .init(white: 0.9, alpha: 1))
                   return view
        return view
    }()
    lazy var  containerView2 :UIView = {
            let view = UIView()
            let nameLabel = UILabel(text: "Photo", font: .boldSystemFont(ofSize: 8), textColor: .black)
            let circular = CircularImageView(width: 20, image:  UIImage(named: "image"))
        circular.image = circular.image?.withRenderingMode(.alwaysTemplate)
        circular.tintColor = UIColor.green
            view.addSubview(nameLabel)
            view.addSubview(circular)
    //        circular.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1)
            circular.centerYTo(view.centerYAnchor)
            circular.centerXTo(view.centerXAnchor)
            nameLabel.anchor(top: nil, leading: circular.trailingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 3, bottom: 0, right: 0), size: .init(width: 0, height: 0))
            nameLabel.centerYTo(circular.centerYAnchor)
//            view.backgroundColor = .red
        view.withBorder(width: 2, color: .init(white: 0.9, alpha: 1))
                   return view
            return view
        }()
    lazy var  containerView3 :UIView = {
            let view = UIView()
            let nameLabel = UILabel(text: "Check In", font: .boldSystemFont(ofSize: 8), textColor: .black)
            let circular = CircularImageView(width: 20, image:  UIImage(named: "map"))
            view.addSubview(nameLabel)
            view.addSubview(circular)
    //        circular.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1)
            circular.centerYTo(view.centerYAnchor)
            circular.centerXTo(view.centerXAnchor)
            nameLabel.anchor(top: nil, leading: circular.trailingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 3, bottom: 0, right: 0), size: .init(width: 0, height: 0))
            nameLabel.centerYTo(circular.centerYAnchor)
//        view.backgroundColor = .red
        view.withBorder(width: 2, color: .init(white: 0.9, alpha: 1))
            return view
        }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
//       hstack(imageView.withWidth(20),withHeight(20),nameLabel)
//        let hstack1 = hstack(circular1,nameLabel, spacing: 2, alignment: .fill, distribution: .fill)
//        let hstack2 = hstack(circular2,nameLabel2, spacing: 2, alignment: .fill, distribution: .fill)
//        let hstack3 = hstack(circular3,nameLabel3, spacing: 2, alignment: .fill, distribution: .fill)
//        let container = hstack(UIView(),hstack1,UIView(),hstack2,UIView(),hstack3,UIView(), spacing:20, alignment: .leading, distribution: .fillEqually)
        let container = hstack(containerView1,containerView2,containerView3, spacing:0, alignment: .fill, distribution: .fillEqually).withWidth(self.frame.width)
        
        let viewstack = stack(hstack(circular
            ,nameLabel,spacing:15).padLeft(12),container, spacing: 10, alignment: .leading, distribution: .fillEqually).padTop(12).padLeft(0)
                                   
//            ,
//hstack(imageView.withHeight(30).withWidth(30)
//,nameLabel,imageView.withHeight(30).withWidth(30),
// nameLabel,
// imageView.withHeight(30).withWidth(30)
//    ,nameLabel)
        
            
        
        stack(viewstack,containerspacerView.withHeight(10),storiesController.view.withHeight(200).withWidth(self.frame.width))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}

class StoryPhotoCell: LBTAListCell<String> {
    
    override var item: String! {
        didSet {
            imageView.image = UIImage(named: item)
            circular.image = UIImage(named: item)
            
        }
    }
    
    let imageView = UIImageView(image: nil, contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "frodo", font: .boldSystemFont(ofSize: 14), textColor: .white)
    let circularImage = UIImageView(image: UIImage(named: "story_photo2"), contentMode: .scaleAspectFill)
    let circular = CircularImageView(width: 30, image:  UIImage(named: "story_photo2"))
    
    override func setupViews() {
        imageView.layer.cornerRadius = 10
        
        stack(imageView)
        
//        stack(circular)
        addSubview(circular)
        circular.backgroundColor = .init(white: 1, alpha: 1)
               circular.layer.borderColor = UIColor.blue.cgColor
               circular.layer.borderWidth = 2
        circular.anchor(top: imageView.topAnchor, leading: imageView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0), size: .zero)
       

        setupGradientLayer()
        stack(UIView(), nameLabel).withMargins(.allSides(8))
    }
    
    let gradientLayer = CAGradientLayer()
    
    fileprivate func setupGradientLayer() {
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.7, 1.1]
        layer.cornerRadius = 10
        clipsToBounds = true
        layer.addSublayer(gradientLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer.frame = bounds
    }
    
}

class StoriesController: LBTAListController<StoryPhotoCell, String>, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 100, height: view.frame.height - 24)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 12, bottom: 0, right: 12)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.items = ["abdulahad", "abdulahad", "abdulahad", "abdulahad", "abdulahad"]
    }
    
}
class MainController: LBTAListHeaderController<postCell, String, StoryHeader>, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: 0, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 12, left: 0, bottom: 0, right: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        
        self.items = ["abdulahad", "abdulahad", "abdulahad", "abdulahad"]
        
        setupNavBar()
    }
    
    let fbLogoImageView = UIImageView(image: UIImage(named: "fb_logo"), contentMode: .scaleAspectFit)
     lazy var searchButton = UIButton(image: UIImage(named: "search")!, tintColor: .black)
     
     lazy var messageButton = UIButton(image: UIImage(named: "messenger")!, tintColor: .black)
    
    fileprivate func setupNavBar() {
        let coverWhiteView = UIView(backgroundColor: .white)
        view.addSubview(coverWhiteView)
        coverWhiteView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        let safeAreaTop = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
        coverWhiteView.constrainHeight(safeAreaTop)
        
        [searchButton, messageButton].forEach { (button) in
            button.layer.cornerRadius = 17
            button.clipsToBounds = true
            button.backgroundColor = .init(white: 0.9, alpha: 1)
            button.withSize(.init(width: 34, height: 34))
        }
        
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .white
        
        let titleView = UIView(backgroundColor: .clear)
        let lessWidth: CGFloat = 34 + 34 + 120 + 24 + 16
        let width = (view.frame.width - lessWidth)
        titleView.hstack(fbLogoImageView.withWidth(120), UIView(backgroundColor:.white).withWidth(width), searchButton, messageButton, spacing: 8).padBottom(8)
        navigationItem.titleView = titleView
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let safeAreaTop = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
        let offset = scrollView.contentOffset.y + safeAreaTop + (navigationController?.navigationBar.frame.height ?? 0)
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
        
        let alpha = 1 - (offset / safeAreaTop)
        [searchButton, messageButton, fbLogoImageView].forEach{$0.alpha = alpha}
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 400)
    }
}
import SwiftUI
struct MainPreview:PreviewProvider{
    static var previews: some View {
//        Text("main preview 123123")
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> UIViewController {
            return UINavigationController(rootViewController: MainController())
        }
        
        func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {
            
        }
    }
}
