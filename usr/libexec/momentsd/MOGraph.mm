@interface MOGraph
- (MOGraph)initWithNumVertices:(unint64_t)vertices edges:(id)edges;
- (id)calculateConnectedComponentWithGraphTraversal:(unint64_t)traversal;
- (void)bfsStartingFrom:(id)from connectedPartIndx:(id)indx;
- (void)dfsStartingFrom:(id)from connectedPartIndx:(id)indx;
@end

@implementation MOGraph

- (MOGraph)initWithNumVertices:(unint64_t)vertices edges:(id)edges
{
  edgesCopy = edges;
  v9 = edgesCopy;
  if (!vertices)
  {
    v34 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MOGraph initWithNumVertices:edges:];
    }

    v35 = +[NSAssertionHandler currentHandler];
    v36 = v35;
    v37 = @"Invalid parameter not satisfying: numVertices > 0";
    v38 = a2;
    selfCopy6 = self;
    v40 = 18;
    goto LABEL_23;
  }

  if (!edgesCopy)
  {
    v41 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [MOGraph initWithNumVertices:edges:];
    }

    v35 = +[NSAssertionHandler currentHandler];
    v36 = v35;
    v37 = @"Invalid parameter not satisfying: edges";
    v38 = a2;
    selfCopy6 = self;
    v40 = 19;
LABEL_23:
    [v35 handleFailureInMethod:v38 object:selfCopy6 file:@"MOGraph.m" lineNumber:v40 description:v37];

    selfCopy7 = 0;
    goto LABEL_24;
  }

  if ([edgesCopy count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      v12 = [v11 objectAtIndexedSubscript:0];
      intValue = [v12 intValue];

      if ((intValue & 0x80000000) != 0)
      {
        break;
      }

      v14 = [v9 objectAtIndexedSubscript:v10];
      v15 = [v14 objectAtIndexedSubscript:0];
      intValue2 = [v15 intValue];

      if (intValue2 >= vertices)
      {
        v44 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [MOGraph initWithNumVertices:edges:];
        }

        v35 = +[NSAssertionHandler currentHandler];
        v36 = v35;
        v37 = @"Invalid parameter not satisfying: edges[i][0].intValue < numVertices";
        v38 = a2;
        selfCopy6 = self;
        v40 = 22;
        goto LABEL_23;
      }

      v17 = [v9 objectAtIndexedSubscript:v10];
      v18 = [v17 objectAtIndexedSubscript:1];
      intValue3 = [v18 intValue];

      if ((intValue3 & 0x80000000) != 0)
      {
        v45 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [MOGraph initWithNumVertices:edges:];
        }

        v35 = +[NSAssertionHandler currentHandler];
        v36 = v35;
        v37 = @"Invalid parameter not satisfying: edges[i][1].intValue >= 0";
        v38 = a2;
        selfCopy6 = self;
        v40 = 23;
        goto LABEL_23;
      }

      v20 = [v9 objectAtIndexedSubscript:v10];
      v21 = [v20 objectAtIndexedSubscript:1];
      intValue4 = [v21 intValue];

      if (intValue4 >= vertices)
      {
        v46 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [MOGraph initWithNumVertices:edges:];
        }

        v35 = +[NSAssertionHandler currentHandler];
        v36 = v35;
        v37 = @"Invalid parameter not satisfying: edges[i][1].intValue < numVertices";
        v38 = a2;
        selfCopy6 = self;
        v40 = 24;
        goto LABEL_23;
      }

      if ([v9 count] <= ++v10)
      {
        goto LABEL_10;
      }
    }

    v43 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [MOGraph initWithNumVertices:edges:];
    }

    v35 = +[NSAssertionHandler currentHandler];
    v36 = v35;
    v37 = @"Invalid parameter not satisfying: edges[i][0].intValue >= 0";
    v38 = a2;
    selfCopy6 = self;
    v40 = 21;
    goto LABEL_23;
  }

