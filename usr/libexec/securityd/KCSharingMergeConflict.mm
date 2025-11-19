@interface KCSharingMergeConflict
- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)a3 locallyChangedOutgoingDatabaseItem:(SecDbItem *)a4;
- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)a3 locallyDeletedOutgoingDatabaseItem:(SecDbItem *)a4;
- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)a3 locallyChangedOutgoingDatabaseItem:(SecDbItem *)a4 mirrorDatabaseItem:(SecDbItem *)a5;
- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)a3 locallyDeletedOutgoingDatabaseItem:(SecDbItem *)a4 mirrorDatabaseItem:(SecDbItem *)a5;
- (id)resolveWithAccessGroups:(id)a3 error:(id *)a4;
@end

@implementation KCSharingMergeConflict

- (id)resolveWithAccessGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(KCSharingDatabaseUpdatePlan);
  v8 = [(KCSharingMergeConflict *)self type];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
LABEL_18:
      v11 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
      v14 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
      [(KCSharingIncomingEntry *)v11 addObject:v14];
      goto LABEL_19;
    }

    if (v8 != 3)
    {
      goto LABEL_20;
    }

    v22 = [KCSharingIncomingEntry alloc];
    v23 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
    v11 = [(KCSharingIncomingRow *)v22 initWithIncomingDatabaseItem:v23 error:a4];

    if (!v11)
    {
      goto LABEL_21;
    }

    v24 = [KCSharingOutgoingEntry alloc];
    v25 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
    v14 = [(KCSharingOutgoingRow *)v24 initWithOutgoingDatabaseItem:v25 error:a4];

    if (!v14)
    {
      goto LABEL_30;
    }

    if ([(KCSharingIncomingEntry *)v11 type]== 3)
    {
      v19 = v7;
      goto LABEL_14;
    }

    v35 = [(KCSharingIncomingEntry *)v11 remoteItemWithAccessGroups:v6 error:a4];
    if (v35)
    {
      v20 = v35;
      v36 = [(KCSharingOutgoingEntry *)v14 remoteItemWithAccessGroups:v6 error:a4];
      if (v36)
      {
        v37 = v36;
        if ([v20 isEqual:v36])
        {
          v38 = [KCSharingMirrorEntry alloc];
          v39 = [(KCSharingIncomingEntry *)v11 record];
          v40 = [(KCSharingMirrorEntry *)v38 initWithSavedRecord:v39 forOutgoingEntry:v14 flags:0];

          v41 = [(KCSharingDatabaseUpdatePlan *)v7 insertIntoMirror];
          [v41 addObject:v40];

          v42 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          v43 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
          [v42 addObject:v43];

          v44 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          v45 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
          [v44 addObject:v45];

LABEL_37:
          goto LABEL_16;
        }

        v64 = v37;
        v65 = v20;
        v46 = [(KCSharingIncomingEntry *)v11 record];
        v47 = [v46 recordChangeTag];
        v48 = [(KCSharingOutgoingEntry *)v14 record];
        v49 = [v48 recordChangeTag];
        v50 = [v47 isEqualToString:v49];

        if (v50)
        {
          v40 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          v51 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
        }

        else
        {
          v52 = [(KCSharingIncomingEntry *)v11 modificationDate];
          v53 = [(KCSharingOutgoingEntry *)v14 modificationDate];
          v54 = [v52 compare:v53];

          if (v54 == -1)
          {
            v58 = [KCSharingMirrorEntry alloc];
            v59 = [(KCSharingIncomingEntry *)v11 record];
            v40 = [(KCSharingMirrorEntry *)v58 initWithSavedRecord:v59 forOutgoingEntry:v14 flags:1];

            v60 = [(KCSharingDatabaseUpdatePlan *)v7 insertIntoMirror];
            [v60 addObject:v40];

            v61 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
            v62 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
            [v61 addObject:v62];

            v44 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
            v63 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
            [v44 addObject:v63];

            goto LABEL_36;
          }

          v55 = [(KCSharingDatabaseUpdatePlan *)v7 insertIntoLocalAndMirror];
          [v55 addObject:v11];

          v56 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          v57 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
          [v56 addObject:v57];

          v40 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          v51 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
        }

        v44 = v51;
        [(KCSharingMirrorEntry *)v40 addObject:v51];
LABEL_36:
        v37 = v64;
        v20 = v65;
        goto LABEL_37;
      }
    }

    goto LABEL_30;
  }

  if (!v8)
  {
    v30 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    v31 = [(KCSharingMergeConflict *)self mirrorDatabaseItem];
    [v30 addObject:v31];

    v32 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    v33 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
    [v32 addObject:v33];

    goto LABEL_18;
  }

  if (v8 != 1)
  {
LABEL_20:
    v11 = v7;
    goto LABEL_21;
  }

  v9 = [KCSharingIncomingEntry alloc];
  v10 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
  v11 = [(KCSharingIncomingRow *)v9 initWithIncomingDatabaseItem:v10 error:a4];

  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = [KCSharingOutgoingDeletion alloc];
  v13 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
  v14 = [(KCSharingOutgoingDeletion *)v12 initWithPlaceholderOutgoingDatabaseItem:v13 error:a4];

  if (v14)
  {
    v15 = [(KCSharingIncomingEntry *)v11 record];
    v16 = [v15 recordChangeTag];
    v17 = [(KCSharingOutgoingEntry *)v14 recordChangeTag];
    v18 = [v16 isEqual:v17];

    v19 = v7;
    if (v18)
    {
      v20 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
      v21 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
LABEL_15:
      v29 = v21;
      [v20 addObject:v21];

LABEL_16:
LABEL_19:

      goto LABEL_20;
    }

LABEL_14:
    v26 = [(KCSharingDatabaseUpdatePlan *)v19 insertIntoLocalAndMirror];
    [v26 addObject:v11];

    v27 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    v28 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
    [v27 addObject:v28];

    v20 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    v21 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
    goto LABEL_15;
  }

