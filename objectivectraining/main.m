//
//  main.m
//  objectivectraining
//
//  Created by alex on 15/3/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "MathUtility.h"
#import "Player.h"
#import "NSString+FormattingOptions.h"
#import "Account.h"
#import "Fraction.h"
#import "Complex.h"
#import "MyNewClass.h"

void myFunction(void);
void enumerators(void);
void nSStringObjects(void);
void mutableImmutableStrings(void);
void dateObjects(void);
void usingObjects(void);
void usingMethodsInObject(void);
void objectInitialisers(void);
void arraysExample(void);
void arraysObjectiveC(void);
void dictionaryObject(void);
void fastEnumeration(void);
void workingWithFiles(void);
void readingWritingStringsFiles(void);
void archivingUnarchivingObjects(void);
void categories(void);
void classExtensions(void);
void protocol(void);
void dynamicTyping(void);
void fixingErrors(void);
void exceptionHandling(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"=================== Creating Variables and Logging =================");
        myFunction();
        NSLog(@"=================== Using Enums ==================");
        enumerators();
        NSLog(@"=================== Strings ==================");
        nSStringObjects();
        NSLog(@"=================== Mutable & Immutable Strings ==================");
        mutableImmutableStrings();
        NSLog(@"=================== Dates ==================");
        dateObjects();
        NSLog(@"=================== Working with Objects ==================");
        usingObjects();
        NSLog(@"=================== Working with methods ==================");
        usingMethodsInObject();
        NSLog(@"=================== Object initialisers ==================");
        objectInitialisers();
        NSLog(@"=================== Arrays ==================");
        arraysExample();
        NSLog(@"=================== Objective-C Arrays ==================");
        arraysObjectiveC();
        NSLog(@"=================== Dictionary ==================");
        dictionaryObject();
        NSLog(@"=================== forin ==================");
        fastEnumeration();
        NSLog(@"=================== Files ==================");
        workingWithFiles();
        NSLog(@"=================== reading & Writing Files ==================");
        readingWritingStringsFiles();
        NSLog(@"=================== Storing and Loading files ==================");
        archivingUnarchivingObjects();
        NSLog(@"=================== Categories ==================");
        categories();
        NSLog(@"=================== Extensions ==================");
        classExtensions();
        NSLog(@"=================== Dynamic Typing ==================");
        dynamicTyping();
        NSLog(@"=================== Protocols ==================");
        protocol();
        NSLog(@"=================== Fixing Errors ==================");
        fixingErrors();
        NSLog(@"=================== Exception Handling ==================");
        exceptionHandling();
    }
    
    return 0;
}

void myFunction() {
    int a = 100;
    float b = 2.0;
    
    NSLog(@"Hello, World!");
    NSLog(@"Value of a is %i and value of b is %f and the multiplication is %f", a, b, a*b);
}

void enumerators() {
    
    enum seatPreference { window, aisle, middle };
    enum decades {
        babyBoomer = 1964, generationX = 1979, xennials = 1985, millenials = 1994, genZ = 2012, genAlpha = 2023
    };

    
    enum seatPreference bobSeatPreference = aisle;
    enum decades bobGeneration = millenials;
    
    if(bobSeatPreference == window){
        //do something
    }
    NSLog(@"Bob wants %i",bobSeatPreference);
    
    NSLog(@"Bob's generation ended in %i", bobGeneration);
}

void nSStringObjects() {
    NSString *message = @"Hello";
    NSString *uppercaseMessage = [message uppercaseString];
    
    NSLog(@"The NSString object is %@, and %@", message, uppercaseMessage);
}

void mutableImmutableStrings(){
    /*Immutable Strings*/
    // Setup two variables to point to the same string
    NSString * str1 = @"Hello World";
    NSString * str2 = str1;

    // "Replace" the second string
    str2 = @"Hello ikilimnik";

    // And list their current values
    NSLog(@"str1 = %@, str2 = %@", str1, str2);
    
    /*Mutable Strings*/
    // Setup two variables to point to the same string
    NSMutableString * str11 = [NSMutableString stringWithString:@"Hello World"];
    NSMutableString * str22 = str11;

    // "Replace" the second string
    [str22 setString:@"Hello ikilimnik"];

    // And list their current values
    NSLog(@"str1 = %@, str2 = %@", str11, str22);
}

