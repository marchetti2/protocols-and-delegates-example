
protocol AdvancedLifeSupport {
    func performCPR()
}


class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR() {
        print("The paramedic does the chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The Doctor does the chest compressions, 30 per second.")
        
    }
    
}


let emilio = EmergencyCallHandler()
let mario = Doctor(handler: emilio)
//let cah = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
