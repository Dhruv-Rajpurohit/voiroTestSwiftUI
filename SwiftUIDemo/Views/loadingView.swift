//
//  loadingView.swift
//  SwiftUIDemo
//
//  Created by Dhruv Rajpurohit on 01/05/22.
//

import SwiftUI

struct loadingView: View {
    
    let isLoading: Bool
    let error: NSError?
    let retryAction: (() -> ())?
    
    var body: some View {
        Group {
            if isLoading {
                HStack {
                    Spacer()
                    ActivityIndicatorView()
                    Spacer()
                }
            } else if error != nil {
                HStack {
                    Spacer()
                    VStack(spacing: 4) {
                        Text(error!.localizedDescription).font(.headline)
                        if self.retryAction != nil {
                            Button(action: self.retryAction!) {
                                Text("Retry")
                            }
                            .foregroundColor(Color.blue)
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct loadingView_Previews: PreviewProvider {
    static var previews: some View {
        loadingView(isLoading: true, error: nil, retryAction: nil)
    }
}