void dateObjects() {
    NSDate *today = [NSDate date];   //here date is an class method and it' represented with the + sign
    
    NSLog(@"The new NSDate object is : %@", today);
}

void usingObjects(){
    
    Employee *alex = [[Employee alloc] init];
    
    
    [alex someMethod];
    [alex setName:@"Alexander"];
    [alex setHireDate:([NSDate date])];
    
    NSLog(@"this is the Employee object: %@", alex);
}

void usingMethodsInObject() {
    MathUtility *util = [[MathUtility alloc] init];
    int result = [util timesTen: 55];
    NSLog(@"the result of timesTen is: %i", result);
    
    result = [util addNumber:40 toNumber:60];
    NSLog(@"the result of addNumber:toNumber is: %i", result);
}

void objectInitialisers(){
    Player *playerObject = [[Player alloc] init];
    NSLog(@"The score is %i", [playerObject score]);
    
    Player *secondPlayer = [[Player alloc] initWithInteger:9999];
    NSLog(@"The score is %i", [secondPlayer score]);
}

void arraysExample(){
    int multipleValues[5];
    //set their values
    multipleValues[0] = 10;
    multipleValues[1] = 100;
    multipleValues[2] = 1000;
    multipleValues[3] = 10000;
    multipleValues[4] = 100000;
    //better way to do it
    int otherValues[5] = { 10, 100, 1000, 10000, 100000 };//we can remove the numer 5
    NSLog(@"the value of the third element is %i", otherValues[2]);
    
    NSString *myStringArray[5] = { @"first", @"second", @"third", @"fourth", @"fifth" };
    NSLog(@"the third string element is %@", myStringArray[2]);
}

void arraysObjectiveC(){
    //initialisation
    NSArray *myArray = @[ @"one", @"two", @"three" ];
    
    //NSArray *myArray = [[NSArray alloc]initWithObjects:@"one", @"two", @"three", nil];
    NSLog(@"the third object is %@",[myArray objectAtIndex:2]);
    //same output, a different way to get the element
    NSLog(@"the third object is %@", myArray[2]);
    //adding another type of element to the array
    NSDate *myDate = [[NSDate alloc]init];
    NSArray *mySecondArray = [[NSArray alloc]initWithObjects:@"one", @"two", @"three", myDate, nil];
    NSLog(@"the fouth object is %@", mySecondArray[3]);

    NSMutableArray *myMutableArray = [[NSMutableArray alloc]initWithObjects:@"aaa",@"bbb", @"ccc", @"ddd", nil];
    //add an element at the end
    [myMutableArray addObject:@"XXX"];
    //remove the first element
    [myMutableArray removeObjectAtIndex:0];
    NSLog(@"the first element is %@",myMutableArray[0]);
    //print the added element
    NSLog(@"the first element is %@",myMutableArray[3]);
}

void dictionaryObject(){
    //pay attention is object then key
    NSDictionary *states = [[NSDictionary alloc] initWithObjectsAndKeys:@"New South Wales",@"NSW",
                                                                        @"Western Australia", @"WA",
                                                                        @"Queensland",@"QLD",
                            nil];
    
    NSString *someState = @"WA";
    NSLog(@" %@ is for %@", someState, [states objectForKey:someState]);
    //another way to do it
    NSLog(@"%@ is for %@", someState, states[someState]);
    
    NSMutableDictionary *mutableStates= [[NSMutableDictionary alloc] initWithObjectsAndKeys: @"New South Wales",@"NSW",
                                                @"Western Australia", @"WA",
                                                @"Queensland",@"QLD",
                                   nil];
    [mutableStates setObject:@"Northern Territory" forKey:@"NT"];
    NSLog(@"last element added %@", mutableStates[@"NT"]);
    
    //another way to initialise NSMutableDictionary
    NSDictionary *quicker = @{ @"NSW":@"New South Wales",
                               @"WA":@"Western Australia",
                               @"QLD":@"Queensland"
                            };
    NSLog(@"last element %@", quicker[@"QLD"]);
}

