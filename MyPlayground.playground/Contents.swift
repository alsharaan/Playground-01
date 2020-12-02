import UIKit

//var ZiyadMark :Int = 90
//
//
//
//let taxitype = "Lexury"
//
//if taxitype == "lexury" {
//    print("Not Availble now")
//}else if taxitype.lowercased() == "Economy"{
//print("Availble")
//} else {
//    print("Not Availble In our Company")
//}


//func printscore (score:Int , hismark :String)
//{
//    print("his score is", score," and his mark is :",hismark)
//}
//
//
//
//var i = 100
//
//var marks :[String] = ["A","B","B+","C","F"]
//
//
//
//while i >= 1 {
//
//
//    switch true{
//    case i >= 90:
//        printscore(score: i, hismark: marks[0])
//        break
//    case i >= 80:
//        printscore(score: i, hismark: marks[1])
//        break
//    case i >= 70:
//        printscore(score: i, hismark: marks[2])
//        break
//    case i >= 60:
//        printscore(score: i, hismark: marks[3])
//        break
//    case i >= 50:
//        printscore(score: i, hismark: marks[4])
//        break
//    case i >= 0:
//        printscore(score: i, hismark: marks[4])
//        break
//    default:
//        print("enter valid number")
//    }
//    i -= 1
//}


import UIKit

class house {
    
    var houseOwnerName : String
    var numberOfRooms : Int
    var numberOfFloors : Int
    var garagAvalabilty : Bool
    
    init(OwnerName:String, numOfRooms:Int,numberOfFloors:Int,garagAvalabilty:Bool) {
        self.houseOwnerName = OwnerName
        self.numberOfRooms = numOfRooms
        self.numberOfFloors = numberOfFloors
        self.garagAvalabilty = garagAvalabilty
    }
    
    
    func houseSizeRate() -> Int {
        
        var r_rate:Int
        var f_rate:Int
        var g_rate:Int
        var totalRate:Int

        
         if numberOfFloors >= 3 {
            f_rate = 100
         }  else if numberOfFloors >= 1 {
            f_rate = 50
         }  else {
            f_rate = 0
         }
        
        
        if (self.numberOfRooms * self.numberOfRooms) >= 20 {
            r_rate = 100
        } else if (self.numberOfRooms * self.numberOfRooms) >= 10 {
            r_rate = 50
        } else if (self.numberOfRooms * self.numberOfRooms) >= 5 {
            r_rate = 20
        } else {
            r_rate = 0
        }
        
        
        if garagAvalabilty == true {
            g_rate = 100
        }else {
            g_rate = 0
        }
        
        totalRate = ((r_rate + f_rate + g_rate) / 3)
        
        return totalRate
    }
    
    
    

    func printHouseRate() {
        
        let houseRateArray :[String] = ["A huge","a Big","a Medium","a flat","a cat"]
        
        
        
        
        
    
        if self.houseSizeRate() >= 80 {
            
            print("hey ",self.houseOwnerName,", your House Rate",houseRateArray[0],"House :) Your House Score is",houseSizeRate(),"% ")
            
        } else if self.houseSizeRate() >= 50 {
            
            print("hey ",self.houseOwnerName,", your House Rate",houseRateArray[1],"House :) Your House Score is",houseSizeRate(),"% ")
            
        } else if self.houseSizeRate() >= 30 {
            
            print("hey ",self.houseOwnerName,", your House Rate",houseRateArray[2],"House :) Your House Score is",houseSizeRate(),"% ")
            
        } else if self.houseSizeRate() >= 10 {
            
            print("hey " ,self.houseOwnerName,", your House Rate",houseRateArray[3],"House :) Your House Score is",houseSizeRate(),"% ")
            
        } else {
            print("hey ",self.houseOwnerName,", your House Rate",houseRateArray[4], "House :) Your House Score is",houseSizeRate(),"%")
        }
    }
}


var Owners: [String] = ["Khaled","Ahmad","Maha","Turkey"]
var Rooms: [Int] = [2,3,8,2]
var Floors: [Int] = [3,4,3,1]
var Garags: [Bool] = [true,false,true,false];


Owners.append("cat");
Rooms.append(1);
Floors.append(0);
Garags.append(false);

Owners.append("Mona");
Rooms.append(4);
Floors.append(2);
Garags.append(true);


var OwnersCount :Int = Owners.count
var i = 0

                    while  i < OwnersCount {
    
    let HouseAraayPrint = house(OwnerName: Owners[i], numOfRooms: Rooms[i], numberOfFloors: Floors[i], garagAvalabilty: Garags[i])
    
    HouseAraayPrint.printHouseRate()
    
    i+=1
}






//var ziyadHouse = house(OwnerName: "Ziyad", numOfRooms: 0, numberOfFloors: 0, garagAvalabilty: false).printHouseRate()





    













