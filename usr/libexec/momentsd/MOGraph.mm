@interface MOGraph
- (MOGraph)initWithNumVertices:(unint64_t)a3 edges:(id)a4;
- (id)calculateConnectedComponentWithGraphTraversal:(unint64_t)a3;
- (void)bfsStartingFrom:(id)a3 connectedPartIndx:(id)a4;
- (void)dfsStartingFrom:(id)a3 connectedPartIndx:(id)a4;
@end

@implementation MOGraph

- (MOGraph)initWithNumVertices:(unint64_t)a3 edges:(id)a4
{
  v8 = a4;
  v9 = v8;
  if (!a3)
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
    v39 = self;
    v40 = 18;
    goto LABEL_23;
  }

  if (!v8)
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
    v39 = self;
    v40 = 19;
LABEL_23:
    [v35 handleFailureInMethod:v38 object:v39 file:@"MOGraph.m" lineNumber:v40 description:v37];

    v33 = 0;
    goto LABEL_24;
  }

  if ([v8 count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v12 intValue];

      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      v14 = [v9 objectAtIndexedSubscript:v10];
      v15 = [v14 objectAtIndexedSubscript:0];
      v16 = [v15 intValue];

      if (v16 >= a3)
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
        v39 = self;
        v40 = 22;
        goto LABEL_23;
      }

      v17 = [v9 objectAtIndexedSubscript:v10];
      v18 = [v17 objectAtIndexedSubscript:1];
      v19 = [v18 intValue];

      if ((v19 & 0x80000000) != 0)
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
        v39 = self;
        v40 = 23;
        goto LABEL_23;
      }

      v20 = [v9 objectAtIndexedSubscript:v10];
      v21 = [v20 objectAtIndexedSubscript:1];
      v22 = [v21 intValue];

      if (v22 >= a3)
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
        v39 = self;
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
    v39 = self;
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
    v23->_numVertices = a3;
    objc_storeStrong(&v23->_edges, a4);
    v25 = objc_alloc_init(NSMutableArray);
    membership = v24->_membership;
    v24->_membership = v25;

    do
    {
      [(NSMutableArray *)v24->_membership addObject:&off_100369220];
      --a3;
    }

    while (a3);
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
  v33 = self;
LABEL_24:

  return v33;
}

- (id)calculateConnectedComponentWithGraphTraversal:(unint64_t)a3
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
        if (a3 == 1)
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

- (void)dfsStartingFrom:(id)a3 connectedPartIndx:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_membership, "objectAtIndexedSubscript:", [v6 intValue]);
  v9 = [v8 isEqual:&off_100369220];

  if (v9)
  {
    -[NSMutableArray setObject:atIndexedSubscript:](self->_membership, "setObject:atIndexedSubscript:", v7, [v6 intValue]);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [(NSMutableDictionary *)self->_sparseAdjacencyMatrix objectForKeyedSubscript:v6, 0];
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

          [(MOGraph *)self dfsStartingFrom:*(*(&v15 + 1) + 8 * v14) connectedPartIndx:v7];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)bfsStartingFrom:(id)a3 connectedPartIndx:(id)a4
{
  v6 = a3;
  v22 = a4;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_membership, "objectAtIndexedSubscript:", [v6 intValue]);
  v8 = [v7 isEqual:&off_100369220];

  if (v8)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v21 = v6;
    [v9 enqueue:v6];
    while ([v9 count])
    {
      v10 = [v9 count];
      if (v10)
      {
        v11 = v10;
        for (i = 0; i != v11; ++i)
        {
          v13 = [v9 dequeue];
          v14 = -[NSMutableArray objectAtIndexedSubscript:](self->_membership, "objectAtIndexedSubscript:", [v13 intValue]);
          v15 = [v14 isEqual:&off_100369220];

          if (v15)
          {
            -[NSMutableArray setObject:atIndexedSubscript:](self->_membership, "setObject:atIndexedSubscript:", v22, [v13 intValue]);
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v16 = [(NSMutableDictionary *)self->_sparseAdjacencyMatrix objectForKeyedSubscript:v13];
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

    v6 = v21;
  }
}

@end