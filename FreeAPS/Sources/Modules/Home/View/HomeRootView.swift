import SwiftUI

extension Home {
    struct RootView: BaseView {
        @EnvironmentObject var viewModel: ViewModel<Provider>

        var body: some View {
            VStack {
                Spacer()
                Button(action: viewModel.runOpenAPS) {
                    Text("Run test")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .buttonBackground()
                }
                Button(action: viewModel.makeProfiles) {
                    Text("Make profiles")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .buttonBackground()
                }
                Button(action: viewModel.fetchGlucose) {
                    Text("Fetch glucose")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .buttonBackground()
                }
                Button(action: viewModel.makeMeal) {
                    Text("Make meal")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .buttonBackground()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}
