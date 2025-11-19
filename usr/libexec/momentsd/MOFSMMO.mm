@interface MOFSMMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
+ (void)setPropertiesOfFSMMO:(id)a3 withFSM:(id)a4;
@end

@implementation MOFSMMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOFSMMO alloc] initWithContext:v5];

  [MOFSMMO setPropertiesOfFSMMO:v7 withFSM:v6];

  return v7;
}

+ (void)setPropertiesOfFSMMO:(id)a3 withFSM:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 name];
  [v6 setName:v7];

  [v6 setMode:{objc_msgSend(v5, "mode")}];
  [v6 setState:{objc_msgSend(v5, "state")}];
  v8 = [v5 substate];
  [v6 setSubstate:v8];

  v9 = [v5 timeRangeStartDate];
  [v6 setTimeRangeStartDate:v9];

  v10 = [v5 timeRangeEndDate];
  [v6 setTimeRangeEndDate:v10];

  v11 = [v5 lastProcessedDate];
  [v6 setLastProcessedDate:v11];

  v13 = [v5 metaData];

  v12 = [MODictionaryEncoder encodeDictionary:v13];
  [v6 setMetaData:v12];
}

@end