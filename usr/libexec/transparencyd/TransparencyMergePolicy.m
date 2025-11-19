@interface TransparencyMergePolicy
- (BOOL)resolveConstraintConflicts:(id)a3 error:(id *)a4;
- (TransparencyMergePolicy)init;
- (void)updateDeviceRecord:(id)a3 withConflictingDevice:(id)a4;
- (void)updateMutation:(id)a3 withConflictingMutation:(id)a4;
- (void)updateTreeHead:(id)a3 withConflictingHead:(id)a4;
@end

@implementation TransparencyMergePolicy

- (TransparencyMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = TransparencyMergePolicy;
  return [(TransparencyMergePolicy *)&v3 initWithMergeType:1];
}

- (void)updateTreeHead:(id)a3 withConflictingHead:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 failures];
  [v5 addFailures:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v6 failures];
  v9 = [v8 allObjects];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v21 + 1) + 8 * v13) setSth:v5];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v14 = [v6 failureEvent];
  [v5 setFailureEvent:v14];

  v15 = [v6 failureEvent];
  [v15 setSth:v5];

  if ([v5 inclusionVerified] == 2)
  {
    [v5 setInclusionVerified:{objc_msgSend(v6, "inclusionVerified")}];
  }

  if ([v5 consistencyVerified] == 2)
  {
    [v5 setConsistencyVerified:{objc_msgSend(v6, "consistencyVerified")}];
  }

  if ([v5 mmdVerified] == 2)
  {
    [v5 setMmdVerified:{objc_msgSend(v6, "mmdVerified")}];
  }

  v16 = [v5 sth];
  v17 = [v6 sth];
  v18 = [v16 isEqualToData:v17];

  v19 = [v5 signatureVerified];
  if (v18)
  {
    if (v19 != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v19 != 1 && [v6 signatureVerified] == 1)
  {
    v20 = [v6 sth];
    [v5 setSth:v20];

LABEL_20:
    [v5 setSignatureVerified:{objc_msgSend(v6, "signatureVerified")}];
  }

LABEL_21:
}

- (void)updateDeviceRecord:(id)a3 withConflictingDevice:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [v5 request];
  v7 = [v6 responseTime];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [v16 request];
  v11 = [v10 responseTime];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  if (v9 > v13)
  {
    v14 = [v5 loggableData];
    [v16 setLoggableData:v14];

    v15 = [v5 request];
    [v16 setRequest:v15];
  }
}

- (void)updateMutation:(id)a3 withConflictingMutation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 failures];
  [v5 addFailures:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 failures];
  v9 = [v8 allObjects];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * v13) setMutation:v5];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = [v6 failureEvent];

  if (v14)
  {
    v15 = [v6 failureEvent];
    [v5 setFailureEvent:v15];

    v16 = [v6 failureEvent];
    [v16 setMutation:v5];
  }

  if ([v5 signatureResult] == 2)
  {
    [v5 setSignatureResult:{objc_msgSend(v6, "signatureResult")}];
  }

  if ([v5 mergeResult] == 2)
  {
    [v5 setMergeResult:{objc_msgSend(v6, "mergeResult")}];
  }
}

- (BOOL)resolveConstraintConflicts:(id)a3 error:(id *)a4
{
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = a3;
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
        v9 = [v8 databaseObject];
        v10 = [v9 entity];
        v11 = +[KTTreeHead entity];
        v12 = [v10 isKindOfEntity:v11];

        v13 = [v8 databaseObject];
        v14 = v13;
        if (v12)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v15 = [v8 conflictingObjects];
          v16 = [v15 countByEnumeratingWithState:&v55 objects:v65 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v55 + 1) + 8 * j);
                [(TransparencyMergePolicy *)self updateTreeHead:v14 withConflictingHead:v20];
                v21 = [v20 managedObjectContext];
                [v21 deleteObject:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v55 objects:v65 count:16];
            }

            while (v17);
          }
        }

        else
        {
          v22 = [v13 entity];
          v23 = +[KTDeviceRecord entity];
          v24 = [v22 isKindOfEntity:v23];

          v25 = [v8 databaseObject];
          v14 = v25;
          if (v24)
          {
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v15 = [v8 conflictingObjects];
            v26 = [v15 countByEnumeratingWithState:&v51 objects:v64 count:16];
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
                    objc_enumerationMutation(v15);
                  }

                  v30 = *(*(&v51 + 1) + 8 * k);
                  [(TransparencyMergePolicy *)self updateDeviceRecord:v14 withConflictingDevice:v30];
                  v31 = [v30 managedObjectContext];
                  [v31 deleteObject:v30];
                }

                v27 = [v15 countByEnumeratingWithState:&v51 objects:v64 count:16];
              }

              while (v27);
            }
          }

          else
          {
            v32 = [v25 entity];
            v33 = +[KTMutation entity];
            v34 = [v32 isKindOfEntity:v33];

            if (!v34)
            {
              continue;
            }

            v14 = [v8 databaseObject];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v15 = [v8 conflictingObjects];
            v35 = [v15 countByEnumeratingWithState:&v47 objects:v63 count:16];
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
                    objc_enumerationMutation(v15);
                  }

                  v39 = *(*(&v47 + 1) + 8 * m);
                  [(TransparencyMergePolicy *)self updateMutation:v14 withConflictingMutation:v39];
                  v40 = [v39 managedObjectContext];
                  [v40 deleteObject:v39];
                }

                v36 = [v15 countByEnumeratingWithState:&v47 objects:v63 count:16];
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
  v41 = [(TransparencyMergePolicy *)&v46 resolveConstraintConflicts:obj error:a4];

  return v41;
}

@end