
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
//    the person who gives orders to the delegate; taking the role of UITextField, which is unware of who is going to perform the CPR and doesn't care.
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
//    the person who conducts the actions
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compression, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
         print("The doctor does chest compression, 30 per second.")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
}

let emilio = EmergencyCallHandler()
let pete = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()