LABEL_30:

  v11 = 0;
LABEL_21:

  return v11;
}

- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)a3 locallyDeletedOutgoingDatabaseItem:(SecDbItem *)a4 mirrorDatabaseItem:(SecDbItem *)a5
{
  v11.receiver = self;
  v11.super_class = KCSharingMergeConflict;
  v8 = [(KCSharingMergeConflict *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 0;
    objc_storeStrong(&v8->_incomingDatabaseItem, a3);
    objc_storeStrong(&v9->_outgoingDatabaseItem, a4);
    objc_storeStrong(&v9->_mirrorDatabaseItem, a5);
  }

  return v9;
}

- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)a3 locallyChangedOutgoingDatabaseItem:(SecDbItem *)a4 mirrorDatabaseItem:(SecDbItem *)a5
{
  v11.receiver = self;
  v11.super_class = KCSharingMergeConflict;
  v8 = [(KCSharingMergeConflict *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 2;
    objc_storeStrong(&v8->_incomingDatabaseItem, a3);
    objc_storeStrong(&v9->_outgoingDatabaseItem, a4);
    objc_storeStrong(&v9->_mirrorDatabaseItem, a5);
  }

  return v9;
}

- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)a3 locallyChangedOutgoingDatabaseItem:(SecDbItem *)a4
{
  v9.receiver = self;
  v9.super_class = KCSharingMergeConflict;
  v6 = [(KCSharingMergeConflict *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_incomingDatabaseItem, a3);
    objc_storeStrong(&v7->_outgoingDatabaseItem, a4);
  }

  return v7;
}

- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)a3 locallyDeletedOutgoingDatabaseItem:(SecDbItem *)a4
{
  v9.receiver = self;
  v9.super_class = KCSharingMergeConflict;
  v6 = [(KCSharingMergeConflict *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_incomingDatabaseItem, a3);
    objc_storeStrong(&v7->_outgoingDatabaseItem, a4);
  }

  return v7;
}

@end