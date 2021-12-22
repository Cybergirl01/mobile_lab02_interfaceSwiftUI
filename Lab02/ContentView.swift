//
//  ContentView.swift
//  Lab02
//
//  Created by user on 02.12.2021.
//  Copyright © 2021 KITMobile. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State var sometexting: String = "Some text"
	var body: some View {
		ZStack {
			
			Image("Imageofmyown")
				.scaleEffect(2.0)
			HStack {
			VStack{
				Text("Hello, world.")
			}
			VStack {
			Text("IT'S ME.")
				Text("Me")
			}
			Text(sometexting)
			Button(action: {
				print("BOO!")
				self.sometexting = "It works!"
			}) {
				Text("Click")
			}
				VStack {
					ForEach (1..<9){ i in Text("\(i)")
							.bold()						.padding(11)
						.frame(width: 60)
					
						.background(Color.pink)
						.border(Color.white, width: 7)
						.cornerRadius(9)
					}
					ForEach (1..<6) {i in
						Button(action: {
							self.sometexting = "It works!"
						}) {
							Text("\(i)")
								.background(Color.yellow)
							.frame(width: 50)
							
							.padding(10)
						}
				}
			}
			
		}
		
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
	}
}

