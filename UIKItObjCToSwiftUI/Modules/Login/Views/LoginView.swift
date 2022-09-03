//
//  LoginView.swift
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var swiftUIViewModel: SwiftUIViewModel

    init(viewModel: SwiftUIViewModel) {
        self.swiftUIViewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text(swiftUIViewModel.viewModel.title)
            Button {
                self.swiftUIViewModel.viewModel.buttonTapped()
            } label: {
                Text(self.swiftUIViewModel.viewModel.buttonTitle)
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(Color.white)
                    .padding()
            }
            .background(Color.green)
            .cornerRadius(10)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: SwiftUIViewModel(viewModel: LoginViewModel()))
    }
}
