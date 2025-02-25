import SwiftUI

struct HomeView: View {
    
    @State var searchText = ""
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some View {
            // Replace NavigationView with NavigationStack
            NavigationStack {
                    
                List {
                    //default recipe adder
                    Button(action: {
                        homeViewModel.triggerAlert(
                            title: "Add a Recipe",
                            message: "Would you like to add a new recipe?",
                            primaryTitle: "Link",
                            secondaryTitle: "Self",
                            primaryAction: {
                                print("User chose Link")
                            },
                            secondaryAction: {
                                homeViewModel.triggerNavigation()
                            }
                        )
                    }) {
                        HStack {
                            Image(systemName: "plus")
                                .font(.title)
                                .foregroundColor(.gray)
                            Text("Add a Recipe")
                                .font(.headline)
                        }
                    }
                    //end of default recipe adder
                    //homeViewModel.items, id: \.self
                    
                    ForEach(homeViewModel.items, id: \.self) { item in
                            NavigationLink(destination: NewRecipeView()) {
                                Text(item)
                                    .foregroundColor(.primary) // Keeps default text color
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                homeViewModel.selectedItem = item
                                print(item)
                            })
                    }
                    
                }
                .searchable(text: $searchText, prompt: "Search Recipes")
                .navigationTitle("")
                .toolbar {
                    
                    ToolbarItem(placement: .principal) { // Places "SpringRoll" in the center
                        Text("SpringRoll")
                            .font(.largeTitle)
                            .bold()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                    // Menu Button (Ellipsis)
                    Button {
                        print("Ellipsis Tapped")
                    } label: {
                        Image(systemName: "ellipsis")
                            .font(.subheadline)
                            .foregroundColor(.black)
                    }
                    }
                }
                .alert(homeViewModel.alertTitle, isPresented: $homeViewModel.showAlert) {
                    Button("Link", role: .destructive) { homeViewModel.primaryAction?() }
                    Button("Self") { homeViewModel.secondaryAction?()}
                } message: {
                    Text(homeViewModel.alertMessage)
                }.navigationDestination(isPresented: $homeViewModel.navigate) {
                    NewRecipeView() //navigates to manual new recipe page
            }
        }
    }
}

#Preview {
    HomeView()
}
