//
//  main.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var bill01 = Internet(billId: 1, billDate: Date.from(year: 2020, month: 02, day: 14) ?? Date() , billType: Enum.type.INTERNET, providerName: "Fido", internetGBUsed: 15)
var bill02 = Mobile(billId: 2, billDate: Date.from(year: 2019, month: 06, day: 04) ?? Date(), billType: Enum.type.MOBILE,  mobileManufacturerName: "Samsung", planName: "Internet + Talk", mobileNumber: "9842677168", internetGBUsed: 20, minuteUsed: 40)
var bill03 = Hydro(billId: 3, billDate: Date.from(year: 2020, month: 01, day: 01) ?? Date(), billType: Enum.type.HYDRO,  agencyName: "Electricity Services", unitConsumed: 150)
var bill04 = Internet(billId: 4, billDate: Date.from(year: 2019, month: 12, day: 05) ?? Date(), billType: Enum.type.INTERNET, providerName: "Freedom", internetGBUsed: 55)


var cust01 = Customer(customerId: 01, firstName: "Aman", lastName: "Kaur", emailId: "amankaur@gmail.com")
var cust02 = Customer(customerId: 02, firstName: "Anmol", lastName: "singh", emailId: "anmol_singh@gmail.com")
var cust03 = Customer(customerId: 03, firstName: "Monika", lastName: "Sharma", emailId: "monika123@gmail.com")
var cust04 = Customer(customerId: 04, firstName: "Ikroop", lastName: "Kaur", emailId: "ikroop_21@gmail.com")
var cust05 = Customer(customerId: 05, firstName: "Kritima", lastName: "Kukreja", emailId: "kritima@gmail.com")


cust01.addBillToCustomer(bill: bill02)
cust01.addBillToCustomer(bill: bill03)
cust02.addBillToCustomer(bill: bill01)
cust02.addBillToCustomer(bill: bill02)
cust03.addBillToCustomer(bill: bill03)
cust04.addBillToCustomer(bill: bill04)


var custDictionary = [Int: Customer]()

func addCustomer(cust: Customer){

    custDictionary.updateValue(cust, forKey: cust.customerId)
    
}

addCustomer(cust: cust01)
addCustomer(cust: cust02)
addCustomer(cust: cust03)
addCustomer(cust: cust04)
addCustomer(cust: cust05)

func getByCustomerId(customerId: Int)
{
    
    print("\n ~~~~~~~~~~~~~ GETTING DETAILS BY CUSTOMER ID~~~~~~~~~~~~~~~~")
    
    if custDictionary.keys.contains(customerId)
    {
        custDictionary[customerId]?.display()
    }else{
        print("Customer not found")
    }

}


for c in custDictionary.keys.sorted()
{
    custDictionary[c]?.display()

}

getByCustomerId(customerId: 01)
