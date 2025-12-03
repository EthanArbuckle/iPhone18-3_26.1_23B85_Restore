@interface _DASTaskDependencyGraph
- (id)allTasks;
- (id)constructTaskDependencyGraphForTask:(id)task dependencyDataMap:(id)map;
- (id)description;
- (id)getEdgesForNode:(id)node;
- (id)initTaskGraph;
- (id)nodeForTaskIdentifier:(id)identifier;
- (id)unionGraphWith:(id)with;
- (void)addDependencyEdgeFrom:(id)from to:(id)to;
- (void)addTaskNodeToGraph:(id)graph;
- (void)markRootTaskIdentifier:(id)identifier;
- (void)traverseGraphForTask:(id)task updatingNodesWith:(id)with;
@end

@implementation _DASTaskDependencyGraph

- (id)initTaskGraph
{
  v14.receiver = self;
  v14.super_class = _DASTaskDependencyGraph;
  v2 = [(_DASTaskDependencyGraph *)&v14 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    graph = v2->_graph;
    v2->_graph = v3;

    v5 = +[NSMapTable weakToStrongObjectsMapTable];
    taskNodeMap = v2->_taskNodeMap;
    v2->_taskNodeMap = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.dasd.taskDependencyGraph", v8);
    queue = v2->_queue;
    v2->_queue = v9;

    v11 = [_DASDaemonLogger logForCategory:@"TaskDependencyGraph"];
    log = v2->_log;
    v2->_log = v11;
  }

  return v2;
}

- (void)addTaskNodeToGraph:(id)graph
{
  graphCopy = graph;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A09E4;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = graphCopy;
  v6 = graphCopy;
  dispatch_sync(queue, v7);
}

- (void)addDependencyEdgeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v8 = toCopy;
  if (fromCopy && toCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0BB0;
    block[3] = &unk_1001B56B8;
    block[4] = self;
    v11 = fromCopy;
    v12 = v8;
    dispatch_sync(queue, block);
  }
}

- (id)nodeForTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000A0E4C;
  v17 = sub_1000A0E5C;
  v18 = 0;
  if (identifierCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0E64;
    block[3] = &unk_1001B5D98;
    v12 = &v13;
    block[4] = self;
    v11 = identifierCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)markRootTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A0F4C;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (id)getEdgesForNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000A0E4C;
  v16 = sub_1000A0E5C;
  v17 = 0;
  if (nodeCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A1080;
    block[3] = &unk_1001B5D98;
    v11 = &v12;
    block[4] = self;
    v10 = nodeCopy;
    dispatch_sync(queue, block);
    v7 = v13[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)constructTaskDependencyGraphForTask:(id)task dependencyDataMap:(id)map
{
  taskCopy = task;
  mapCopy = map;
  v52 = +[NSMutableDictionary dictionary];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v6 = mapCopy;
  v45 = v6;
  v50 = [v6 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v50)
  {
    v48 = *v66;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v65 + 1) + 8 * i);
        v9 = [v6 objectForKeyedSubscript:v8];
        producedResultIdentifiers = [v9 producedResultIdentifiers];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v11 = producedResultIdentifiers;
        v12 = [v11 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v62;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v62 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v61 + 1) + 8 * j);
              if (([v16 isEqualToString:v8] & 1) == 0)
              {
                v17 = [v52 objectForKeyedSubscript:v16];

                if (!v17)
                {
                  v18 = +[NSMutableSet set];
                  [v52 setObject:v18 forKeyedSubscript:v16];
                }

                v19 = [v52 objectForKeyedSubscript:v16];
                [v19 addObject:v8];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v61 objects:v71 count:16];
          }

          while (v13);
        }

        v6 = v45;
      }

      v50 = [v45 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v50);
  }

  initTaskGraph = [(_DASTaskDependencyGraph *)self initTaskGraph];
  v21 = [[_DASTaskDependencyGraphNode alloc] initWithIdentifier:taskCopy];
  [initTaskGraph markRootTaskIdentifier:taskCopy];
  v22 = [NSMutableSet setWithObject:v21];
  v42 = v21;
  v23 = [NSMutableArray arrayWithObject:v21];
  v24 = v52;
  while ([v23 count])
  {
    firstObject = [v23 firstObject];
    [v23 removeObjectAtIndex:0];
    [initTaskGraph addTaskNodeToGraph:firstObject];
    taskIdentifier = [firstObject taskIdentifier];
    v27 = [v6 objectForKeyedSubscript:taskIdentifier];
    dependencyIdentifiers = [v27 dependencyIdentifiers];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v29 = dependencyIdentifiers;
    v49 = [v29 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (!v49)
    {
      goto LABEL_46;
    }

    v47 = *v58;
    v44 = v29;
    do
    {
      v30 = 0;
      do
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(v29);
        }

        v51 = v30;
        v31 = *(*(&v57 + 1) + 8 * v30);
        v32 = [v6 objectForKey:v31];

        if (v32)
        {
          v33 = [initTaskGraph nodeForTaskIdentifier:v31];
          if (!v33)
          {
            v33 = [[_DASTaskDependencyGraphNode alloc] initWithIdentifier:v31];
          }

          [initTaskGraph addDependencyEdgeFrom:firstObject to:v33];
          if (([v22 containsObject:v33] & 1) == 0)
          {
            [v22 addObject:v33];
            [v23 addObject:v33];
          }
        }

        else
        {
          v34 = [v24 objectForKey:v31];

          if (!v34)
          {
            goto LABEL_44;
          }

          v33 = [v24 objectForKeyedSubscript:v31];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v35 = [(_DASTaskDependencyGraphNode *)v33 countByEnumeratingWithState:&v53 objects:v69 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v54;
            do
            {
              for (k = 0; k != v36; k = k + 1)
              {
                if (*v54 != v37)
                {
                  objc_enumerationMutation(v33);
                }

                v39 = *(*(&v53 + 1) + 8 * k);
                v40 = [initTaskGraph nodeForTaskIdentifier:v39];
                if (!v40)
                {
                  v40 = [[_DASTaskDependencyGraphNode alloc] initWithIdentifier:v39];
                }

                [initTaskGraph addDependencyEdgeFrom:firstObject to:v40];
                if (([v22 containsObject:v40] & 1) == 0)
                {
                  [v22 addObject:v40];
                  [v23 addObject:v40];
                }
              }

              v36 = [(_DASTaskDependencyGraphNode *)v33 countByEnumeratingWithState:&v53 objects:v69 count:16];
            }

            while (v36);
            v24 = v52;
            v29 = v44;
            v6 = v45;
          }
        }

LABEL_44:
        v30 = v51 + 1;
      }

      while ((v51 + 1) != v49);
      v49 = [v29 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v49);
LABEL_46:
  }

  return initTaskGraph;
}

