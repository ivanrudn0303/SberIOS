// Part1
NSMutableArray<NSNumber*>* testArray = @[@3, @6, @32, @24, @81].mutableCopy;
[testArray sortUsingComparator:^(id obj1, id obj2) {
    if (obj1 > obj2)
        return NSOrderedAscending;
    else if (obj1 < obj2)
        return NSOrderedDescending;

    return NSOrderedSame;
}];

NSMutableArray<NSNumber*>* arrayMore20 = [NSMutableArray new];
NSMutableArray<NSNumber*>* arrayDivBy3 = [NSMutableArray new];

for (uint i = 0; i < testArray.count; i++)
{
    if (testArray[i] > 20)
        [arrayMore20 addObject: testArray[i]];
    if ((testArray[i] % 3) == 0)
        [arrayDivBy3 addObject: testArray[i]];
}

[testArray addObjectsFromArray:arrayDivBy3];
[testArray sortUsingComparator:^(id obj1, id obj2) {
    if (obj1 < obj2)
        return NSOrderedAscending;
    else if (obj1 > obj2)
        return NSOrderedDescending;

    return NSOrderedSame;
}];

// Part2
NSMutableDictionary* testDict = [NSMutableDictionary new];
NSString* substring = @"cat";
NSMutableArray<NSString*>* arrayString = @[@"cataclism", @"caterpillar", @"cat", @"teapot", @"truncate"].mutableCopy;
for (NSString* item in arrayString)
{
    if (![item hasPrefix:substring])
        [arrayString removeObject:item];
    else
        testDict[item] = @(item.length);
}
