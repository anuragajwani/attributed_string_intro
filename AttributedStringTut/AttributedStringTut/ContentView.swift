//
//  ContentView.swift
//  AttributedStringTut
//
//  Created by Anurag Ajwani on 21/08/2022.
//

import SwiftUI

struct ContentView: View {
    let myText: AttributedString = {
        let text = """
                   This text is to exemplify how NSAttributedStrings work.
                   This sentence is bold.
                   This sentence is italicised.
                   This sentence will be of a larger font size than the rest of the text.
                   This sentence is a link to Google.
                   """
        var attributedString = AttributedString(text)
        let rangeOfBold = attributedString.range(of: "This sentence is bold.")!
        attributedString[rangeOfBold].font = .boldSystemFont(ofSize: 17)
        let rangeOfItalic = attributedString.range(of: "This sentence is italicised.")!
        attributedString[rangeOfItalic].font = .italicSystemFont(ofSize: 17)
        let rangeOfLargeFont = attributedString.range(of: "This sentence will be of a larger font size than the rest of the text.")!
        attributedString[rangeOfLargeFont].font = .systemFont(ofSize: 23)
        let rangeOfLink = attributedString.range(of: "This sentence is a link to Google.")!
        attributedString[rangeOfLink].link = URL(string: "https://www.google.com")
        return attributedString
    }()

    var body: some View {
        Text(myText)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
