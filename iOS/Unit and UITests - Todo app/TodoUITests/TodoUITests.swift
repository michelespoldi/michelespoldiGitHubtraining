//
//  TodoUITests.swift
//  TodoUITests
//
//  Created by Michele Spoldi on 20/04/2018.
//  Copyright © 2018 YiGu. All rights reserved.
//

import XCTest

class TodoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCheckAllButtonsExist(){
        //Assercja na sprawdzaniu, czy na obu stronach wszystkie przyciski sa na pewno widoczne.
        let app = XCUIApplication()
        //we index all the table to elements
        //var tableCellContainer = app.tables.cells.element(boundBy: 1)
        let tableCellContainer = app.tables.cells
        let todoListNavigationBar = app.navigationBars["Todo List"]
        //checking the visibility of all 4 cells
        XCTAssertTrue(tableCellContainer.element(boundBy: 0).exists)
        XCTAssertTrue(tableCellContainer.element(boundBy: 1).exists)
        XCTAssertTrue(tableCellContainer.element(boundBy: 2).exists)
        XCTAssertTrue(tableCellContainer.element(boundBy: 3).exists)
        todoListNavigationBar.buttons["Edit"].tap()
        //checking the availability of the add button, afterwards using it
        XCTAssertTrue(todoListNavigationBar.buttons["+"].exists)
        todoListNavigationBar.buttons["+"].tap()
        //checking the availability of all four radio buttons
        XCTAssertTrue(app.buttons["phone"].exists)
        XCTAssertTrue(app.buttons["shopping cart"].exists)
        XCTAssertTrue(app.buttons["travel"].exists)
        XCTAssertTrue(app.buttons["Done"].exists)
        //using the done button to come back to view 2
        app.buttons["Done"].tap()
        
        
    }
    
    func testEditExistingToDoDate(){
        
        let app = XCUIApplication()
        //asercja 1, sprawdzamy obecną datę naszego To Do
        let tableCellContainer = app.tables.cells
        XCTAssertTrue(tableCellContainer.element(boundBy: 3).exists)
        let cell = app.tables.staticTexts["2018-11-02"]
        //upewniamy się, iż na chwilę obecną nie ma w tabeli naszej wartości którą ustawimy w nastepnycyh krokach
        XCTAssertFalse(cell.exists)
        tableCellContainer.element(boundBy: 3).tap()
        //ustawiamy wybraną datę
        app.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "November")
        app.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: "2")
        app.pickerWheels.element(boundBy: 2).adjust(toPickerWheelValue: "2018")
        app.buttons["Done"].tap()
        //Asercja 2, sprawdzamy czy data została poprawnie updated
        XCTAssertTrue(cell.exists)

    }
    
    func testAddingSingleToDo() {
        
        let app = XCUIApplication()
        //potwierdzamy, iż nasz w przyszłości dodany tekst nie jest jeszcze widoczny
        let cell = app.tables.staticTexts["2018-04-20"]
        XCTAssertFalse(cell.exists)
        app.navigationBars["Todo List"].buttons["+"].tap()
        app.buttons["phone"].tap()
        app.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "April")
        app.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: "20")
        app.pickerWheels.element(boundBy: 2).adjust(toPickerWheelValue: "2018")
        app.buttons["Done"].tap()
        XCTAssertTrue(cell.exists)
    }
    
    func testButtonsCountAfterDelete() {
        //Zadanie refactor:
        //1. Zliczyć w tableki rekordy (cells)
        //2. Napisać pętlę usuwająca te rekordy + sprawdzajće buttony, obecnie redudndant code
        let app = XCUIApplication()
        let tableCellContainer = app.tables.cells
        let tablesQuery = app.tables
        let deleteButton = tablesQuery.buttons["Delete"]
        // TO DO: Inwestygacja, czemu w numberOfButtons 10 działa, lecz gdy wpiszemy app.buttons.count dzieją się głupoty
        let numberOfButtons = 10
        var numberToDeduct = 2
        //upewniamy się na starcie testu, iż mamay dostepne 4 rekordy do uwuwania (podstawa naszej obecnej logiki
        // later on do zmiany na loop
        XCTAssertTrue(tableCellContainer.element(boundBy: 0).exists)
        XCTAssertTrue(tableCellContainer.element(boundBy: 1).exists)
        XCTAssertTrue(tableCellContainer.element(boundBy: 2).exists)
        XCTAssertTrue(tableCellContainer.element(boundBy: 3).exists)
        app.navigationBars["Todo List"].buttons["Edit"].tap()
//        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete Go to Disney, 2014-10-20"]/*[[".cells.buttons[\"Delete Go to Disney, 2014-10-20\"]",".buttons[\"Delete Go to Disney, 2014-10-20\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete 2014-10-20"]/*[[".cells[\"2014-10-20\"].buttons[\"Delete 2014-10-20\"]",".buttons[\"Delete 2014-10-20\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        deleteButton.tap()
        //assercja 1, count buttonów zmniejszony + przycisk no longer available z ta nazwą.
        // po usunieciu upewniamy sie, czy na pewno nie ma juz dostępnego tego wiersza
        XCTAssertEqual(app.buttons.count, numberOfButtons-numberToDeduct)
        numberToDeduct = numberToDeduct + 2
        XCTAssertFalse(tableCellContainer.element(boundBy: 3).exists)
        tablesQuery.buttons["Delete 2014-10-28"].tap()
        deleteButton.tap()
        //assercja 2, count buttonów zmniejszony + przycisk no longer available z ta nazwą
        // po usunieciu upewniamy sie, czy na pewno nie ma juz dostępnego tego wiersza
        XCTAssertEqual(app.buttons.count, numberOfButtons-numberToDeduct)
        numberToDeduct = numberToDeduct + 2
        XCTAssertTrue(tableCellContainer.element(boundBy: 1).exists)
        tablesQuery.buttons["Delete 2014-10-30"].tap()
        deleteButton.tap()
        //assercja 3, count buttonów zmniejszony + przycisk no longer available z ta nazwą
        // ppo usunieciu upewniamy sie, czy na pewno nie ma juz dostępnego tego wiersza
        XCTAssertEqual(app.buttons.count, numberOfButtons-numberToDeduct)
        numberToDeduct = numberToDeduct + 2
        XCTAssertFalse(tableCellContainer.element(boundBy: 1).exists)
        // dodatkowo potwierdzamy, iż ostatni element nie został usunięty
        XCTAssertTrue(tableCellContainer.element(boundBy: 0).exists)
        tablesQuery.buttons["Delete 2014-10-31"].tap()
        deleteButton.tap()
        //assercja 4, count buttonów zmniejszony + przycisk still available z ta nazwą
        // + sprawdzamy finalną wartośc button
        // po usunieciu upewniamy sie, czy na pewno nie ma juz dostępnego tego wiersza
        XCTAssertEqual(app.buttons.count, numberOfButtons-numberToDeduct)
        numberToDeduct = numberToDeduct + 2
        app.navigationBars["Todo List"].buttons["Done"].tap()
        XCTAssertEqual(app.buttons.count, 2)
        XCTAssertLessThan(app.buttons.count, 3)
        XCTAssertGreaterThan(app.buttons.count,1)
        XCTAssertFalse(tableCellContainer.element(boundBy: 0).exists)

    }
}
