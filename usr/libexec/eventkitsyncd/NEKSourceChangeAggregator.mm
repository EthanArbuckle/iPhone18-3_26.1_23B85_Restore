@interface NEKSourceChangeAggregator
- (NEKSourceChangeAggregator)initWithNEKEventStore:(id)store eventChanges:(id)changes reminderChanges:(id)reminderChanges;
@end

@implementation NEKSourceChangeAggregator

- (NEKSourceChangeAggregator)initWithNEKEventStore:(id)store eventChanges:(id)changes reminderChanges:(id)reminderChanges
{
  storeCopy = store;
  changesCopy = changes;
  reminderChangesCopy = reminderChanges;
  v62.receiver = self;
  v62.super_class = NEKSourceChangeAggregator;
  v11 = [(NEKSourceChangeAggregator *)&v62 init];
  if (v11)
  {
    v12 = objc_alloc_init(EKEventStore);
    ekEventStore = v11->_ekEventStore;
    v11->_ekEventStore = v12;

    v49 = reminderChangesCopy;
    v14 = +[NSMutableSet set];
    v15 = +[NSMutableSet set];
    v16 = +[NSMutableSet set];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10002F2C4;
    v59[3] = &unk_1000B54D0;
    v60 = storeCopy;
    v17 = v11;
    v61 = v17;
    v48 = storeCopy;
    v18 = objc_retainBlock(v59);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10002F4B8;
    v57[3] = &unk_1000B5520;
    v19 = v17;
    v58 = v19;
    v20 = objc_retainBlock(v57);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v47 = v11;
    v55[2] = sub_10002F6B4;
    v55[3] = &unk_1000B5548;
    v56 = v14;
    v46 = v14;
    v21 = objc_retainBlock(v55);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10002F7CC;
    v53[3] = &unk_1000B5548;
    v22 = v15;
    v54 = v22;
    v23 = objc_retainBlock(v53);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10002F8E4;
    v50[3] = &unk_1000B5570;
    v51 = v22;
    v52 = v16;
    v45 = v16;
    v44 = v22;
    v24 = objc_retainBlock(v50);
    inserts = [changesCopy inserts];
    v26 = (v18[2])(v18, v21);
    [inserts enumerateObjectsUsingBlock:v26];

    updates = [changesCopy updates];
    v28 = (v18[2])(v18, v23);
    [updates enumerateObjectsUsingBlock:v28];

    deletes = [changesCopy deletes];
    v30 = (v18[2])(v18, v24);
    [deletes enumerateObjectsUsingBlock:v30];

    inserts2 = [v49 inserts];
    v32 = (v20[2])(v20, v21);
    [inserts2 enumerateObjectsUsingBlock:v32];

    updates2 = [v49 updates];
    v34 = (v20[2])(v20, v23);
    [updates2 enumerateObjectsUsingBlock:v34];

    deletes2 = [v49 deletes];
    v36 = (v20[2])(v20, v24);
    [deletes2 enumerateObjectsUsingBlock:v36];

    reminderChangesCopy = v49;
    v37 = [v46 copy];
    insertedSources = v19->_insertedSources;
    v19->_insertedSources = v37;

    v39 = [v44 copy];
    updatedSources = v19->_updatedSources;
    v19->_updatedSources = v39;

    v41 = [v45 copy];
    deletedSourcesIDs = v19->_deletedSourcesIDs;
    v19->_deletedSourcesIDs = v41;

    storeCopy = v48;
    v11 = v47;
  }

  return v11;
}

@end