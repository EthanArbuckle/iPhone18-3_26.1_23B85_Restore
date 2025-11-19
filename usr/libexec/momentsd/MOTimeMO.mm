@interface MOTimeMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOTimeMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOTimeMO alloc] initWithContext:v5];

  v8 = [v6 identifier];
  [(MOTimeMO *)v7 setIdentifier:v8];

  [v6 timestamp];
  [(MOTimeMO *)v7 setTimestamp:?];
  v9 = [v6 timeString];
  [(MOTimeMO *)v7 setTimeString:v9];

  v10 = [v6 timeZone];
  [(MOTimeMO *)v7 setTimeZone:v10];

  v11 = [v6 timeTag];
  [(MOTimeMO *)v7 setTimeTag:v11];

  return v7;
}

@end