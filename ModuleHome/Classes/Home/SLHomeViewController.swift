//
//  SLHomeViewController.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/12/15.
//

import UIKit
import ModuleComm

class SLHomeViewController: BaseViewController {

}

// MARK: - LifeCyle
extension SLHomeViewController {
    override func setMasterView() {
        super.setMasterView()
        title = "首页"
        naviBar.item1Title = "退出"
        naviBar.item1Event = { [weak self] in
            self?.click()
        }
    }
    
    override func bind() {
        super.bind()
        guard let contentView = contentView as? SLHomeView,
              let viewModel = viewModel as? SLHomeViewModel else { return }
        contentView.tableView.delegate = viewModel
        contentView.tableView.dataSource = viewModel
        viewModel.cellEvnet.subscribe(onNext: { [weak self] (indexPath) in
            self?.cellAction(indexPath)
        }).disposed(by: bag)
    }
    
    private func click() {
        AccountServicer.service.logout()
    }
}

// MARK: - Event
extension SLHomeViewController {
    private func cellAction(_ indexPath: IndexPath) {
        switch (indexPath.section, indexPath.row) {
        case (0, 0):
            let vc = ShareViewController(0)
            navigationController?.pushViewController(vc, animated: true)
        case (0, 1):
            let vc = ShareViewController(1)
            navigationController?.pushViewController(vc, animated: true)
        case (1, 0):
            let vc = FaceRecognitionViewController()
            present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
}
