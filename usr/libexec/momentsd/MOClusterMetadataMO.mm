@interface MOClusterMetadataMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOClusterMetadataMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOClusterMetadataMO alloc] initWithContext:v5];

  v8 = [v6 identifier];
  [(MOClusterMetadataMO *)v7 setIdentifier:v8];

  -[MOClusterMetadataMO setIsFiltered:](v7, "setIsFiltered:", [v6 isFiltered]);
  v9 = [v6 phenotype];
  [(MOClusterMetadataMO *)v7 setPhenotype:v9];

  v10 = [v6 topLevelActivityHistogram];
  [(MOClusterMetadataMO *)v7 setTopLevelActivityHistogram:v10];

  v11 = [v6 secondLevelActivityHistogram];
  [(MOClusterMetadataMO *)v7 setSecondLevelActivityHistogram:v11];

  v12 = [v6 activityTypeFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setActivityTypeFromPhotoTraitsHistogram:v12];

  v13 = [v6 timeTagHistogram];
  [(MOClusterMetadataMO *)v7 setTimeTagHistogram:v13];

  v14 = [v6 dayOfWeekHistogram];
  [(MOClusterMetadataMO *)v7 setDayOfWeekHistogram:v14];

  v15 = [v6 weekOfYearHistogram];
  [(MOClusterMetadataMO *)v7 setWeekOfYearHistogram:v15];

  v16 = [v6 timeContextFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setTimeContextFromPhotoTraitsHistogram:v16];

  v17 = [v6 placeNameHistogram];
  [(MOClusterMetadataMO *)v7 setPlaceNameHistogram:v17];

  v18 = [v6 combinedPlaceTypeHistogram];
  [(MOClusterMetadataMO *)v7 setCombinedPlaceTypeHistogram:v18];

  v19 = [v6 enclosingPlaceNameHistogram];
  [(MOClusterMetadataMO *)v7 setEnclosingPlaceNameHistogram:v19];

  v20 = [v6 placeTypeFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setPlaceTypeFromPhotoTraitsHistogram:v20];

  v21 = [v6 contactNamesHistogram];
  [(MOClusterMetadataMO *)v7 setContactNamesHistogram:v21];

  v22 = [v6 personRelationshipHistogram];
  [(MOClusterMetadataMO *)v7 setPersonRelationshipHistogram:v22];

  v23 = [v6 socialEventFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setSocialEventFromPhotoTraitsHistogram:v23];

  v24 = [v6 otherSubjectFromPhotoTraitsHistogram];
  [(MOClusterMetadataMO *)v7 setOtherSubjectFromPhotoTraitsHistogram:v24];

  v25 = [v6 subBundleGoodnessScores];
  [(MOClusterMetadataMO *)v7 setSubBundleGoodnessScores:v25];

  v26 = [v6 subSuggestionIDsBeforePruning];
  [(MOClusterMetadataMO *)v7 setSubSuggestionIDsBeforePruning:v26];

  v27 = [v6 holidayHistogram];
  [(MOClusterMetadataMO *)v7 setHolidayHistogram:v27];

  v28 = [v6 celebrationHistogram];
  [(MOClusterMetadataMO *)v7 setCelebrationHistogram:v28];

  v29 = [v6 stateOfMindValenceHistogram];
  [(MOClusterMetadataMO *)v7 setStateOfMindValenceHistogram:v29];

  v30 = [v6 phenotypePersonUUIDs];

  [(MOClusterMetadataMO *)v7 setPhenotypePersonUUIDs:v30];

  return v7;
}

@end