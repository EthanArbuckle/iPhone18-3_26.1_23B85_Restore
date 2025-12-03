@interface NRBabelInstance
- (BOOL)purgeAllRoutesFromNeighbor:(id)neighbor;
- (BOOL)purgeInterface:(id)interface;
- (NRBabelInstance)init;
- (id)copyNeighborWithAddr:(const in6_addr *)addr babelInterface:(id)interface isNewNeighbor:(BOOL *)neighbor;
- (id)copyPendingOutgoingSeqnoReqWithPrefix:(id)prefix routerID:(unint64_t)d isNewPOSR:(BOOL *)r;
- (id)copyRouteString;
- (id)copyRouteWithPrefix:(id)prefix neighbor:(id)neighbor;
- (id)copySourceWithPrefix:(id)prefix routerID:(unint64_t)d;
- (id)createSelectedRoutesArrayForPrefix:(id)prefix;
- (id)description;
- (void)addRouterID:(unint64_t)d toTLVs:(id)vs;
- (void)addUpdateForRoute:(id)route interval:(unsigned __int16)interval toTLVs:(id)vs;
- (void)dealloc;
- (void)handleIfBringupPathUpdate:(id)update;
- (void)sendImmediateRouteUpdateToNeighbor:(id)neighbor;
- (void)setupAddress:(in6_addr *)address;
- (void)setupInterfaces;
- (void)updateFeasabilityDistanceForRoute:(id)route;
- (void)updateRoutes;
@end

@implementation NRBabelInstance

- (id)copyRouteString
{
  [(NRBabelInstance *)self setupInterfaces];
  [(NRBabelInstance *)self updateRoutes];
  v3 = [[NSMutableString alloc] initWithFormat:@"%@\nInterfaces\n", self];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  interfaces = [(NRBabelInstance *)self interfaces];
  v5 = [interfaces countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(interfaces);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v28 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [interfaces countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"Neighbors\n"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  neighbors = [(NRBabelInstance *)self neighbors];
  v10 = [neighbors countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(neighbors);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v24 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [neighbors countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v11);
  }

  [v3 appendFormat:@"Routes\n"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  routes = [(NRBabelInstance *)self routes];
  v15 = [routes countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(routes);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v20 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [routes countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  routerID = self->_routerID;
  v5 = bswap64(routerID);
  if (v5 > 0xFFFE)
  {
    v7 = [NSString alloc];
    v8 = bswap32(routerID);
    v6 = [v7 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v8), v8, bswap32(HIDWORD(routerID)) >> 16, __rev16(HIWORD(routerID))];
  }

  else
  {
    v6 = [[NSString alloc] initWithFormat:@"<%llx>", v5, v12, v13, v14];
  }

  v9 = v6;
  v10 = [v3 initWithFormat:@"NRBabelInstance %@", v6];

  return v10;
}

- (void)sendImmediateRouteUpdateToNeighbor:(id)neighbor
{
  neighborCopy = neighbor;
  v5 = neighborCopy;
  if (neighborCopy)
  {
    v23 = neighborCopy;
    v6 = [NSArray arrayWithObjects:&v23 count:1];
  }

  else
  {
    v6 = self->_neighbors;
  }

  v7 = v6;
  createUpdateTLVs = [(NRBabelInstance *)self createUpdateTLVs];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = objc_alloc_init(NSMutableArray);
        createIHUTLV = [v14 createIHUTLV];
        [v15 addObject:createIHUTLV];

        createPersonalHelloTLV = [v14 createPersonalHelloTLV];
        [v15 addObject:createPersonalHelloTLV];

        [v15 addObjectsFromArray:createUpdateTLVs];
        [v14 sendTLVs:v15];
        [v14 enqueueNextUpdate];
        [v14 enqueueNextIHU];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)updateFeasabilityDistanceForRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy metric] != 0xFFFF)
  {
    bPrefix = [routeCopy bPrefix];
    v5 = -[NRBabelInstance copySourceWithPrefix:routerID:](self, "copySourceWithPrefix:routerID:", bPrefix, [routeCopy routerID]);

    if (v5)
    {
      -[NRBabelSource updateFeasabilityDistanceWithSeqno:metric:](v5, "updateFeasabilityDistanceWithSeqno:metric:", [routeCopy seqno], objc_msgSend(routeCopy, "metric"));
    }

    else
    {
      v6 = [NRBabelSource alloc];
      bPrefix2 = [routeCopy bPrefix];
      routerID = [routeCopy routerID];
      seqno = [routeCopy seqno];
      receivedMetric = [routeCopy receivedMetric];
      instance = [routeCopy instance];
      v5 = [(NRBabelSource *)v6 initWithPrefix:bPrefix2 routerID:routerID seqno:seqno metric:receivedMetric instance:instance];
    }

    [(NRBabelSource *)v5 resetGCTimer];
  }
}

- (id)createSelectedRoutesArrayForPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (![prefixCopy plen])
  {

    prefixCopy = 0;
  }

  v4 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_routes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 selected])
        {
          if ([v10 metric] == 0xFFFF)
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              selfCopy = self;
              v15 = v10;
              _NRLogWithArgs();
            }
          }

          else if (!prefixCopy || ([v10 bPrefix], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(prefixCopy, "isEqual:", v11), v11, v12))
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)addUpdateForRoute:(id)route interval:(unsigned __int16)interval toTLVs:(id)vs
{
  intervalCopy = interval;
  routeCopy = route;
  vsCopy = vs;
  v18 = 0uLL;
  bPrefix = [routeCopy bPrefix];
  [bPrefix writePrefix:&v18];

  if (v18 || *(&v18 + 4) != 0xFFFF000000000000)
  {
    LODWORD(v17) = 0;
    v13 = 8;
    HIWORD(v13) = __rev16(intervalCopy);
    v14 = __rev16([routeCopy seqno]);
    v15 = __rev16([routeCopy metric]);
    bPrefix2 = [routeCopy bPrefix];
    v11 = [bPrefix2 writeToAE:&v13 + 2 plen:&v13 + 4 prefix:&v16];

    BYTE1(v13) = v11 + 10;
    v12 = [[NSData alloc] initWithBytes:&v13 length:(v11 + 10) + 2];
    [vsCopy addObject:v12];
  }
}

