// Created on 22/01/21. 

import UIKit

open class VMSearchViewController: VMBaseViewController {

    public let searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        return searchController
    }()

    open override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesSearchBarWhenScrolling = false
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationItem.hidesSearchBarWhenScrolling = true
    }

}
