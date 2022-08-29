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
        let view = LoginView(viewModel: viewModel)
        return UIHostingController(rootView: view)
    }
}

class SwiftUIViewModel: ObservableObject {
    @Published var viewModel: LoginViewModel
    
    @objc
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
    }
}
