// Created on 21/01/21. Copyright © 2021 Vand. All rights reserved.

import VandMarvelUIKit

class CharacterDisplayInlineTableCellView: UIView, VMViewCode {

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(VMCharacterDisplayTableViewCell.self)
        tableView.dataSource = self
        tableView.backgroundColor = .white

        return tableView
    }()

    func buildHierarchy() {
        addSubview(tableView)
    }

    func setupConstraints() {
        tableView.snp.makeConstraints { maker in
            maker.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }

    func configViews() {
        backgroundColor = .white
    }

}

extension CharacterDisplayInlineTableCellView: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        22
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            VMCharacterDisplayTableViewCell.self,
            for: indexPath
        )

        cell.name = "Test\nTest"
        cell.isLoading = indexPath.row % 2 == 0

        return cell
    }

}
