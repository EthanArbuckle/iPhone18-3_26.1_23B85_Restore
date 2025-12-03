@interface KCSharingMergeConflict
- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)item locallyChangedOutgoingDatabaseItem:(SecDbItem *)databaseItem;
- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)item locallyDeletedOutgoingDatabaseItem:(SecDbItem *)databaseItem;
- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)item locallyChangedOutgoingDatabaseItem:(SecDbItem *)databaseItem mirrorDatabaseItem:(SecDbItem *)mirrorDatabaseItem;
- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)item locallyDeletedOutgoingDatabaseItem:(SecDbItem *)databaseItem mirrorDatabaseItem:(SecDbItem *)mirrorDatabaseItem;
- (id)resolveWithAccessGroups:(id)groups error:(id *)error;
@end

@implementation KCSharingMergeConflict

- (id)resolveWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v7 = objc_alloc_init(KCSharingDatabaseUpdatePlan);
  type = [(KCSharingMergeConflict *)self type];
  if (type > 1)
  {
    if (type == 2)
    {
LABEL_18:
      itemsToDelete = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
      outgoingDatabaseItem = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
      [(KCSharingIncomingEntry *)itemsToDelete addObject:outgoingDatabaseItem];
      goto LABEL_19;
    }

    if (type != 3)
    {
      goto LABEL_20;
    }

    v22 = [KCSharingIncomingEntry alloc];
    incomingDatabaseItem = [(KCSharingMergeConflict *)self incomingDatabaseItem];
    itemsToDelete = [(KCSharingIncomingRow *)v22 initWithIncomingDatabaseItem:incomingDatabaseItem error:error];

    if (!itemsToDelete)
    {
      goto LABEL_21;
    }

    v24 = [KCSharingOutgoingEntry alloc];
    outgoingDatabaseItem2 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
    outgoingDatabaseItem = [(KCSharingOutgoingRow *)v24 initWithOutgoingDatabaseItem:outgoingDatabaseItem2 error:error];

    if (!outgoingDatabaseItem)
    {
      goto LABEL_30;
    }

    if ([(KCSharingIncomingEntry *)itemsToDelete type]== 3)
    {
      v19 = v7;
      goto LABEL_14;
    }

    v35 = [(KCSharingIncomingEntry *)itemsToDelete remoteItemWithAccessGroups:groupsCopy error:error];
    if (v35)
    {
      itemsToDelete9 = v35;
      v36 = [(KCSharingOutgoingEntry *)outgoingDatabaseItem remoteItemWithAccessGroups:groupsCopy error:error];
      if (v36)
      {
        v37 = v36;
        if ([itemsToDelete9 isEqual:v36])
        {
          v38 = [KCSharingMirrorEntry alloc];
          record = [(KCSharingIncomingEntry *)itemsToDelete record];
          itemsToDelete4 = [(KCSharingMirrorEntry *)v38 initWithSavedRecord:record forOutgoingEntry:outgoingDatabaseItem flags:0];

          insertIntoMirror = [(KCSharingDatabaseUpdatePlan *)v7 insertIntoMirror];
          [insertIntoMirror addObject:itemsToDelete4];

          itemsToDelete2 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          incomingDatabaseItem2 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
          [itemsToDelete2 addObject:incomingDatabaseItem2];

          itemsToDelete3 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          outgoingDatabaseItem3 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
          [itemsToDelete3 addObject:outgoingDatabaseItem3];

LABEL_37:
          goto LABEL_16;
        }

        v64 = v37;
        v65 = itemsToDelete9;
        record2 = [(KCSharingIncomingEntry *)itemsToDelete record];
        recordChangeTag = [record2 recordChangeTag];
        record3 = [(KCSharingOutgoingEntry *)outgoingDatabaseItem record];
        recordChangeTag2 = [record3 recordChangeTag];
        v50 = [recordChangeTag isEqualToString:recordChangeTag2];

        if (v50)
        {
          itemsToDelete4 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          incomingDatabaseItem3 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
        }

        else
        {
          modificationDate = [(KCSharingIncomingEntry *)itemsToDelete modificationDate];
          modificationDate2 = [(KCSharingOutgoingEntry *)outgoingDatabaseItem modificationDate];
          v54 = [modificationDate compare:modificationDate2];

          if (v54 == -1)
          {
            v58 = [KCSharingMirrorEntry alloc];
            record4 = [(KCSharingIncomingEntry *)itemsToDelete record];
            itemsToDelete4 = [(KCSharingMirrorEntry *)v58 initWithSavedRecord:record4 forOutgoingEntry:outgoingDatabaseItem flags:1];

            insertIntoMirror2 = [(KCSharingDatabaseUpdatePlan *)v7 insertIntoMirror];
            [insertIntoMirror2 addObject:itemsToDelete4];

            itemsToDelete5 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
            incomingDatabaseItem4 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
            [itemsToDelete5 addObject:incomingDatabaseItem4];

            itemsToDelete3 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
            outgoingDatabaseItem4 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
            [itemsToDelete3 addObject:outgoingDatabaseItem4];

            goto LABEL_36;
          }

          insertIntoLocalAndMirror = [(KCSharingDatabaseUpdatePlan *)v7 insertIntoLocalAndMirror];
          [insertIntoLocalAndMirror addObject:itemsToDelete];

          itemsToDelete6 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          incomingDatabaseItem5 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
          [itemsToDelete6 addObject:incomingDatabaseItem5];

          itemsToDelete4 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
          incomingDatabaseItem3 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
        }

        itemsToDelete3 = incomingDatabaseItem3;
        [(KCSharingMirrorEntry *)itemsToDelete4 addObject:incomingDatabaseItem3];
LABEL_36:
        v37 = v64;
        itemsToDelete9 = v65;
        goto LABEL_37;
      }
    }

    goto LABEL_30;
  }

  if (!type)
  {
    itemsToDelete7 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    mirrorDatabaseItem = [(KCSharingMergeConflict *)self mirrorDatabaseItem];
    [itemsToDelete7 addObject:mirrorDatabaseItem];

    itemsToDelete8 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    incomingDatabaseItem6 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
    [itemsToDelete8 addObject:incomingDatabaseItem6];

    goto LABEL_18;
  }

  if (type != 1)
  {
LABEL_20:
    itemsToDelete = v7;
    goto LABEL_21;
  }

  v9 = [KCSharingIncomingEntry alloc];
  incomingDatabaseItem7 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
  itemsToDelete = [(KCSharingIncomingRow *)v9 initWithIncomingDatabaseItem:incomingDatabaseItem7 error:error];

  if (!itemsToDelete)
  {
    goto LABEL_21;
  }

  v12 = [KCSharingOutgoingDeletion alloc];
  outgoingDatabaseItem5 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
  outgoingDatabaseItem = [(KCSharingOutgoingDeletion *)v12 initWithPlaceholderOutgoingDatabaseItem:outgoingDatabaseItem5 error:error];

  if (outgoingDatabaseItem)
  {
    record5 = [(KCSharingIncomingEntry *)itemsToDelete record];
    recordChangeTag3 = [record5 recordChangeTag];
    recordChangeTag4 = [(KCSharingOutgoingEntry *)outgoingDatabaseItem recordChangeTag];
    v18 = [recordChangeTag3 isEqual:recordChangeTag4];

    v19 = v7;
    if (v18)
    {
      itemsToDelete9 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
      incomingDatabaseItem8 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
LABEL_15:
      v29 = incomingDatabaseItem8;
      [itemsToDelete9 addObject:incomingDatabaseItem8];

LABEL_16:
LABEL_19:

      goto LABEL_20;
    }

LABEL_14:
    insertIntoLocalAndMirror2 = [(KCSharingDatabaseUpdatePlan *)v19 insertIntoLocalAndMirror];
    [insertIntoLocalAndMirror2 addObject:itemsToDelete];

    itemsToDelete10 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    incomingDatabaseItem9 = [(KCSharingMergeConflict *)self incomingDatabaseItem];
    [itemsToDelete10 addObject:incomingDatabaseItem9];

    itemsToDelete9 = [(KCSharingDatabaseUpdatePlan *)v7 itemsToDelete];
    incomingDatabaseItem8 = [(KCSharingMergeConflict *)self outgoingDatabaseItem];
    goto LABEL_15;
  }

