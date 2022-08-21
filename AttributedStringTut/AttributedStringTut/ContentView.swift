//
//  ContentView.swift
//  AttributedStringTut
//
//  Created by Anurag Ajwani on 21/08/2022.
//

import SwiftUI

struct ContentView: View {
    let myText = """
                 This text is to exemplify how NSAttributedStrings work.
                 This sentence is bold.
                 This sentence is italicised.
                 This sentence will be of a larger font size than the rest of the text.
                 This whole sentence is a link to Google.
                 """

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
