@interface REMCDObjectTreeProcessor
- (REMCDObjectTreeProcessor)initWithTraversalOrder:(unint64_t)order batchSize:(unint64_t)size delegate:(id)delegate;
- (REMCDObjectTreeProcessorDelegate)delegate;
- (id)_flushIfNeeded:(id)needed;
- (id)_flushRemaining:(id)remaining;
- (id)traverse:(id)traverse;
- (id)traverseByPostOrder:(id)order;
@end

@implementation REMCDObjectTreeProcessor

- (REMCDObjectTreeProcessor)initWithTraversalOrder:(unint64_t)order batchSize:(unint64_t)size delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = REMCDObjectTreeProcessor;
  v9 = [(REMCDObjectTreeProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_traversalOrder = order;
    v9->_batchSize = size;
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v10;
}

- (id)traverse:(id)traverse
{
  traverseCopy = traverse;
  if ([(REMCDObjectTreeProcessor *)self traversalOrder])
  {
    [NSException raise:NSInternalInconsistencyException format:@"REMCDObjectTreeProcessor: Unsupported traversal order {%ld}", [(REMCDObjectTreeProcessor *)self traversalOrder]];
    v5 = &__NSArray0__struct;
  }

  else
  {
    v5 = [(REMCDObjectTreeProcessor *)self traverseByPostOrder:traverseCopy];
  }

  return v5;
}

- (id)traverseByPostOrder:(id)order
{
  orderCopy = order;
  v5 = +[NSDate date];
  v6 = +[REMLogStore write];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    identifier = [orderCopy identifier];
    *buf = 138543618;
    v45 = identifier;
    v46 = 2048;
    batchSize = [(REMCDObjectTreeProcessor *)self batchSize];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "REMCDObjectTreeProcessor: START traversing post-order from {rootNode: %{public}@, batchSize: %ld}", buf, 0x16u);
  }

  v8 = +[NSMutableArray array];
  v9 = objc_alloc_init(NSMutableOrderedSet);
  v10 = [NSMutableArray arrayWithObject:orderCopy];
  v11 = orderCopy;
  lastObject = v11;
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
        delegate = [(REMCDObjectTreeProcessor *)self delegate];
        v18 = [delegate preprocessTreeNode:v14];

        if (v18)
        {
          childrenNodes = [v14 childrenNodes];
          reverseObjectEnumerator = [childrenNodes reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          v15 = REMCRMergeableOrderedSet_ptr;
          v13 = childrenNodes;
        }

        else
        {
          allObjects = 0;
        }

        [v14 setExpanded:1];
        v13 = allObjects;
      }

      if ([v13 count])
      {
        [v10 addObjectsFromArray:v13];
      }

      else
      {
        identifier2 = [v14 identifier];
        v23 = [v9 containsObject:identifier2];

        if (v23)
        {
          write = [v15[51] write];
          if (os_log_type_enabled(write, OS_LOG_TYPE_ERROR))
          {
            sub_10076DD60(v52, v14, &v53, write);
          }
        }

        else
        {
          [v8 addObject:v14];
          write = [v14 identifier];
          [v9 addObject:write];
        }

        [v10 removeLastObject];
      }

      lastObject = [v10 lastObject];

      write2 = [v15[51] write];
      if (os_log_type_enabled(write2, OS_LOG_TYPE_DEBUG))
      {
        v43 = [v10 count];
        v27 = [v8 count];
        v28 = [v9 count];
        identifier3 = [lastObject identifier];
        *buf = 134218754;
        v45 = v43;
        v46 = 2048;
        batchSize = v27;
        v15 = REMCRMergeableOrderedSet_ptr;
        v48 = 2048;
        v49 = v28;
        v50 = 2114;
        v51 = identifier3;
        _os_log_debug_impl(&_mh_execute_header, write2, OS_LOG_TYPE_DEBUG, "REMCDObjectTreeProcessor: \tSTATUS {traversalStack.count: %ld, flushQueue.count: %ld, flushed.count: %ld, tailNode: %{public}@}", buf, 0x2Au);

        v8 = v42;
      }

      v26 = [(REMCDObjectTreeProcessor *)self _flushIfNeeded:v8];
      [v9 addObjectsFromArray:v26];

      objc_autoreleasePoolPop(v16);
      v14 = lastObject;
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
    identifier4 = [v11 identifier];
    *buf = 134218498;
    v45 = v32;
    v46 = 2048;
    batchSize = v36;
    v48 = 2114;
    v49 = identifier4;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "REMCDObjectTreeProcessor: END traversal for {processed.count: %ld, elapsed: %.4f ms, rootNode: %{public}@}", buf, 0x20u);

    v8 = v33;
  }

  array = [v9 array];

  return array;
}

- (id)_flushIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [neededCopy count];
  if (v5 >= [(REMCDObjectTreeProcessor *)self batchSize])
  {
    v6 = [(REMCDObjectTreeProcessor *)self _flushRemaining:neededCopy];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)_flushRemaining:(id)remaining
{
  remainingCopy = remaining;
  if ([remainingCopy count])
  {
    v5 = +[REMLogStore write];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10076DDD8(remainingCopy, v5);
    }

    delegate = [(REMCDObjectTreeProcessor *)self delegate];
    [delegate processBatchOfTreeNodes:remainingCopy];

    v7 = [remainingCopy valueForKey:@"identifier"];
    [remainingCopy removeAllObjects];
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