void fastEnumeration(){
    //this is the path for sounds
    NSString *soundPath = @"/System/Library/Sounds";
    //foundation framework for working with directories and files
    NSFileManager *fileManager = [[NSFileManager alloc]init];
    
    NSArray *soundFiles = [fileManager subpathsAtPath:soundPath];
    //this is faster than an explicit for or while loop
    for (NSString *file in soundFiles) {
        NSLog(@"the file name is %@", file);
    }
}

void workingWithFiles(){
    //we know this is a common way to instantiate and initialise a class
    //NSFileManager *fileManager = [[NSFileManager alloc]init];
    //but it's better to use the default mananger, in this way we won't
    //create many instances of this class, and use the default one, which
    //provide a shared instance
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *simplePath = @"/Users/alex/Downloads/bomb.xml";
    
    if([fileManager fileExistsAtPath:simplePath]){
        NSLog(@"That file exists");
    }else{
        NSLog(@"That file does not exist");
    }
    //get an NSDictionary of attributes
    NSDictionary *fileAttributes = [fileManager attributesOfItemAtPath:simplePath error:nil];
    
    for (NSString *key in fileAttributes) {
        NSLog(@"the attribute key is: %@ and the value is: %@", key, fileAttributes[key]);
    }
    //
    NSURL *docsDirectory = [fileManager URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask
                                      appropriateForURL:nil create:NO error:nil];
    NSLog(@"the file manager method returned: %@", docsDirectory);
    
    //if we want to work with pieces of directories and then glue them together there are few useful methods
    NSString *homeDirectory = NSHomeDirectory();
    NSLog(@"the home directory is %@", homeDirectory);
    NSString *desktopPath = [homeDirectory stringByAppendingPathComponent:@"Desktop"];
    NSLog(@"the home desktop path is %@", desktopPath);
//    NSString *fullPath = [desktopPath stringByAppendingPathComponent:@""]
    
}

void readingWritingStringsFiles(){
    //get the document directory
    NSURL *documentDir = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    
    //create a full path, don't forget to place a text file called sample.txt in the computer
    NSURL *full = [documentDir URLByAppendingPathComponent:@"sample.txt"];
    //load the string
    NSString *content = [[NSString alloc] initWithContentsOfURL:full encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"the content of the file is: %@", content);
    //now we will use a mutable string to append some content to the file.
    NSMutableString *content2 = [[NSMutableString alloc] initWithContentsOfURL:full encoding:NSUTF8StringEncoding error:nil];
    [content2 appendString:@"CHANGED!"];
    NSURL *saveLocation = [documentDir URLByAppendingPathComponent:@"saved.txt"];
    [content2 writeToURL:saveLocation atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"the content after the file has been modified: %@", content2);
}

