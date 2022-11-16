//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Bertuğ Horoz on 16.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        
        NavigationView{
            
            List(jokesVM.jokes) {element in
                
                Text(element.joke).fontWeight(.semibold)
                
            }.toolbar{
                Button(action: addJoke) {
                    Text("Get New Jokes")
                }
            }
            .navigationTitle("Joke Generator")
        }
        
    }
    
    func addJoke(){
        jokesVM.getJokes()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