- (void)addRouterID:(unint64_t)d toTLVs:(id)vs
{
  v6 = 2566;
  dCopy = d;
  vsCopy = vs;
  v5 = [[NSData alloc] initWithBytes:&v6 length:12];
  [vsCopy addObject:v5];
}

- (void)updateRoutes
{
  v3 = objc_alloc_init(NSMutableArray);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  selfCopy = self;
  v4 = self->_routes;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v84;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v84 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v83 + 1) + 8 * i);
        bPrefix = [v9 bPrefix];
        v11 = [v3 containsObject:bPrefix];

        if ((v11 & 1) == 0)
        {
          bPrefix2 = [v9 bPrefix];
          [v3 addObject:bPrefix2];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v6);
  }

  v62 = objc_alloc_init(NSMutableArray);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v3;
  v58 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v58)
  {
    v57 = *v80;
    do
    {
      for (j = 0; j != v58; j = j + 1)
      {
        if (*v80 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v79 + 1) + 8 * j);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v16 = selfCopy->_routes;
        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v75 objects:v90 count:16];
        if (v17)
        {
          v18 = v17;
          v59 = j;
          v14 = 0;
          v19 = *v76;
          metric = -1;
          do
          {
            for (k = 0; k != v18; k = k + 1)
            {
              if (*v76 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v75 + 1) + 8 * k);
              bPrefix3 = [v22 bPrefix];
              v24 = [v15 isContainedInPrefix:bPrefix3];

              if (v24 && [v22 metric] < metric)
              {
                v25 = v22;

                metric = [v25 metric];
                v14 = v25;
              }
            }

            v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v75 objects:v90 count:16];
          }

          while (v18);

          if (v14)
          {
            j = v59;
            if (([v62 containsObject:v14] & 1) == 0)
            {
              [v62 addObject:v14];
            }
          }

          else
          {
            j = v59;
          }
        }

        else
        {

          v14 = 0;
        }
      }

      v58 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v58);
  }

  v60 = objc_alloc_init(NSMutableArray);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v26 = selfCopy->_routes;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v71 objects:v89 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v72;
    do
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v72 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v71 + 1) + 8 * m);
        selected = [v32 selected];
        v34 = [v62 containsObject:v32];
        if (selected != v34)
        {
          v35 = v34;
          [v32 setSelected:v34];
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            v36 = "un";
            if (v35)
            {
              v36 = "";
            }

            v54 = v36;
            v55 = v32;
            v52 = 3256;
            v53 = selfCopy;
            v50 = "";
            v51 = "[NRBabelInstance updateRoutes]";
            _NRLogWithArgs();
          }

          if (v35)
          {
            [v60 addObject:v32];
          }

          v29 = 1;
        }
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v71 objects:v89 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v37 = selfCopy->_routes;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v67 objects:v88 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v68;
    do
    {
      for (n = 0; n != v39; n = n + 1)
      {
        if (*v68 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v67 + 1) + 8 * n);
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v52 = 3278;
          v53 = v42;
          v50 = "";
          v51 = "[NRBabelInstance updateRoutes]";
          _NRLogWithArgs();
        }

        [(NRBabelInstance *)v42 applyUsingSystem:v50];
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v67 objects:v88 count:16];
    }

    while (v39);
  }

  if (v29)
  {
    v43 = [[NSArray alloc] initWithArray:selfCopy->_posrs];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v63 objects:v87 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v64;
      do
      {
        for (ii = 0; ii != v46; ii = ii + 1)
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v63 + 1) + 8 * ii) cancelIfRouteUnselected];
        }

        v46 = [v44 countByEnumeratingWithState:&v63 objects:v87 count:16];
      }

      while (v46);
    }

    [(NRBabelInstance *)selfCopy sendImmediateRouteUpdateToAllNeighbors];
    v49 = v62;
  }

  else
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v49 = v62;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }
  }
}