- (void)traverseGraphForTask:(id)task updatingNodesWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v7 = [(_DASTaskDependencyGraph *)self nodeForTaskIdentifier:task];
  if (v7)
  {
    v8 = [NSMutableSet setWithObject:v7];
    v17 = v7;
    v9 = [NSMutableArray arrayWithObject:v7];
    while ([v9 count])
    {
      firstObject = [v9 firstObject];
      withCopy[2](withCopy, firstObject);
      v11 = [(NSMapTable *)selfCopy->_graph objectForKey:firstObject];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            if (([v8 containsObject:v16] & 1) == 0)
            {
              [v8 addObject:v16];
              [v9 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      [v9 removeObjectAtIndex:0];
    }

    v7 = v17;
  }
}

- (id)unionGraphWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  rootTaskIdentifier = [withCopy rootTaskIdentifier];
  v22 = withCopy;
  v7 = [withCopy nodeForTaskIdentifier:rootTaskIdentifier];

  v8 = [NSMutableSet setWithObject:v7];
  v21 = v7;
  v9 = [NSMutableArray arrayWithObject:v7];
  if ([v9 count])
  {
    v23 = v9;
    do
    {
      firstObject = [v9 firstObject];
      [v9 removeObjectAtIndex:0];
      [(_DASTaskDependencyGraph *)selfCopy addTaskNodeToGraph:firstObject];
      v11 = [v22 getEdgesForNode:firstObject];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = v11;
      v26 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v26)
      {
        goto LABEL_17;
      }

      v25 = *v28;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if (([v8 containsObject:v13] & 1) == 0)
          {
            [v8 addObject:v13];
            [v23 addObject:v13];
          }

          graph = [(_DASTaskDependencyGraph *)selfCopy graph];
          v15 = [graph objectForKey:firstObject];
          if (!v15)
          {

LABEL_14:
            [(_DASTaskDependencyGraph *)selfCopy addDependencyEdgeFrom:firstObject to:v13];
            continue;
          }

          v16 = v15;
          graph2 = [(_DASTaskDependencyGraph *)selfCopy graph];
          v18 = [graph2 objectForKey:firstObject];
          v19 = [v18 containsObject:v13];

          if ((v19 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v26);
LABEL_17:

      v9 = v23;
    }

    while ([v23 count]);
  }

  return selfCopy;
}

- (id)allTasks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000A0E4C;
  v11 = sub_1000A0E5C;
  v12 = +[NSMutableSet set];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A1C0C;
  v6[3] = &unk_1001B5A68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000A0E4C;
  v11 = sub_1000A0E5C;
  v12 = [NSMutableString stringWithFormat:@"<%@: \n", objc_opt_class()];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1E5C;
  block[3] = &unk_1001B5A68;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  [v8[5] appendFormat:@" >"];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end