LABEL_10:
  v47.receiver = self;
  v47.super_class = MOGraph;
  v23 = [(MOGraph *)&v47 init];
  v24 = v23;
  if (v23)
  {
    v23->_numVertices = vertices;
    objc_storeStrong(&v23->_edges, edges);
    v25 = objc_alloc_init(NSMutableArray);
    membership = v24->_membership;
    v24->_membership = v25;

    do
    {
      [(NSMutableArray *)v24->_membership addObject:&off_100369220];
      --vertices;
    }

    while (vertices);
    v27 = objc_alloc_init(NSMutableDictionary);
    sparseAdjacencyMatrix = v24->_sparseAdjacencyMatrix;
    v24->_sparseAdjacencyMatrix = v27;

    if (v24->_numVertices)
    {
      v29 = 0;
      do
      {
        v30 = objc_alloc_init(NSMutableArray);
        v31 = v24->_sparseAdjacencyMatrix;
        v32 = [NSNumber numberWithInt:v29];
        [(NSMutableDictionary *)v31 setObject:v30 forKeyedSubscript:v32];

        ++v29;
      }

      while (v24->_numVertices > v29);
    }
  }

  self = v24;
  selfCopy7 = self;
LABEL_24:

  return selfCopy7;
}

- (id)calculateConnectedComponentWithGraphTraversal:(unint64_t)traversal
{
  if ([(NSArray *)self->_edges count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_edges objectAtIndexedSubscript:v5];
      v7 = [v6 objectAtIndexedSubscript:0];

      v8 = [(NSArray *)self->_edges objectAtIndexedSubscript:v5];
      v9 = [v8 objectAtIndexedSubscript:1];

      v10 = [(NSMutableDictionary *)self->_sparseAdjacencyMatrix objectForKeyedSubscript:v7];
      [v10 addObject:v9];

      v11 = [(NSMutableDictionary *)self->_sparseAdjacencyMatrix objectForKeyedSubscript:v9];
      [v11 addObject:v7];

      ++v5;
    }

    while ([(NSArray *)self->_edges count]> v5);
  }

  if (self->_numVertices)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = [(NSMutableArray *)self->_membership objectAtIndexedSubscript:v12];
      v15 = [v14 isEqual:&off_100369220];

      if (v15)
      {
        v16 = [NSNumber numberWithInt:v12];
        v17 = [NSNumber numberWithInt:v13];
        if (traversal == 1)
        {
          [(MOGraph *)self bfsStartingFrom:v16 connectedPartIndx:v17];
        }

        else
        {
          [(MOGraph *)self dfsStartingFrom:v16 connectedPartIndx:v17];
        }

        v13 = (v13 + 1);
      }

      ++v12;
    }

    while (self->_numVertices > v12);
  }

  membership = self->_membership;

  return membership;
}

- (void)dfsStartingFrom:(id)from connectedPartIndx:(id)indx
{
  fromCopy = from;
  indxCopy = indx;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_membership, "objectAtIndexedSubscript:", [fromCopy intValue]);
  v9 = [v8 isEqual:&off_100369220];

  if (v9)
  {
    -[NSMutableArray setObject:atIndexedSubscript:](self->_membership, "setObject:atIndexedSubscript:", indxCopy, [fromCopy intValue]);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [(NSMutableDictionary *)self->_sparseAdjacencyMatrix objectForKeyedSubscript:fromCopy, 0];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(MOGraph *)self dfsStartingFrom:*(*(&v15 + 1) + 8 * v14) connectedPartIndx:indxCopy];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)bfsStartingFrom:(id)from connectedPartIndx:(id)indx
{
  fromCopy = from;
  indxCopy = indx;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_membership, "objectAtIndexedSubscript:", [fromCopy intValue]);
  v8 = [v7 isEqual:&off_100369220];

  if (v8)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v21 = fromCopy;
    [v9 enqueue:fromCopy];
    while ([v9 count])
    {
      v10 = [v9 count];
      if (v10)
      {
        v11 = v10;
        for (i = 0; i != v11; ++i)
        {
          dequeue = [v9 dequeue];
          v14 = -[NSMutableArray objectAtIndexedSubscript:](self->_membership, "objectAtIndexedSubscript:", [dequeue intValue]);
          v15 = [v14 isEqual:&off_100369220];

          if (v15)
          {
            -[NSMutableArray setObject:atIndexedSubscript:](self->_membership, "setObject:atIndexedSubscript:", indxCopy, [dequeue intValue]);
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v16 = [(NSMutableDictionary *)self->_sparseAdjacencyMatrix objectForKeyedSubscript:dequeue];
            v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v24;
              do
              {
                v20 = 0;
                do
                {
                  if (*v24 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  [v9 enqueue:*(*(&v23 + 1) + 8 * v20)];
                  v20 = v20 + 1;
                }

                while (v18 != v20);
                v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
              }

              while (v18);
            }
          }
        }
      }
    }

    fromCopy = v21;
  }
}

@end