- (BOOL)purgeInterface:(id)interface
{
  interfaceCopy = interface;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_neighbors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        babelInterface = [v11 babelInterface];
        v13 = [babelInterface isEqual:interfaceCopy];

        if (v13)
        {
          v8 |= [(NRBabelInstance *)self purgeAllRoutesFromNeighbor:v11];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (BOOL)purgeAllRoutesFromNeighbor:(id)neighbor
{
  neighborCopy = neighbor;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_routes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        neighbor = [v11 neighbor];
        if ([neighbor isEqual:neighborCopy])
        {
          receivedMetric = [v11 receivedMetric];

          if (receivedMetric != 0xFFFF)
          {
            [v11 setReceivedMetric:0xFFFFLL];
            v8 = 1;
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)copyPendingOutgoingSeqnoReqWithPrefix:(id)prefix routerID:(unint64_t)d isNewPOSR:(BOOL *)r
{
  prefixCopy = prefix;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_posrs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 matchesPrefix:prefixCopy routerID:{d, v16}])
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (r)
  {
    *r = v10 == 0;
  }

  if (!v10)
  {
    v14 = [[NRPendingOutgoingSeqnoReq alloc] initWithInstance:self prefix:prefixCopy routerID:d];
    if (v14)
    {
      v10 = v14;
      [(NSMutableArray *)self->_posrs addObject:v14];
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs();
      }

      v10 = 0;
    }
  }

  return v10;
}

- (id)copyRouteWithPrefix:(id)prefix neighbor:(id)neighbor
{
  prefixCopy = prefix;
  neighborCopy = neighbor;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_routes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 matchesPrefix:prefixCopy neighbor:{neighborCopy, v14}])
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)copySourceWithPrefix:(id)prefix routerID:(unint64_t)d
{
  prefixCopy = prefix;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_sources;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 matchesPrefix:prefixCopy routerID:{d, v15}])
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)copyNeighborWithAddr:(const in6_addr *)addr babelInterface:(id)interface isNewNeighbor:(BOOL *)neighbor
{
  interfaceCopy = interface;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_neighbors;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 matchesAddress:addr babelInterface:{interfaceCopy, v16}])
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (neighbor)
  {
    *neighbor = v10 == 0;
  }

  if (!v10)
  {
    v14 = [[NRBabelNeighbor alloc] initWithAddress:addr babelInterface:interfaceCopy];
    if (v14)
    {
      v10 = v14;
      [(NSMutableArray *)self->_neighbors addObject:v14];
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs();
      }

      v10 = 0;
    }
  }

  return v10;
}

