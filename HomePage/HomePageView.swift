import SwiftUI

struct HomePageView: View {
    @State private var username: String = "User" // Replace with actual username data
    @State private var selectedTab: Int = 0 // Track the selected tab
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                NavigationView {
                    VStack(alignment: .center, spacing: 10) {
                        Text("SthenicsAI")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.top)
                        
                        Text("Explore your dashboard and manage your tasks.")
                            .font(.subheadline)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding()
                    .navigationBarHidden(true)
                }
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
                                
                // Nutrition Tab
                NavigationView {
                    NutritionView()
                }
                .tabItem {
                    Label("Nutrition", systemImage: "leaf.fill")
                }
                .tag(1)
                
                NavigationView {
                    AddWorkoutAIView()
                }
                .tabItem {
                    Label("Generate",systemImage: "plus.circle.fill")
                }
                
                NavigationView {
                    WorkoutView()
                }
                .tabItem{
                    Label("Workouts", systemImage: "figure.highintensity.intervaltraining")
                }
                .tag(2)
                
                NavigationView {
                    SettingsView()
                }
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                .tag(3)
            }
        }
    }
}

// Placeholder Views
struct FitnessView: View {
    var body: some View {
        Text("Fitness Screen")
            .font(.largeTitle)
            .padding()
    }
}

struct NutritionView: View {
    var body: some View {
        Text("Nutrition Screen")
            .font(.largeTitle)
            .padding()
    }
}

struct HomeCardView: View {
    var icon: String
    var title: String
    var colour: Color
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(colour)
                .clipShape(Circle())
            
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)
        }
        .frame(width: 120, height: 140)
        .background(Color(.systemGray6))
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

// Placeholder Views for Navigation
struct TasksView: View {
    var body: some View {
        Text("Tasks Screen")
            .font(.largeTitle)
    }
}

struct StatisticsView: View {
    var body: some View {
        Text("Statistics Screen")
            .font(.largeTitle)
    }
}

struct NotificationsView: View {
    var body: some View {
        Text("Notifications Screen")
            .font(.largeTitle)
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings Screen")
            .font(.largeTitle)
    }
}

#Preview {
    HomePageView()
}