void createAndArchiveObjects(NSString *stringFilePath){
    //create an employee object
    Employee *alex = [[Employee alloc]init];
    [alex setEmployeeNumber:12345];
    [alex setName:@"Alexander"];
    [alex setHireDate:[NSDate date]];
    
    //create another employee object, using dot syntax
    Employee *andrea = [[Employee alloc]init];
    andrea.employeeNumber = 98765;
    andrea.name = @"Andrea";
    andrea.hireDate = [NSDate date];
    
    NSLog(@"first Employee: \n%@", [alex description]);
    NSLog(@"second Employee: \n%@", andrea);
    //why it works with the second employee if I'm not calling the description method? well description is a default method defined in NSObject, is the method called by default when we print out the object using %@

    /*
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:alex requiringSecureCoding:NO error:nil];
    //after the data has been encrypted we have to save the file
    NSURL *documentDir = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    //location to save alex object
    NSURL *saveLocation = [documentDir URLByAppendingPathComponent:@"alex.plist"];
    [data writeToURL:saveLocation atomically:YES];
    */
    
    //get the URL path from the string path
    NSURL *urlFilePath = [NSURL fileURLWithPath:stringFilePath];
    // I can duplicate the code and save andrea, but instead better create an array to save both employees
    NSMutableArray *employees = [[NSMutableArray alloc]init];
    [employees addObject:alex];
    [employees addObject:andrea];
    //now repeat the previous steps
    
    NSData *employeesData = [NSKeyedArchiver archivedDataWithRootObject:employees requiringSecureCoding:NO error:nil];
    
    [employeesData writeToURL:urlFilePath atomically:YES];
    //Now you can go to the documents folder and verify that both employees have been saved.
    NSLog(@"Objects created and archived!");
    
}

void unarchiveSavedObjects(NSString *stringFilePath){
    
    NSURL *urlFilePath = [NSURL fileURLWithPath:stringFilePath];
    //load the data from the file
    NSData *data = [[NSData alloc] initWithContentsOfURL:urlFilePath];
    
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingFromData:data error:nil];
    [unarchiver setRequiresSecureCoding:NO];
    NSMutableArray *employees = [unarchiver decodeObjectForKey:NSKeyedArchiveRootObjectKey];
    
//    NSLog(@"employee at position 0: %@", [[employees objectAtIndex:0] name]);
//    NSLog(@"employee at position 1: %@", [[employees objectAtIndex:1] name]);
    for (Employee *emp in employees) {
        NSLog(@"The unarchived, reconstituted object is %@", emp);
    }

}


void archivingUnarchivingObjects(){
    //get the document folder
    NSURL *documentDir = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    //get the URL of the employees.plist file
    NSURL *urlFilePath = [documentDir URLByAppendingPathComponent:@"employees.plist"];
    //convert it into string
    NSString *stringFilePath = urlFilePath.path;
    //check if the file exists
    if([[NSFileManager defaultManager] fileExistsAtPath:stringFilePath]) {
        //yes the file is there - load them in
        unarchiveSavedObjects(stringFilePath);
    }else{
        //NO there isnt plist file - so create it
        createAndArchiveObjects(stringFilePath);
    }
}

void categories(){
    //remember to import our new class header on top
    NSString *message = @"The quick brown fox jumped over the lazy dog.";
    NSLog(@"The result is: %@", [message convertWhitespace]);
}

void classExtensions(){
    Account *acc1 = [[Account alloc]init];
    [acc1 setAccountName:@"Greg"];
    [acc1 setAccountNumber:1234465];
    [acc1 deposit:[NSDecimalNumber decimalNumberWithString:@"200.00"]];
    [acc1 withdraw:[NSDecimalNumber decimalNumberWithString:@"75.22"]];
    //here is the problem, we are directly reaching to the state of this object balance and changing it
    //we should not be able to do this, only the methods should be able to change that property.
    //    acc1.balance = [NSDecimalNumber decimalNumberWithString:@"5999999.00"];
    
    NSLog(@"The current balance is: %@", [acc1 balance]);
}


NSMutableArray * createRandomObjects(){
    NSMutableArray *bunchOfObjects = [[NSMutableArray alloc]init];
    
    for (int i=0;  i < 10; i++) {
        int random = arc4random_uniform(100);
        if(random % 2 == 0){
            NSString *s = @"Exciting string object";
            [bunchOfObjects addObject:s];
        }else{
            NSDate *d = [[NSDate alloc]init];
            [bunchOfObjects addObject:d];
        }
    }
    return bunchOfObjects;
}