- (NRBabelInstance)init
{
  v38.receiver = self;
  v38.super_class = NRBabelInstance;
  v2 = [(NRBabelInstance *)&v38 init];
  if (!v2)
  {
    v26 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v5 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = *__error();
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "[NRBabelInstance init]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
LABEL_13:
    v31 = sub_1000CB9A8();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v33 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v34 = *__error();
    v35 = _os_log_pack_fill();
    *v35 = 136446466;
    *(v35 + 4) = "nr_dispatch_queue_create";
    *(v35 + 12) = 2080;
    *(v35 + 14) = v5;
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = _NRCopySerialQueueAttr();
  v5 = "terminusd.babel";
  v6 = dispatch_queue_create("terminusd.babel", v4);

  if (!v6)
  {
    goto LABEL_13;
  }

  queue = v3->_queue;
  v3->_queue = v6;

  v8 = objc_alloc_init(NSMutableArray);
  interfaces = v3->_interfaces;
  v3->_interfaces = v8;

  v10 = objc_alloc_init(NSMutableArray);
  neighbors = v3->_neighbors;
  v3->_neighbors = v10;

  v12 = objc_alloc_init(NSMutableArray);
  sources = v3->_sources;
  v3->_sources = v12;

  v14 = objc_alloc_init(NSMutableArray);
  routes = v3->_routes;
  v3->_routes = v14;

  v16 = objc_alloc_init(NSMutableArray);
  posrs = v3->_posrs;
  v3->_posrs = v16;

  v18 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/tmp/terminus_babel_data.plist"];
  if (!v18)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
  }

  v19 = [v18 objectForKeyedSubscript:@"routerID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v20 = [v19 unsignedLongLongValue]) == 0)
  {
    do
    {
      v21 = arc4random();
      v20 = (arc4random() | (v21 << 32));
    }

    while (v20 + 1 < 2);
    v22 = [NSNumber numberWithUnsignedLongLong:v20];
    [v18 setObject:v22 forKeyedSubscript:@"routerID"];

    sub_10013A364(@"/tmp/terminus_babel_data.plist", v18, 1);
  }

  v3->_routerID = v20;
  v3->_nodeSeqno = arc4random_uniform(0x10000u);
  v23 = v3->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA668;
  block[3] = &unk_1001FD3C8;
  v24 = v3;
  v37 = v24;
  dispatch_async(v23, block);

  return v24;
}

- (void)dealloc
{
  if (self->_nevi)
  {
    NEVirtualInterfaceInvalidate();
  }

  v3.receiver = self;
  v3.super_class = NRBabelInstance;
  [(NRBabelInstance *)&v3 dealloc];
}

- (void)setupAddress:(in6_addr *)address
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v4 = qword_1002290F8;
    routerID = self->_routerID;
    v6 = bswap64(routerID);
    v7 = qword_1002290F8;
    if (v6 > 0xFFFE)
    {
      v9 = [NSString alloc];
      v10 = bswap32(routerID);
      v8 = [v9 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v10), v10, bswap32(HIDWORD(routerID)) >> 16, __rev16(HIWORD(routerID))];
    }

    else
    {
      v8 = [[NSString alloc] initWithFormat:@"<%llx>", v6, v14, v15, v16];
    }

    v11 = v8;
    _NRLogWithArgs();
  }

  system("netstat -rnf inet6 | grep -v Routing | grep -v Destination | grep -v Internet6 | grep -v -e '^$' | while read -r route ; do addr=$(echo $route | awk '{print $1}') ; flags=$(echo $route | awk '{print $3}') ; [[ $flags == *2* ]] && route -nv delete -inet6 ${addr}; done");
  IPv6AddrString = createIPv6AddrString();
  addrStr = self->_addrStr;
  self->_addrStr = IPv6AddrString;

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v17 = self->_addrStr;
    _NRLogWithArgs();
  }
}

