//
//  AddTaskView.swift
//  TodoDemo
//
//  Created by Arshia Shirzad on 6/25/22.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager:RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Create New Task")
                .font(.title).bold()
                .frame(maxWidth:.infinity , alignment: .leading)
            
            TextField("Enter Your Task here", text: $title )
                .textFieldStyle(.roundedBorder)
                
            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add Task")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.0, saturation: 0.682, brightness: 0.866))
                    .cornerRadius(22)
            }
            Spacer()
        }
        .padding(.top,40)
        .padding(.horizontal)
        .background(Color(hue: 0.159, saturation: 0.634, brightness: 0.975))
            }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