void dynamicTyping(){
    NSMutableArray *bunchOfObjects = createRandomObjects();
    
    for (id currentObject in bunchOfObjects) {
        //This is fine, but what if we have many different classes, a big list of iskindOfClass
        //will have to be listed
        /*
        if([currentObject isKindOfClass: [NSString class]]){
            NSLog(@"The object is: %@",[currentObject uppercaseString]);
        }
         */
        //so it's better this way: ask if the object responds to this method ( no matter the class )
        if([currentObject respondsToSelector:@selector(uppercaseString)]){
            NSLog(@"The object is: %@",[currentObject uppercaseString]);
        }else{
            NSLog(@"The object doesn't respond to that.");
        }
    }
}

void protocol(){
    //The magic pretty much happens here:
    Fraction *frac = [[Fraction alloc]initWitNumerator:3 denominator:10];
    Complex *comp =[[Complex alloc]initWithReal:5 andImaginary:15];
    id <Printing> printable;
    
    //We define our objects (which implement the interface) and a variable id that implements the interface.
    //The reason this object is of type id is so we can implement multiple interfaces (id is a reserved object type in objective-c meaning any object).

    //Then to switch implementations we just change implementations:
    //printable = frac;
    //printable = comp;
    
    //printing the fraction
    printable = frac;
    NSLog(@"The fraction is: %@", [printable print]);
    //printing the complex number
    printable = comp;
    NSLog(@"The Complex is: %@", [printable print]);
}

void fixingErrors(){
    //Issue #1
    /*
    NSString myString = [NSString stringWithFormat:@"Here's the first problem!"];
    NSLog(@"The string is %@", myString);
     */
    
    //Issue #2
    /*
     int a = 5, b = 10;
     if ( a == b ){
     {
         NSLog(@"Yes, they're equal")
     }
     */
    
    //Issue #3 - you need the #import statement for this to work (error: Use of undeclared identifier 'myObj')
    /*
    MyNewClass *myObj = [[MyNewClass alloc]init];
    [myObj someMethod];
    */
    
    //Issue #4 (first: use of undeclared identifier 'myObj', second: Implicit declaration of function 'NSlog' is invalid in .. fix: is NSLog capital L )
    /*
    NSlog(@"The new object is: %@", myObj);
    */
    
    //Issue #5 (causes 4 different warnings, we are using single quotes, and these are chars, that's why the warning: character constant too long for its type
    /*
    NSLog(@'Hello, world!');
    */
    
    //Issue #6
    /*
    NSString *newString = "This is a simple message";
    NSLog("What's wrong with a simple message likeL %@", newString );
    */
    
    //Issue #7
    /*
     int c = 5, d = 10;
     if( c = d ){
        NSLog(@"Yes, they're equal");
     }
    */
    
    //Issue #8
    
//     MyNewClass *mySecondObj = [[MyNewClass alloc]init];
//     NSString *result = [mySecondObj someMethod];
//     NSLog(@"The result is %@", result);
    
    
    //Issue #9  it gives me a warning not an error, but if I run it, it will end crashing. (Incompatible pointer types initialising 'MyNewClass'
    /*
    MyNewClass *myThirdObj = [[NSString alloc]init];
    NSLog(@"The object is %@", [myThirdObj someMethod]);
    */
    
    //Watch out for these! These are warnings, the problem is: most warnings are not like this 3, unused variables, most warnings are
    //significant logic errors that will make your program crash.
    /*
    NSString *mine = @"Test";
    int foo = 55;
    float bar = 5.5;
    */
}

void exceptionHandling(){
    //this won't give me any warnings as the today variable has been assigned to a dynamic type, so this could be a NSString which has the uppercaseString method
    //but if you ran this you will get an uncaught exception: "unrecognised selector" and will crash.
    // uncomment this two lines to see the error
//    id today = [[NSDate alloc] init];
//    [today uppercaseString];
    // add a try catch block (the plus button) and place these lines of code inside
    
    /*
    @try {
        id today = [[NSDate alloc] init];
        [today uppercaseString];
    } @catch (NSException *exception) {
        NSLog(@"The exception was: %@", exception);
    } @finally {
        NSLog(@"Finally will always be called.");
    }
     */
    
}
