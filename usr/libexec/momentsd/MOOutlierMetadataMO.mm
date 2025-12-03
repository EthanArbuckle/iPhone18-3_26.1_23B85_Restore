@interface MOOutlierMetadataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOOutlierMetadataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOOutlierMetadataMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOOutlierMetadataMO *)v7 setIdentifier:identifier];

  updatedDate = [objectCopy updatedDate];
  [(MOOutlierMetadataMO *)v7 setUpdatedDate:updatedDate];

  -[MOOutlierMetadataMO setIsSignificant:](v7, "setIsSignificant:", [objectCopy isSignificant]);
  [objectCopy outlierScore];
  [(MOOutlierMetadataMO *)v7 setOutlierScore:?];
  [objectCopy outlierScoreThreshold];
  [(MOOutlierMetadataMO *)v7 setOutlierScoreThreshold:?];
  [objectCopy bundleGoodnessScore];
  [(MOOutlierMetadataMO *)v7 setBundleGoodnessScore:?];
  [objectCopy bundleGoodnessScoreThreshold];
  v11 = v10;

  [(MOOutlierMetadataMO *)v7 setBundleGoodnessScoreThreshold:v11];

  return v7;
}

@end