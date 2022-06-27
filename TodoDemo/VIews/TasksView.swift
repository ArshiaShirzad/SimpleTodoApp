//
//  TasksView.swift
//  TodoDemo
//
//  Created by Arshia Shirzad on 6/25/22.
//

import SwiftUI
import RealmSwift

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack{
            Text("My Tasks")
                .font(.title).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            List{
                ForEach(realmManager.tasks, id: \.id) {
                    task in
                    if !task.isInvalidated{
                        TaskRow(task:task.title , completed: task.completed)
                            .onTapGesture {
                                realmManager.updateTask(id: task.id,completed: !task.completed)
                            }
                            .swipeActions(edge: .trailing){
                                Button(role: .destructive){
                                    realmManager.deleteTask(id:task.id)
                                }label: {
                                    Label("Delete",systemImage: "trash")
                                }
                            }
                        
                    }
                    
                }
                .listRowSeparator(.hidden)
            }
            .onAppear{
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity )
        .background(Color(hue: 0.159, saturation: 0.634, brightness: 0.975))
        
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealmManager())
    }
}
