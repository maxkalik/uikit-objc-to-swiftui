//
//  LoginView.swift
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

import SwiftUI

struct LoginView: View {
    
    typealias ViewModel = SwiftUIViewModelInterface<LoginViewModel>
    @ObservedObject var observed: ViewModel

    init(viewModelInterface: ViewModel) {
        self.observed = viewModelInterface
    }
    
    var body: some View {
        VStack {
            Text(observed.viewModel.title)
            Button {
                self.observed.viewModel.buttonTapped()
            } label: {
                Text(self.observed.viewModel.buttonTitle)
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(Color.white)
                    .padding()
            }
            .background(Color.green)
            .cornerRadius(10)
        }
    }
}
