import SwiftUI

struct HomeView: View {
    
    @State var searchText = ""
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            Text("SpringRoll")
                .font(.largeTitle)
                .bold()
                     
            // Replace NavigationView with NavigationStack
            NavigationStack {
                List {
                    // List content here
                }
                .searchable(text: $searchText, prompt: "Search Recipes")
                .navigationTitle("Recipe")
                .toolbar {
                    
                    // Plus Button with Alert
                    Button {
                        print("Plus Tapped")
                        homeViewModel.triggerAlert(
                            title: "Recipe Source",
                            message: "Where is this recipe coming from?",
                            primaryTitle: "Link",
                            secondaryTitle: "Self",
                            primaryAction: {
                                print("User chose Link")
                            },
                            secondaryAction: {
                                homeViewModel.triggerNavigation()
                            }
                        )
                    } label: {
                        Image(systemName: "plus")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                    
                    // Menu Button (Ellipsis)
                    Button {
                        print("Ellipsis Tapped")
                    } label: {
                        Image(systemName: "ellipsis")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                }
                .alert(homeViewModel.alertTitle, isPresented: $homeViewModel.showAlert) {
                    Button("Link", role: .destructive) { homeViewModel.primaryAction?() }
                    Button("Self") { homeViewModel.secondaryAction?() }
                } message: {
                    Text(homeViewModel.alertMessage)
                }
            }.navigationDestination(isPresented: $homeViewModel.navigate) {
                NewRecipeView() //navigates to manual new recipe page
            }
        }
    }
}

#Preview {
    HomeView()
}
