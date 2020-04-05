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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        myFunction();
        
        enumerators();
        
        nSStringObjects();
        
        mutableImmutableStrings();
        
        dateObjects();
        
        usingObjects();
        
        usingMethodsInObject();
        
        objectInitialisers();
        
        arraysExample();
        
        arraysObjectiveC();
        
        dictionaryObject();
        
        fastEnumeration();
        
        workingWithFiles();
        
        readingWritingStringsFiles();
        
        archivingUnarchivingObjects();
        
        
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
