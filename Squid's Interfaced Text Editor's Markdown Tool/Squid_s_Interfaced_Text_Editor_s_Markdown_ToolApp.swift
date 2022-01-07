//
//  Squid_s_Interfaced_Text_Editor_s_Markdown_ToolApp.swift
//  Squid's Interfaced Text Editor's Markdown Tool
//
//  Created by Dante Vaughn on 1/4/22.
//

import SwiftUI

@main
struct SwiftUIMarkdownEditorApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: SwiftUIMarkdownEditorDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
