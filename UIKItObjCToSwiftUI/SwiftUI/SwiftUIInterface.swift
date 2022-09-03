//
//  SwiftUIInterface.swift
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

import SwiftUI

@objc
class SwiftUIInterface: NSObject {
    
    @objc
    func loginView(viewModel: LoginViewModel) -> UIViewController {
        let swiftUIViewModel = SwiftUIViewModel(viewModel: viewModel)
        let view = LoginView(viewModel: swiftUIViewModel)
        return UIHostingController(rootView: view)
    }
}

class SwiftUIViewModel: NSObject, ObservableObject, ObservableNSObjectDelegate {

    @Published var viewModel: LoginViewModel
    
    @objc
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init()
        // viewModel.delegate = self
        viewModel.observedViewModelDelegate = self
    }

    func viewModelDidUpdate(_ viewModel: ObservableNSObject) {
        guard let viewModel = viewModel as? LoginViewModel else { return }
        self.viewModel = viewModel
    }
}

