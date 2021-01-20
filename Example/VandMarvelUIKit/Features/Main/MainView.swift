//
//  MainView.swift
//  VandMarvelUIKit_Example
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 19/01/21.
//  Copyright © 2021 Vand. All rights reserved.
//

import VandMarvelUIKit
import SnapKit

class MainView: UIView, VMViewCode {

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var options: [Option] = [
        
    ]

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(OptionCell.self)
        tableView.dataSource = self
        return tableView
    }()

    func buildHierarchy() {
        addSubview(tableView)
    }

    func setupConstraints() {
        tableView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.safeAreaInsets)
        }
    }

    func configViews() {}

}

extension MainView: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        options.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(OptionCell.self, for: indexPath)
        cell.title = options[indexPath.row].title
        return cell
    }

}

extension MainView {

    struct Option {

        let title: String
        let viewController: UIViewController

    }

    class OptionCell: UITableViewCell, VMViewCode {

        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupView()
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        var title: String? {
            get { titleLabel.text }
            set { titleLabel.text = newValue }
        }

        private let titleLabel = UILabel()

        func buildHierarchy() {
            contentView.addSubview(titleLabel)
        }

        func setupConstraints() {
            titleLabel.snp.makeConstraints { maker in
                maker.edges.equalTo(self.contentView.safeAreaInsets)
            }
        }

        func configViews() {

        }

    }

}
