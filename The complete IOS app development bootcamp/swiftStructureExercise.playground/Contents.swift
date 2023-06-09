

    // Define the User struct here
    struct User {
        let name: String
        let email: String
        let followers: Int
        var isActive: Bool
        
        init(name: String, email: String, followers: Int, isActive: Bool){
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        func logStatus(){
            if isActive == true {
                print("\(name) is working hard")
            } else {
                print("\(name) has left earth")
            }
        }

    }
    // Initialise a User struct here
    var gay = User(name: "Richard", email: "", followers: 0, isActive: false)
    gay.logStatus()

    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
print("Contacting \(musk.name) on \(musk.email) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    


