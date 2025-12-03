@interface MOClusterMetadataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOClusterMetadataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOClusterMetadataMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOClusterMetadataMO *)v7 setIdentifier:identifier];

  -[MOClusterMetadataMO setIsFiltered:](v7, "setIsFiltered:", [objectCopy isFiltered]);
  phenotype = [objectCopy phenotype];
  [(MOClusterMetadataMO *)v7 setPhenotype:phenotype];

  topLevelActivityHistogram = [objectCopy topLevelActivityHistogram];
  [(MOClusterMetadataMO *)v7 setTopLevelActivityHistogram:topLevelActivityHistogram];

  secondLevelActivityHistogram = [objectCopy secondLevelActivityHistogram];
  [(MOClusterMetadataMO *)v7 setSecondLevelActivityHistogram:secondLevelActivityHistogram];

  activityTypeFromPhotoTraitsHistogram = [objectCopy activityTypeFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setActivityTypeFromPhotoTraitsHistogram:activityTypeFromPhotoTraitsHistogram];

  timeTagHistogram = [objectCopy timeTagHistogram];
  [(MOClusterMetadataMO *)v7 setTimeTagHistogram:timeTagHistogram];

  dayOfWeekHistogram = [objectCopy dayOfWeekHistogram];
  [(MOClusterMetadataMO *)v7 setDayOfWeekHistogram:dayOfWeekHistogram];

  weekOfYearHistogram = [objectCopy weekOfYearHistogram];
  [(MOClusterMetadataMO *)v7 setWeekOfYearHistogram:weekOfYearHistogram];

  timeContextFromPhotoTraitsHistogram = [objectCopy timeContextFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setTimeContextFromPhotoTraitsHistogram:timeContextFromPhotoTraitsHistogram];

  placeNameHistogram = [objectCopy placeNameHistogram];
  [(MOClusterMetadataMO *)v7 setPlaceNameHistogram:placeNameHistogram];

  combinedPlaceTypeHistogram = [objectCopy combinedPlaceTypeHistogram];
  [(MOClusterMetadataMO *)v7 setCombinedPlaceTypeHistogram:combinedPlaceTypeHistogram];

  enclosingPlaceNameHistogram = [objectCopy enclosingPlaceNameHistogram];
  [(MOClusterMetadataMO *)v7 setEnclosingPlaceNameHistogram:enclosingPlaceNameHistogram];

  placeTypeFromPhotoTraitsHistogram = [objectCopy placeTypeFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setPlaceTypeFromPhotoTraitsHistogram:placeTypeFromPhotoTraitsHistogram];

  contactNamesHistogram = [objectCopy contactNamesHistogram];
  [(MOClusterMetadataMO *)v7 setContactNamesHistogram:contactNamesHistogram];

  personRelationshipHistogram = [objectCopy personRelationshipHistogram];
  [(MOClusterMetadataMO *)v7 setPersonRelationshipHistogram:personRelationshipHistogram];

  socialEventFromPhotoTraitsHistogram = [objectCopy socialEventFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setSocialEventFromPhotoTraitsHistogram:socialEventFromPhotoTraitsHistogram];

  otherSubjectFromPhotoTraitsHistogram = [objectCopy otherSubjectFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setOtherSubjectFromPhotoTraitsHistogram:otherSubjectFromPhotoTraitsHistogram];

  subBundleGoodnessScores = [objectCopy subBundleGoodnessScores];
  [(MOClusterMetadataMO *)v7 setSubBundleGoodnessScores:subBundleGoodnessScores];

  subSuggestionIDsBeforePruning = [objectCopy subSuggestionIDsBeforePruning];
  [(MOClusterMetadataMO *)v7 setSubSuggestionIDsBeforePruning:subSuggestionIDsBeforePruning];

  holidayHistogram = [objectCopy holidayHistogram];
  [(MOClusterMetadataMO *)v7 setHolidayHistogram:holidayHistogram];

  celebrationHistogram = [objectCopy celebrationHistogram];
  [(MOClusterMetadataMO *)v7 setCelebrationHistogram:celebrationHistogram];

  stateOfMindValenceHistogram = [objectCopy stateOfMindValenceHistogram];
  [(MOClusterMetadataMO *)v7 setStateOfMindValenceHistogram:stateOfMindValenceHistogram];

  phenotypePersonUUIDs = [objectCopy phenotypePersonUUIDs];

  [(MOClusterMetadataMO *)v7 setPhenotypePersonUUIDs:phenotypePersonUUIDs];

  return v7;
}

@end