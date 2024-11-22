import SwiftUI

struct ContentView: View {
    
    var lhs = 2.5
    var rhs = 5
    var exampleInt: Int64 = 50_000_000_000_000_001
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(String(format: "%.0f", exampleInt * 1.0))
            Text(String(rhs * lhs))
            Text(String(testWrappedValue()))
            Text("User Score: \(testWrappedValueUserScore(score: -5))")
            
        }
    }
    
    //use 1: applying a negative value to the var of the structure
    func testWrappedValue() -> Int {
    
        var wrappedExample = NonNegative(wrappedValue: 5)
        wrappedExample.wrappedValue -= 10
        
        return wrappedExample.wrappedValue
    }
    
    //use 2: using the scruct as a property wrapper to apply the var score of user structure the same logic as nonNegative struct
    func testWrappedValueUserScore (score: Int) -> Int {
        
        var user = User()
        user.score += score
        
        return user.score
    }
        
}
