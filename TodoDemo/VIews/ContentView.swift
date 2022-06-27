//
//  ContentView.swift
//  TodoDemo
//
//  Created by Arshia Shirzad on 6/25/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView){
            AddTaskView()
                .environmentObject(realmManager)
        }
        
        .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.159, saturation: 0.634, brightness: 0.975))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

