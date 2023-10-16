

class PirateShip: cargoManager, crewManager, cannons {
    var name: String
    var cannonsCount: Int
    var cargoManager: CargoManager
    var crewManager: CrewManager
   
    
    init(name: String, cannonsCount: Int, CargoManager: CargoManager, CrewManager: CrewManager) {
        self.name = name
        self.cannonsCount = cannonsCount
        self.cargoManager = CargoManager
        self.crewManager = CrewManager
    }
    func addCargo(string: String) {
            cargoManager.addCargo(string: string)
        }
        
        func removeCargo(string: String) {
            cargoManager.removeCargo(string: string)
        }
        
        func listCargo() {
            cargoManager.listCargo()
        }
        
        func addCrew(string: String) {
            crewManager.addCrew(string: string)
        }
        
        func removeCrew(string: String) {
            crewManager.removeCrew(string: string)
        }
        
        func listCrew() {
            crewManager.listCrew()
        }
        
    func cannonCount () {
        print(cannonsCount)
    }
    func firingCannon(count: Int) {
        if cannonsCount > 0 {
            cannonsCount - count
        }
    }
    }

class Frigate: PirateShip {
    var members: String
    var capacity: Int
    
    init(members: String, capacity: Int, name: String, cannonsCount: Int, CargoManager: CargoManager, CrewManager: CrewManager) {
        self.members = members
        self.capacity = capacity
        super.init(name: name,
                   cannonsCount: cannonsCount,
                   CargoManager: CargoManager,
                   CrewManager: CrewManager)
    }
    override func cannonCount () {
        print(cannonsCount)
        print ("we have it's enough to fight")
    }
    override func firingCannon(count: Int) {
        if cannonsCount > 0 {
            cannonsCount - count
        }
    }
}
    
    class Galleon: PirateShip {
        var captainName: String
        init(captainName:String, name: String, cannonsCount: Int, CargoManager: CargoManager, CrewManager: CrewManager) {
            self.captainName = captainName
            super.init(name: name,
                       cannonsCount: cannonsCount,
                       CargoManager: CargoManager,
                       CrewManager: CrewManager)
        }
        override func addCargo(string: String) {
                cargoManager.addCargo(string: string)
            }
            
        override func removeCargo(string: String) {
                cargoManager.removeCargo(string: string)
            }
            
        override func listCargo() {
                cargoManager.listCargo()
            }
    }


protocol cannons {
    func cannonCount()
    func firingCannon (count: Int)
}


protocol cargoManager {
    func addCargo(string: String)
    func removeCargo (string: String)
    func listCargo()
    
}
protocol crewManager{
    func addCrew(string: String)
    func removeCrew (string: String)
    func listCrew()
}

class CargoManager: cargoManager {
   private var cargo: [String]
    
    init(cargo: [String]) {
        self.cargo = cargo
    }
    func addCargo(string: String) {
        cargo.append(string)
    }
    func removeCargo(string: String) {
        if let index = cargo.firstIndex(of: string) {
            cargo.remove(at: index)
        }
    }
        func listCargo()  {
            print(cargo)
        }
    }
                            

class CrewManager: crewManager {
   private var crew: [String]
    init(crew: [String]) {
        self.crew = crew
    }
    func addCrew(string: String) {
        crew.append(string)
    }
    func removeCrew(string: String) {
        if let index = crew.firstIndex(of: string) {
            crew.remove(at: index)
        }
    }
        func listCrew()  {
            print(crew)
        }
}

class TreasureMap {
    var x: Int
    var y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    func hintToTreasure (X currentX: Int, Y currentY: Int) {
        if currentX == x && currentY == y {
            print("you did it!!!, treasure is yours!!!")
        } else {
            print ("You should continue searching")
        }
    }
}

class SeaAdventure {
    var adventureType: String
    init(adventureType: String) {
        self.adventureType = adventureType
    }
    func encounter () {
        print("adventure")
    }
}

class PirateCode {
   
    func parley(terms: String) {
        discussTerms(terms: terms)
        print("Agreement reached!")
    }
    
    func mutiny(terms: String) {
        discussTerms(terms: terms)
        print("Fight is starting!")
    }
    private func discussTerms(terms: String) {
        print(" \(terms)")
    }
}


let ship = PirateShip(
    name: "blackSea",
    cannonsCount: 100,
    CargoManager: CargoManager(cargo: ["weapon", "food", "clothes"]),
    CrewManager: CrewManager (crew: ["captain", "navigator", "officer"])
    )
let treasureMap = TreasureMap(x: 20, y:10)
treasureMap.hintToTreasure(X: 20, Y: 10)

let seaAdventure = SeaAdventure(adventureType:"meet FlyingDutchman")

var startPointX = 0
var startPointY = 0

while startPointX != treasureMap.x || startPointY != treasureMap.y {
    startPointX += 1
    startPointY += 1
    }
let pirateRules = PirateCode()
pirateRules.parley(terms: "Give us all the treasure!")
pirateRules.mutiny(terms: "Never! We will fight for it")

