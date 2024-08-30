//
//  LoadingView.swift
//  SimpleWeatherApp
//
//  Created by Umman on 30.08.24.
//

import SwiftUI

struct LoadingView: View
{
    var body: some View
    {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {LoadingView()}
