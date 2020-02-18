//
//  main.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var bill01 = Internet(billId: 1, billDate: "01-01-2019" , billType: Enum.type.INTERNET, totalBillAmount: 50.0, providerName: "Fido", internetGBUsed: 15)
var bill02 = Mobile(billId: 2, billDate: "10-04-2019", billType: Enum.type.MOBILE, totalBillAmount: 65.0, mobileManufacturerName: "Samsung Inc.", planName: "Internet + Talk", mobileNumber: 9842677168, internetGBUsed: 45, minuteUsed: 15)
var bill03 = Hydro(billId: 3, billDate: "13-06-2019", billType: Enum.type.HYDRO, totalBillAmount: 150, agencyName: "Ontario electricity Services Inc.", unitConsumed: 210)


var cust1 = Customer(customerId: 01, firstName: "Aman", lastName: "Kaur", emailId: "amankaur@gmail.com")
var cust2 = Customer(customerId: 02, firstName: "Anmol", lastName: "singh", emailId: "anmol_singh@gmail.com")
var cust3 = Customer(customerId: 03, firstName: "Monika", lastName: "Sharma", emailId: "monika123@gmail.com")


cust1.addBillToCustomer(bill: bill02)
cust1.addBillToCustomer(bill: bill03)
cust2.addBillToCustomer(bill: bill01)
cust2.addBillToCustomer(bill: bill02)
cust3.addBillToCustomer(bill: bill03)


var custDictionary = [Int: Customer]()

func addCustomer(cust: Customer){

    custDictionary.updateValue(cust, forKey: cust.customerId)
    
}

addCustomer(cust: cust1)
addCustomer(cust: cust2)
addCustomer(cust: cust3)

func getByCustomerId(customerId: Int){
}
