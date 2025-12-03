@interface PHChange
- (id)npto_relevantChangeDetailsForFetchResult:(id)result;
@end

@implementation PHChange

- (id)npto_relevantChangeDetailsForFetchResult:(id)result
{
  resultCopy = result;
  v5 = [(PHChange *)self changeDetailsForFetchResult:resultCopy];
  if (![v5 hasIncrementalChanges])
  {
    goto LABEL_6;
  }

  insertedIndexes = [v5 insertedIndexes];
  if ([insertedIndexes count])
  {
    goto LABEL_5;
  }

  removedIndexes = [v5 removedIndexes];
  if ([removedIndexes count])
  {

LABEL_5:
LABEL_6:
    v8 = v5;
    goto LABEL_7;
  }

  hasMoves = [v5 hasMoves];

  if (hasMoves)
  {
    goto LABEL_6;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  changedIndexes = [v5 changedIndexes];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004882C;
  v14[3] = &unk_10008B210;
  v12 = v5;
  v15 = v12;
  selfCopy = self;
  v17 = &v18;
  [changedIndexes enumerateIndexesUsingBlock:v14];

  if (*(v19 + 24) == 1)
  {
    v8 = v12;
  }

  else
  {
    v13 = sub_10000268C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v24 = 2112;
      v25 = resultCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No real changes in change: %@ for fetchResult: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v18, 8);
LABEL_7:

  return v8;
}

@end