@interface TransparencyMergePolicy
- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error;
- (TransparencyMergePolicy)init;
- (void)updateDeviceRecord:(id)record withConflictingDevice:(id)device;
- (void)updateMutation:(id)mutation withConflictingMutation:(id)conflictingMutation;
- (void)updateTreeHead:(id)head withConflictingHead:(id)conflictingHead;
@end

@implementation TransparencyMergePolicy

- (TransparencyMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = TransparencyMergePolicy;
  return [(TransparencyMergePolicy *)&v3 initWithMergeType:1];
}

- (void)updateTreeHead:(id)head withConflictingHead:(id)conflictingHead
{
  headCopy = head;
  conflictingHeadCopy = conflictingHead;
  failures = [conflictingHeadCopy failures];
  [headCopy addFailures:failures];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  failures2 = [conflictingHeadCopy failures];
  allObjects = [failures2 allObjects];

  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v21 + 1) + 8 * v13) setSth:headCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  failureEvent = [conflictingHeadCopy failureEvent];
  [headCopy setFailureEvent:failureEvent];

  failureEvent2 = [conflictingHeadCopy failureEvent];
  [failureEvent2 setSth:headCopy];

  if ([headCopy inclusionVerified] == 2)
  {
    [headCopy setInclusionVerified:{objc_msgSend(conflictingHeadCopy, "inclusionVerified")}];
  }

  if ([headCopy consistencyVerified] == 2)
  {
    [headCopy setConsistencyVerified:{objc_msgSend(conflictingHeadCopy, "consistencyVerified")}];
  }

  if ([headCopy mmdVerified] == 2)
  {
    [headCopy setMmdVerified:{objc_msgSend(conflictingHeadCopy, "mmdVerified")}];
  }

  v16 = [headCopy sth];
  v17 = [conflictingHeadCopy sth];
  v18 = [v16 isEqualToData:v17];

  signatureVerified = [headCopy signatureVerified];
  if (v18)
  {
    if (signatureVerified != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (signatureVerified != 1 && [conflictingHeadCopy signatureVerified] == 1)
  {
    v20 = [conflictingHeadCopy sth];
    [headCopy setSth:v20];

LABEL_20:
    [headCopy setSignatureVerified:{objc_msgSend(conflictingHeadCopy, "signatureVerified")}];
  }

LABEL_21:
}

- (void)updateDeviceRecord:(id)record withConflictingDevice:(id)device
{
  recordCopy = record;
  deviceCopy = device;
  request = [deviceCopy request];
  responseTime = [request responseTime];
  [responseTime timeIntervalSinceReferenceDate];
  v9 = v8;
  request2 = [recordCopy request];
  responseTime2 = [request2 responseTime];
  [responseTime2 timeIntervalSinceReferenceDate];
  v13 = v12;

  if (v9 > v13)
  {
    loggableData = [deviceCopy loggableData];
    [recordCopy setLoggableData:loggableData];

    request3 = [deviceCopy request];
    [recordCopy setRequest:request3];
  }
}

- (void)updateMutation:(id)mutation withConflictingMutation:(id)conflictingMutation
{
  mutationCopy = mutation;
  conflictingMutationCopy = conflictingMutation;
  failures = [conflictingMutationCopy failures];
  [mutationCopy addFailures:failures];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  failures2 = [conflictingMutationCopy failures];
  allObjects = [failures2 allObjects];

  v10 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v17 + 1) + 8 * v13) setMutation:mutationCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  failureEvent = [conflictingMutationCopy failureEvent];

  if (failureEvent)
  {
    failureEvent2 = [conflictingMutationCopy failureEvent];
    [mutationCopy setFailureEvent:failureEvent2];

    failureEvent3 = [conflictingMutationCopy failureEvent];
    [failureEvent3 setMutation:mutationCopy];
  }

  if ([mutationCopy signatureResult] == 2)
  {
    [mutationCopy setSignatureResult:{objc_msgSend(conflictingMutationCopy, "signatureResult")}];
  }

  if ([mutationCopy mergeResult] == 2)
  {
    [mutationCopy setMergeResult:{objc_msgSend(conflictingMutationCopy, "mergeResult")}];
  }
}

- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error
{
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = conflicts;
  v5 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v5)
  {
    v6 = v5;
    v45 = *v60;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v59 + 1) + 8 * i);
        databaseObject = [v8 databaseObject];
        entity = [databaseObject entity];
        v11 = +[KTTreeHead entity];
        v12 = [entity isKindOfEntity:v11];

        databaseObject2 = [v8 databaseObject];
        databaseObject4 = databaseObject2;
        if (v12)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          conflictingObjects = [v8 conflictingObjects];
          v16 = [conflictingObjects countByEnumeratingWithState:&v55 objects:v65 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v56;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v56 != v18)
                {
                  objc_enumerationMutation(conflictingObjects);
                }

                v20 = *(*(&v55 + 1) + 8 * j);
                [(TransparencyMergePolicy *)self updateTreeHead:databaseObject4 withConflictingHead:v20];
                managedObjectContext = [v20 managedObjectContext];
                [managedObjectContext deleteObject:v20];
              }

              v17 = [conflictingObjects countByEnumeratingWithState:&v55 objects:v65 count:16];
            }

            while (v17);
          }
        }

        else
        {
          entity2 = [databaseObject2 entity];
          v23 = +[KTDeviceRecord entity];
          v24 = [entity2 isKindOfEntity:v23];

          databaseObject3 = [v8 databaseObject];
          databaseObject4 = databaseObject3;
          if (v24)
          {
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            conflictingObjects = [v8 conflictingObjects];
            v26 = [conflictingObjects countByEnumeratingWithState:&v51 objects:v64 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v52;
              do
              {
                for (k = 0; k != v27; k = k + 1)
                {
                  if (*v52 != v28)
                  {
                    objc_enumerationMutation(conflictingObjects);
                  }

                  v30 = *(*(&v51 + 1) + 8 * k);
                  [(TransparencyMergePolicy *)self updateDeviceRecord:databaseObject4 withConflictingDevice:v30];
                  managedObjectContext2 = [v30 managedObjectContext];
                  [managedObjectContext2 deleteObject:v30];
                }

                v27 = [conflictingObjects countByEnumeratingWithState:&v51 objects:v64 count:16];
              }

              while (v27);
            }
          }

          else
          {
            entity3 = [databaseObject3 entity];
            v33 = +[KTMutation entity];
            v34 = [entity3 isKindOfEntity:v33];

            if (!v34)
            {
              continue;
            }

            databaseObject4 = [v8 databaseObject];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            conflictingObjects = [v8 conflictingObjects];
            v35 = [conflictingObjects countByEnumeratingWithState:&v47 objects:v63 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v48;
              do
              {
                for (m = 0; m != v36; m = m + 1)
                {
                  if (*v48 != v37)
                  {
                    objc_enumerationMutation(conflictingObjects);
                  }

                  v39 = *(*(&v47 + 1) + 8 * m);
                  [(TransparencyMergePolicy *)self updateMutation:databaseObject4 withConflictingMutation:v39];
                  managedObjectContext3 = [v39 managedObjectContext];
                  [managedObjectContext3 deleteObject:v39];
                }

                v36 = [conflictingObjects countByEnumeratingWithState:&v47 objects:v63 count:16];
              }

              while (v36);
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v6);
  }

  v46.receiver = self;
  v46.super_class = TransparencyMergePolicy;
  v41 = [(TransparencyMergePolicy *)&v46 resolveConstraintConflicts:obj error:error];

  return v41;
}

@end