- (void)setupInterfaces
{
  for (i = 0; i != 10; ++i)
  {
    *(&__str + 7) = 0;
    *&__str = 0;
    snprintf(&__str, 0xBuLL, "ipsec%u", i);
    v5 = if_nametoindex(&__str);
    if (v5)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v4 = self->_interfaces;
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v6)
      {
        v7 = *v49;
LABEL_9:
        v8 = 0;
        while (1)
        {
          if (*v49 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v48 + 1) + 8 * v8);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 ifIndex] == v5)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v48 objects:v54 count:16];
            if (v6)
            {
              goto LABEL_9;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:

        v4 = [[NRBabelInterfaceSocket alloc] initWithInstance:self interface:v5];
        if (v4)
        {
          [(NSMutableArray *)self->_interfaces addObject:v4];
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            interfaces = self->_interfaces;
            _NRLogWithArgs();
          }
        }

        else
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            v40 = self->_interfaces;
            _NRLogWithArgs();
          }

          v4 = 0;
        }
      }
    }
  }

  v10 = nw_parameters_create();
  __str = 0uLL;
  v41 = xpc_uuid_create(&__str);
  if (!v41)
  {
    v26 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v29 = *__error();
    v30 = _os_log_pack_fill();
    *v30 = 136446466;
    *(v30 + 4) = "nr_xpc_uuid_create";
    *(v30 + 12) = 2048;
    *(v30 + 14) = &__str;
    sub_1000CB9A8();
    _NRLogAbortWithPack();
LABEL_51:
    __break(1u);
  }

  v11 = xpc_array_create(0, 0);
  v12 = v11;
  if (!v11)
  {
    v31 = sub_1000CB9A8();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v33 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    goto LABEL_50;
  }

  xpc_array_append_value(v11, v41);
  nw_parameters_set_preferred_netagent_uuids();
  v13 = xpc_uint64_create(2uLL);
  v14 = xpc_array_create(0, 0);
  v15 = v14;
  if (!v14)
  {
    v34 = sub_1000CB9A8();
    v35 = _NRLogIsLevelEnabled();

    if (v35)
    {
      v36 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

LABEL_50:
    _os_log_pack_size();
    __chkstk_darwin();
    v37 = *__error();
    v38 = _os_log_pack_fill();
    sub_10006BF98(v38, "nr_xpc_array_create");
    sub_1000CB9A8();
    _NRLogAbortWithPack();
    goto LABEL_51;
  }

  xpc_array_append_value(v14, v13);
  nw_parameters_set_prohibited_interface_types();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = self->_interfaces;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v17)
  {
    v18 = *v45;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v44 + 1) + 8 * j) addToProhibited:v10];
      }

      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v17);
  }

  if (self->_ifBringupPathEvaluator)
  {
    nw_path_evaluator_cancel();
  }

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  ifBringupPathEvaluator = self->_ifBringupPathEvaluator;
  self->_ifBringupPathEvaluator = evaluator_for_endpoint;

  v22 = self->_ifBringupPathEvaluator;
  v23 = nw_path_evaluator_copy_path();
  [(NRBabelInstance *)self handleIfBringupPathUpdate:v23];

  objc_initWeak(&v43, self);
  v24 = self->_ifBringupPathEvaluator;
  queue = self->_queue;
  objc_copyWeak(&v42, &v43);
  nw_path_evaluator_set_update_handler();
  [(NRBabelInstance *)self updateRoutes];
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v43);
}

- (void)handleIfBringupPathUpdate:(id)update
{
  path = update;
  if (nw_path_get_status(path) == nw_path_status_satisfied)
  {
    interface_index = nw_path_get_interface_index();
    v5 = [[NRBabelInterfaceSocket alloc] initWithInstance:self interface:interface_index];
    if (v5)
    {
      [(NSMutableArray *)self->_interfaces addObject:v5];
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_22;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v9 = interface_index;
      interfaces = self->_interfaces;
      v8 = 2565;
      v6 = "";
      v7 = "[NRBabelInstance handleIfBringupPathUpdate:]";
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_22;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v6 = interface_index;
      v7 = self->_interfaces;
    }

    _NRLogWithArgs();
LABEL_22:
    [(NRBabelInstance *)self setupInterfaces:v6];
LABEL_23:

    goto LABEL_24;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v5 = qword_1002290F8;
    nw_path_get_status(path);
    _NRLogWithArgs();
    goto LABEL_23;
  }

LABEL_24:
}

@end