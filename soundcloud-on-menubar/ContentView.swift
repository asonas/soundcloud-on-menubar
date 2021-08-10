//
//  ContentView.swift
//  soundcloud-on-menubar
//
//  Created by asonas on 2020/09/17.
//  Copyright © 2020 asonas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SafariWebView(url: "https://soundcloud.com")
        //WebView(url: URL(string:"https://soundcloud.com/")!)
    }
}

struct SafariWebView: View {
    @ObservedObject var model: WebViewModel

    init(url: String) {
        //Assign the url to the model and initialise the model
        self.model = WebViewModel(link: url)
    }

    var body: some View {
        //Create the WebView with the model
        SwiftUIWebView(viewModel: model)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
         SafariWebView(url: "https://soundcloud.com")
        //WebView(url: URL(string:"https://soundcloud.com/")!)

    }
}
