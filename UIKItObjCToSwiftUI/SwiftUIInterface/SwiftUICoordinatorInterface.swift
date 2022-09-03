//
//  SwiftUIInterface.swift
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

import SwiftUI

@objc
class SwiftUICoordinatorInterface: NSObject {
    @objc
    func loginView(viewModel: LoginViewModel) -> UIViewController {
        let viewModelInterface = SwiftUIViewModelInterface(viewModel: viewModel)
        let view = LoginView(viewModelInterface: viewModelInterface)
        return UIHostingController(rootView: view)
    }
}
