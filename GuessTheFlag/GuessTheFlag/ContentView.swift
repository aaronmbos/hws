//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Aaron Bos on 3/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
struct Examples: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            // Since we are binding showingAlert it will be set to false automatically
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this")
        }
    }
   
    var body2: some View {
        VStack {
            Button("Button 1") {}
                .buttonStyle(.bordered)
            Button("Button 2") {}
                .buttonStyle(.bordered)
            Button("Button 3") {}
                .buttonStyle(.bordered)
            Button("Button 4") {}
                .buttonStyle(.bordered)
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            //Button("Delete selections func", role: .destructive, action: executeDelete)
            Button("Delete selections") {
                print ("Now deleting")
            }
            Button {
                print("Button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            Image(decorative: "singapore")
            Image(systemName: "pencil.circle")
                .foregroundStyle(.red)
        }
        
        
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.red.gradient)
        //AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
        //RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        //LinearGradient(stops: [
        //    Gradient.Stop(color: .white, location: 0.45),
        //    Gradient.Stop(color: .black, location: 0.55)
        //], startPoint: .top, endPoint: .bottom)
        
        
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            //Color(red: 1, green: 0.8, blue: 0)
            //Color.primary
            //    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        
        
        // Horizontal grid
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Text("1")
                Text("2")
            }
            HStack(spacing: 20) {
                Text("3")
                Text("4")
            }
        }
        VStack(alignment: .leading) {
            Text("Hello, world!")
            Text("This is another text view")
        }
        HStack(spacing: 20) {
            Text("Hello, world!")
            Text("This is another text view")
        }
        VStack {
            Spacer()
            
            Text("First")
            Text("Second")
            Text("Third")
            
            Spacer()
        }
        ZStack(alignment: .top) {
            // Draws top to bottom
            Text("Hello, worlds")
            Text("Hello hello")
        }
    }
}
*/
