//
//  ContentView.swift
//  iExpense
//
//  Created by Khalid Kamil on 23/08/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()

    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    let expense = ExpenseItem(name: "Test",
                                              type: "Personal",
                                              amount: 5)
                    expenses.items.append(expense)
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }

    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
