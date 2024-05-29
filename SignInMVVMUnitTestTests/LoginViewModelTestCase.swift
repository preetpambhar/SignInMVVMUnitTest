//
//  LoginViewModelTestCase.swift
//  SignInMVVMUnitTestTests
//
//  Created by Preet Pambhar on 2024-05-28.
//

import XCTest
@testable import SignInMVVMUnitTest

final class LoginViewModelTestCase: XCTestCase {
    var viewModel: LoginViewModel?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = LoginViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil
    }

    func testInvalidEmail(){
        guard let viewModel else{
            XCTFail("View Model is nil please check")
            return
        }
        
        let type = viewModel.validateLogin("", password: "")
        XCTAssertEqual(type, .emptyEmail, "Email should be empty")
        XCTAssertEqual(type.rawValue, "Email cannot be empty")
        
    }
    
    func testInvalidPassword(){
        guard let viewModel else{
            XCTFail("View Model is nil please check")
            return
        }
        let type = viewModel.validateLogin("preet12@gmail.com", password: "")
        XCTAssertEqual(type, .emptyPassword, "Password should be empty")
        
        //XCTAssertTrue(type == .emptyEmail, "Password should be empty")
        //XCTAssertNotNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
        //XCTAssertNotNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
        
        //Length of password validation
        let type1 = viewModel.validateLogin("preet12@gmail.com", password: "1234")
        XCTAssertEqual(type1, .lengthPassword, "Password should be more then 8 characters")
    }
    
    func testLoginSuccess(){
        guard let viewModel else{
            XCTFail("View Model is nil please check")
            return
        }
        let type2 = viewModel.validateLogin("preet12@gmail.com", password: "123456789")
        XCTAssertEqual(type2, .success, "Login Success")
    }
}
