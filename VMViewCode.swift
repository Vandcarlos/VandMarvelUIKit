// Created on 19/01/21. 

public protocol VMViewCode {

    func setupView()
    func buildHierarchy()
    func setupConstraints()
    func configViews()

}

public extension VMViewCode {

    func setupView() {
        buildHierarchy()
        setupConstraints()
        configViews()
    }

}
