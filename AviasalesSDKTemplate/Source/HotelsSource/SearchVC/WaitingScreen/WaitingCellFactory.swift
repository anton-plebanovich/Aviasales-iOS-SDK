import UIKit
import APExtensions

class WaitingCellFactory {

    func registerNibs(_ collectionView: UICollectionView) {
        collectionView.hl_registerNib(withName: WaitingGateCell.hl_reuseIdentifier())
        collectionView.hl_registerNib(withName: WaitingOtherGatesCell.hl_reuseIdentifier())
        collectionView.register(WaitingLongSearchCell.self, forCellWithReuseIdentifier: WaitingLongSearchCell.hl_reuseIdentifier())
    }

    func visit(_ item: GateItem, collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WaitingGateCell.hl_reuseIdentifier(), for: indexPath) as! WaitingGateCell
        cell.configureForGateItem(item)

        return cell
    }

    func visit(_ item: OtherGatesItem, collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WaitingOtherGatesCell.hl_reuseIdentifier(), for: indexPath) as! WaitingOtherGatesCell
        cell.gateLoaded(item.isLoaded)

        return cell
    }

    func visit(_ item: WaitingLongSearchItem, collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WaitingLongSearchCell.hl_reuseIdentifier(), for: indexPath) as! WaitingLongSearchCell
        
        cell.countryInfoAction = {
            guard let countryName = item.searchInfo.city?.countryName else { return }
            guard let country = DataManager.shared.homeVM?.getCountry(name: countryName) else { return }
            let vc = CountryDetailsViewController.create(country: country).wrappedIntoNavigation
            g.topViewController?.present(vc)
        }
        
        return cell
    }

}
