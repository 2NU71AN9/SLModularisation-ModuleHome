//
//  SLHomeViewModel.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/12/15.
//

import UIKit
import RxSwift
import ModuleComm

class SLHomeViewModel: BaseViewModel {

    let cellEvnet = PublishSubject<IndexPath>()
    
    private var dataArray: [[String]] = [
        ["友盟分享", "极光分享"],
        ["人脸识别"]
    ]
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension SLHomeViewModel: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int { dataArray.count }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { dataArray[section].count }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = dataArray[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "   "
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellEvnet.onNext(indexPath)
    }
}

extension SLHomeViewModel {

}
