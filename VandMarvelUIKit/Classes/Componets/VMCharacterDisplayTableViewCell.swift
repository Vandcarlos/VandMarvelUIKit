// Created on 21/01/21. 

import UIKit
import SnapKit

public class VMCharacterDisplayTableViewCell: UITableViewCell, VMViewCode {

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override var isLoading: Bool {
        get { characterDisplay.isLoading }
        set { characterDisplay.isLoading = newValue }
    }

    public var thumbnail: UIImage? {
        get { characterDisplay.thumbnail }
        set { characterDisplay.thumbnail = newValue }
    }

    public var name: String? {
        get { characterDisplay.name }
        set { characterDisplay.name = newValue }
    }

    private let characterDisplay = VMCharacterDisplayInlineView()

    private let cellInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)

    public func buildHierarchy() {
        contentView.addSubview(characterDisplay)
    }

    public func setupConstraints() {
        characterDisplay.snp.makeConstraints { maker in
            maker.edges.equalTo(contentView.safeAreaLayoutGuide).inset(cellInsets)
        }
    }

    public func configViews() {

    }

}
