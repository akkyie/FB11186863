//
//  ContentView.swift
//  TryLink
//
//  Created by 安井 瑛男 on 2022/08/10.
//

import SwiftUI
import RxSwift

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }

    static func observable() -> Observable<Void> {
        Observable.just(()).delay(.seconds(1), scheduler: MainScheduler.asyncInstance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