LABEL_30:

  itemsToDelete = 0;
LABEL_21:

  return itemsToDelete;
}

- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)item locallyDeletedOutgoingDatabaseItem:(SecDbItem *)databaseItem mirrorDatabaseItem:(SecDbItem *)mirrorDatabaseItem
{
  v11.receiver = self;
  v11.super_class = KCSharingMergeConflict;
  v8 = [(KCSharingMergeConflict *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 0;
    objc_storeStrong(&v8->_incomingDatabaseItem, item);
    objc_storeStrong(&v9->_outgoingDatabaseItem, databaseItem);
    objc_storeStrong(&v9->_mirrorDatabaseItem, mirrorDatabaseItem);
  }

  return v9;
}

- (KCSharingMergeConflict)initWithRemotelyDeletedIncomingDatabaseItem:(SecDbItem *)item locallyChangedOutgoingDatabaseItem:(SecDbItem *)databaseItem mirrorDatabaseItem:(SecDbItem *)mirrorDatabaseItem
{
  v11.receiver = self;
  v11.super_class = KCSharingMergeConflict;
  v8 = [(KCSharingMergeConflict *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 2;
    objc_storeStrong(&v8->_incomingDatabaseItem, item);
    objc_storeStrong(&v9->_outgoingDatabaseItem, databaseItem);
    objc_storeStrong(&v9->_mirrorDatabaseItem, mirrorDatabaseItem);
  }

  return v9;
}

- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)item locallyChangedOutgoingDatabaseItem:(SecDbItem *)databaseItem
{
  v9.receiver = self;
  v9.super_class = KCSharingMergeConflict;
  v6 = [(KCSharingMergeConflict *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_incomingDatabaseItem, item);
    objc_storeStrong(&v7->_outgoingDatabaseItem, databaseItem);
  }

  return v7;
}

- (KCSharingMergeConflict)initWithRemotelyChangedIncomingDatabaseItem:(SecDbItem *)item locallyDeletedOutgoingDatabaseItem:(SecDbItem *)databaseItem
{
  v9.receiver = self;
  v9.super_class = KCSharingMergeConflict;
  v6 = [(KCSharingMergeConflict *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_incomingDatabaseItem, item);
    objc_storeStrong(&v7->_outgoingDatabaseItem, databaseItem);
  }

  return v7;
}

@end