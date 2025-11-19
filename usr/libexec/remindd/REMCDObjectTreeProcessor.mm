@interface REMCDObjectTreeProcessor
- (REMCDObjectTreeProcessor)initWithTraversalOrder:(unint64_t)a3 batchSize:(unint64_t)a4 delegate:(id)a5;
- (REMCDObjectTreeProcessorDelegate)delegate;
- (id)_flushIfNeeded:(id)a3;
- (id)_flushRemaining:(id)a3;
- (id)traverse:(id)a3;
- (id)traverseByPostOrder:(id)a3;
@end

@implementation REMCDObjectTreeProcessor

- (REMCDObjectTreeProcessor)initWithTraversalOrder:(unint64_t)a3 batchSize:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = REMCDObjectTreeProcessor;
  v9 = [(REMCDObjectTreeProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_traversalOrder = a3;
    v9->_batchSize = a4;
    objc_storeWeak(&v9->_delegate, v8);
  }

  return v10;
}

- (id)traverse:(id)a3
{
  v4 = a3;
  if ([(REMCDObjectTreeProcessor *)self traversalOrder])
  {
    [NSException raise:NSInternalInconsistencyException format:@"REMCDObjectTreeProcessor: Unsupported traversal order {%ld}", [(REMCDObjectTreeProcessor *)self traversalOrder]];
    v5 = &__NSArray0__struct;
  }

  else
  {
    v5 = [(REMCDObjectTreeProcessor *)self traverseByPostOrder:v4];
  }

  return v5;
}

- (id)traverseByPostOrder:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = +[REMLogStore write];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 identifier];
    *buf = 138543618;
    v45 = v7;
    v46 = 2048;
    v47 = [(REMCDObjectTreeProcessor *)self batchSize];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "REMCDObjectTreeProcessor: START traversing post-order from {rootNode: %{public}@, batchSize: %ld}", buf, 0x16u);
  }

  v8 = +[NSMutableArray array];
  v9 = objc_alloc_init(NSMutableOrderedSet);
  v10 = [NSMutableArray arrayWithObject:v4];
  v11 = v4;
  v12 = v11;
  if ([v10 count])
  {
    v41 = v5;
    v13 = 0;
    v40 = v11;
    v14 = v11;
    v15 = REMCRMergeableOrderedSet_ptr;
    v42 = v8;
    do
    {
      v16 = objc_autoreleasePoolPush();
      if ([v14 expanded])
      {

        v13 = 0;
      }

      else
      {
        v17 = [(REMCDObjectTreeProcessor *)self delegate];
        v18 = [v17 preprocessTreeNode:v14];

        if (v18)
        {
          v19 = [v14 childrenNodes];
          v20 = [v19 reverseObjectEnumerator];
          v21 = [v20 allObjects];

          v15 = REMCRMergeableOrderedSet_ptr;
          v13 = v19;
        }

        else
        {
          v21 = 0;
        }

        [v14 setExpanded:1];
        v13 = v21;
      }

      if ([v13 count])
      {
        [v10 addObjectsFromArray:v13];
      }

      else
      {
        v22 = [v14 identifier];
        v23 = [v9 containsObject:v22];

        if (v23)
        {
          v24 = [v15[51] write];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10076DD60(v52, v14, &v53, v24);
          }
        }

        else
        {
          [v8 addObject:v14];
          v24 = [v14 identifier];
          [v9 addObject:v24];
        }

        [v10 removeLastObject];
      }

      v12 = [v10 lastObject];

      v25 = [v15[51] write];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v43 = [v10 count];
        v27 = [v8 count];
        v28 = [v9 count];
        v29 = [v12 identifier];
        *buf = 134218754;
        v45 = v43;
        v46 = 2048;
        v47 = v27;
        v15 = REMCRMergeableOrderedSet_ptr;
        v48 = 2048;
        v49 = v28;
        v50 = 2114;
        v51 = v29;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "REMCDObjectTreeProcessor: \tSTATUS {traversalStack.count: %ld, flushQueue.count: %ld, flushed.count: %ld, tailNode: %{public}@}", buf, 0x2Au);

        v8 = v42;
      }

      v26 = [(REMCDObjectTreeProcessor *)self _flushIfNeeded:v8];
      [v9 addObjectsFromArray:v26];

      objc_autoreleasePoolPop(v16);
      v14 = v12;
    }

    while ([v10 count]);

    v11 = v40;
    v5 = v41;
  }

  v30 = [(REMCDObjectTreeProcessor *)self _flushRemaining:v8];
  [v9 addObjectsFromArray:v30];

  v31 = +[REMLogStore write];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v9 count];
    +[NSDate date];
    v34 = v33 = v8;
    [v34 timeIntervalSinceDate:v5];
    *&v36 = v35 * 1000.0;
    v37 = [v11 identifier];
    *buf = 134218498;
    v45 = v32;
    v46 = 2048;
    v47 = v36;
    v48 = 2114;
    v49 = v37;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "REMCDObjectTreeProcessor: END traversal for {processed.count: %ld, elapsed: %.4f ms, rootNode: %{public}@}", buf, 0x20u);

    v8 = v33;
  }

  v38 = [v9 array];

  return v38;
}

- (id)_flushIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 >= [(REMCDObjectTreeProcessor *)self batchSize])
  {
    v6 = [(REMCDObjectTreeProcessor *)self _flushRemaining:v4];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)_flushRemaining:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = +[REMLogStore write];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10076DDD8(v4, v5);
    }

    v6 = [(REMCDObjectTreeProcessor *)self delegate];
    [v6 processBatchOfTreeNodes:v4];

    v7 = [v4 valueForKey:@"identifier"];
    [v4 removeAllObjects];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (REMCDObjectTreeProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end