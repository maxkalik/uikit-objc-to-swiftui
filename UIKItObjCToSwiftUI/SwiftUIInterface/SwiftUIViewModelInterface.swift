//
//  SwiftUIViewModelInterface.swift
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 9/3/22.
//

import SwiftUI

class SwiftUIViewModelInterface<ViewModel: ObservableNSObject>: NSObject, ObservableObject, ObservableNSObjectDelegate {
    
    @Published var viewModel: ViewModel

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init()
        viewModel.observedViewModelDelegate = self
    }
    
    func viewModelDidUpdate(_ viewModel: ObservableNSObject) {
        guard let viewModel = viewModel as? ViewModel else { return }
        self.viewModel = viewModel
    }
}
