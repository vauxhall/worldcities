import UIKit

extension ViewList
{
    func numberOfSections(
        in collectionView:UICollectionView) -> Int
    {
        return 0
    }
    
    func collectionView(
        _ collectionView:UICollectionView,
        numberOfItemsInSection section:Int) -> Int
    {
        return 0
    }
    
    func collectionView(
        _ collectionView:UICollectionView,
        cellForItemAt indexPath:IndexPath) -> UICollectionViewCell
    {
        return UICollectionViewCell()
    }
}