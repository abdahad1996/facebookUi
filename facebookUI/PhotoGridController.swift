//
//  PhotoGridController.swift
//  facebookUI
//
//  Created by prog on 12/8/19.
//  Copyright © 2019 prog. All rights reserved.
//

import UIKit
class PhotoGridCell:LBTAListCell<String>{
    let imageView = UIImageView(image: UIImage(named: "avatar1"), contentMode: .scaleAspectFill)
    override var item: String! {
        didSet{
             imageView.image = UIImage(named: item)
        }
    }
    override func setupViews() {
            backgroundColor = .red
            
    //        addSubview(imageView)
    //        imageView.fillSuperview()
            stack(imageView)
        }
}
class PhotoGridController:LBTAListController<PhotoGridCell,String>,UICollectionViewDelegateFlowLayout{
    override func viewDidLoad() {
        super.viewDidLoad()
//         self.items = ["hello","world","1","2",""]
//        collectionView.backgroundColor = .gray
        self.items = ["abdulahad", "abdulahad", "abdulahad", "abdulahad", "abdulahad"]
    }
    let cellSpacing:CGFloat = 4
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let count = CGFloat(self.items.count)
//        let frameWidth = view.frame.width
//        let width = (frameWidth-count*cellPadding)/count
//        return .init(width: width, height: width)
        if self.items.count == 4 {
                   // do 4 grid cell layout
            let width = (view.frame.width - 3 * cellSpacing) / 2
                          
                          return .init(width: width, height: width)
               }
               
               if indexPath.item == 0 || indexPath.item == 1 {
                   let width = (view.frame.width - 3 * cellSpacing) / 2
                   
                   return .init(width: width, height: width)
               }
               
               let width = (view.frame.width - 4.1 * cellSpacing) / 3
               
               return .init(width: width, height: width)
    }
   
    //vertical spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return cellSpacing
    }
    //horizontal spacing between items
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellSpacing
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 10, left: cellSpacing, bottom: 0, right: cellSpacing)
    }
}
//preview
import SwiftUI
struct PhotosGridPreview: PreviewProvider {
    
    static var previews: some View {
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<PhotosGridPreview.ContainerView>) -> UIViewController {
            return PhotoGridController()
        }
        
        func updateUIViewController(_ uiViewController: PhotosGridPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<PhotosGridPreview.ContainerView>) {
            
        }
    }
    
}
