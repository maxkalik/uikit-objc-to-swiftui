//
//  LoginView.swift
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

import SwiftUI

struct LoginView: View {
    
    var viewModel: LoginViewModel
    
    @State var title: String = ""
    
    init(viewModel: LoginViewModel) {
        self.title = viewModel.title
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text(title)
            Button {
                self.viewModel.buttonTapped()
                self.title = viewModel.title
            } label: {
                Text(self.viewModel.buttonTitle)
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
        LoginView(viewModel: LoginViewModel())
    }
}
