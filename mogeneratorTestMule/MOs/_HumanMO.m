// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HumanMO.m instead.

#import "_HumanMO.h"

@implementation HumanMOID
@end

@implementation _HumanMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Human" inManagedObjectContext:moc_];
}

- (HumanMOID*)objectID {
	return (HumanMOID*)[super objectID];
}




@dynamic hairColorStorage;






@dynamic humanName;








@dynamic meaninglessRelationship;

	




+ (NSArray*)fetchByHumanName:(NSManagedObjectContext*)moc_ humanName:(NSString*)humanName_ {
	NSError *error = nil;
	NSArray *result = [self fetchByHumanName:moc_ humanName:humanName_ error:&error];
	if (error) {
#if TARGET_OS_IPHONE
		NSLog(@"error: %@", error);
#else
		[NSApp presentError:error];
#endif
	}
	return result;
}
+ (NSArray*)fetchByHumanName:(NSManagedObjectContext*)moc_ humanName:(NSString*)humanName_ error:(NSError**)error_ {
	NSError *error = nil;
	
	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];
	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"byHumanName"
													 substitutionVariables:[NSDictionary dictionaryWithObjectsAndKeys:
														
														humanName_, @"humanName",
														
														nil]
													 ];
	NSAssert(fetchRequest, @"Can't find fetch request named \"byHumanName\".");
	
	NSArray *result = [moc_ executeFetchRequest:fetchRequest error:&error];
	if (error_) *error_ = error;
	return result;
}



+ (id)fetchOneByHumanName:(NSManagedObjectContext*)moc_ humanName:(NSString*)humanName_ {
	NSError *error = nil;
	id result = [self fetchOneByHumanName:moc_ humanName:humanName_ error:&error];
	if (error) {
#if TARGET_OS_IPHONE
		NSLog(@"error: %@", error);
#else
		[NSApp presentError:error];
#endif
	}
	return result;
}
+ (id)fetchOneByHumanName:(NSManagedObjectContext*)moc_ humanName:(NSString*)humanName_ error:(NSError**)error_ {
	NSError *error = nil;
	
	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];
	NSDictionary *substitutionVariables = [NSDictionary dictionaryWithObjectsAndKeys:
														
														humanName_, @"humanName",
														
														nil];
	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"oneByHumanName"
													 substitutionVariables:substitutionVariables];
	NSAssert(fetchRequest, @"Can't find fetch request named \"oneByHumanName\".");
	
	id result = nil;
	NSArray *results = [moc_ executeFetchRequest:fetchRequest error:&error];
	
	if (!error) {
		switch ([results count]) {
			case 0:
				//	Nothing found matching the fetch request. That's cool, though: we'll just return nil.
				break;
			case 1:
				result = [results objectAtIndex:0];
				break;
			default:
				NSLog(@"WARN fetch request oneByHumanName: 0 or 1 objects expected, %u found (substitutionVariables:%@, results:%@)",
					[results count],
					substitutionVariables,
					results);
		}
	}
	
	if (error_) *error_ = error;
	return result;
}



+ (NSArray*)fetchAllHumans:(NSManagedObjectContext*)moc_  {
	NSError *error = nil;
	NSArray *result = [self fetchAllHumans:moc_  error:&error];
	if (error) {
#if TARGET_OS_IPHONE
		NSLog(@"error: %@", error);
#else
		[NSApp presentError:error];
#endif
	}
	return result;
}
+ (NSArray*)fetchAllHumans:(NSManagedObjectContext*)moc_  error:(NSError**)error_ {
	NSError *error = nil;
	
	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];
	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"allHumans"
													 substitutionVariables:[NSDictionary dictionaryWithObjectsAndKeys:
														
														nil]
													 ];
	NSAssert(fetchRequest, @"Can't find fetch request named \"allHumans\".");
	
	NSArray *result = [moc_ executeFetchRequest:fetchRequest error:&error];
	if (error_) *error_ = error;
	return result;
}


@end
