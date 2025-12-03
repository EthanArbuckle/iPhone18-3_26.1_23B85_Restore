@interface MOFSMMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
+ (void)setPropertiesOfFSMMO:(id)o withFSM:(id)m;
@end

@implementation MOFSMMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOFSMMO alloc] initWithContext:contextCopy];

  [MOFSMMO setPropertiesOfFSMMO:v7 withFSM:objectCopy];

  return v7;
}

+ (void)setPropertiesOfFSMMO:(id)o withFSM:(id)m
{
  mCopy = m;
  oCopy = o;
  name = [mCopy name];
  [oCopy setName:name];

  [oCopy setMode:{objc_msgSend(mCopy, "mode")}];
  [oCopy setState:{objc_msgSend(mCopy, "state")}];
  substate = [mCopy substate];
  [oCopy setSubstate:substate];

  timeRangeStartDate = [mCopy timeRangeStartDate];
  [oCopy setTimeRangeStartDate:timeRangeStartDate];

  timeRangeEndDate = [mCopy timeRangeEndDate];
  [oCopy setTimeRangeEndDate:timeRangeEndDate];

  lastProcessedDate = [mCopy lastProcessedDate];
  [oCopy setLastProcessedDate:lastProcessedDate];

  metaData = [mCopy metaData];

  v12 = [MODictionaryEncoder encodeDictionary:metaData];
  [oCopy setMetaData:v12];
}

@end