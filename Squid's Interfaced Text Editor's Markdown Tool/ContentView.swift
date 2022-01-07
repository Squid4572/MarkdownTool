//
//  ContentView.swift
//  Squid's Interfaced Text Editor's Markdown Tool
//
//  Created by Dante Vaughn on 1/4/22.
//

import SwiftUI
import Ink

struct ContentView: View {
    @Binding var document: SwiftUIMarkdownEditorDocument

    var body: some View {
        HStack {
            TextEditor(text: $document.text)
            WebView(html: html)
        }
    }
    
    var html: String {
        let parser = MarkdownParser()
        return parser.html(from: document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(SwiftUIMarkdownEditorDocument()))
    }
}
