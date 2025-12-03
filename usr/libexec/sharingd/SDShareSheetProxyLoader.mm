@interface SDShareSheetProxyLoader
- (SDShareSheetProxyLoader)initWithProxySection:(id)section;
- (SDShareSheetProxyLoaderDelegate)delegate;
- (id)description;
- (unint64_t)remainingProxiesCount;
- (void)_loadProxies:(id)proxies withTimeLimit:(BOOL)limit;
- (void)loadBatchWithSize:(unint64_t)size;
- (void)loadRemainingProxies;
@end

@implementation SDShareSheetProxyLoader

- (SDShareSheetProxyLoader)initWithProxySection:(id)section
{
  sectionCopy = section;
  v14.receiver = self;
  v14.super_class = SDShareSheetProxyLoader;
  v6 = [(SDShareSheetProxyLoader *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxySection, section);
    proxies = [sectionCopy proxies];
    v9 = [proxies copy];
    allProxies = v7->_allProxies;
    v7->_allProxies = v9;

    v11 = [(NSArray *)v7->_allProxies mutableCopy];
    remainingProxies = v7->_remainingProxies;
    v7->_remainingProxies = v11;

    v7->_loadTimeLimit = 0.25;
    atomic_store(0, &v7->_isCancelled);
  }

  return v7;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDShareSheetProxyLoader;
  v3 = [(SDShareSheetProxyLoader *)&v7 description];
  proxySection = [(SDShareSheetProxyLoader *)self proxySection];
  v5 = [NSString stringWithFormat:@"%@ proxySection:%@", v3, proxySection];

  return v5;
}

- (unint64_t)remainingProxiesCount
{
  remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
  v3 = [remainingProxies count];

  return v3;
}

- (void)loadRemainingProxies
{
  if (![(SDShareSheetProxyLoader *)self isLoading])
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "load remaining proxies for loader:%@", &v6, 0xCu);
    }

    remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
    v5 = [remainingProxies copy];
    [(SDShareSheetProxyLoader *)self _loadProxies:v5 withTimeLimit:1];
  }
}

- (void)loadBatchWithSize:(unint64_t)size
{
  isLoading = [(SDShareSheetProxyLoader *)self isLoading];
  if (size && (isLoading & 1) == 0)
  {
    remainingProxiesCount = [(SDShareSheetProxyLoader *)self remainingProxiesCount];
    if (remainingProxiesCount < size)
    {
      size = remainingProxiesCount;
    }

    if (!remainingProxiesCount)
    {
      sub_100085C54(a2, self);
    }

    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      sizeCopy = size;
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "load proxy batch of size:%lu loader:%@", &v12, 0x16u);
    }

    v9 = [NSIndexSet indexSetWithIndexesInRange:0, size];
    remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
    v11 = [remainingProxies objectsAtIndexes:v9];

    [(SDShareSheetProxyLoader *)self _loadProxies:v11 withTimeLimit:0];
  }
}

- (void)_loadProxies:(id)proxies withTimeLimit:(BOOL)limit
{
  limitCopy = limit;
  proxiesCopy = proxies;
  [(SDShareSheetProxyLoader *)self setIsLoading:1];
  v43 = +[NSMutableArray array];
  v42 = +[NSMutableIndexSet indexSet];
  v41 = +[NSMutableIndexSet indexSet];
  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = share_sheet_log();
  v10 = share_sheet_log();
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LoadingProxies", "", buf, 2u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = proxiesCopy;
  v12 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        isCancelled = [(SDShareSheetProxyLoader *)self isCancelled];
        if (isCancelled)
        {
          v29 = share_sheet_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy2 = self;
            v30 = "loading was cancelled for loader:%@";
            goto LABEL_24;
          }

LABEL_25:
          v28 = isCancelled ^ 1;

          goto LABEL_26;
        }

        load = [(SDShareSheetProxyLoader *)v16 load];
        [v43 addObject:v16];
        allProxies = [(SDShareSheetProxyLoader *)self allProxies];
        v20 = [allProxies indexOfObject:v16];

        v21 = share_sheet_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (load)
        {
          v23 = v42;
          if (v22)
          {
            *buf = 138412290;
            selfCopy2 = v16;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "load proxy succeeded:%@", buf, 0xCu);
            v23 = v42;
          }
        }

        else
        {
          v23 = v41;
          if (v22)
          {
            *buf = 138412290;
            selfCopy2 = v16;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "load proxy failed:%@", buf, 0xCu);
            v23 = v41;
          }
        }

        [v23 addIndex:v20];
        if (limitCopy)
        {
          [(SDShareSheetProxyLoader *)self loadTimeLimit];
          if (v24 > 0.0)
          {
            +[NSDate timeIntervalSinceReferenceDate];
            v26 = v25 - v8;
            [(SDShareSheetProxyLoader *)self loadTimeLimit];
            if (v26 > v27 || v26 < 0.0)
            {
              v29 = share_sheet_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                selfCopy2 = self;
                v30 = "loading time interval reached. Stop loading:%@";
LABEL_24:
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
              }

              goto LABEL_25;
            }
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
  isCancelled = 0;
LABEL_26:

  +[CATransaction flush];
  v31 = share_sheet_log();
  v32 = share_sheet_log();
  v33 = os_signpost_id_make_with_pointer(v32, self);

  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, v33, "LoadingProxies", "", buf, 2u);
  }

  remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
  [remainingProxies removeObjectsInArray:v43];

  [(SDShareSheetProxyLoader *)self setIsLoading:0];
  v35 = [obj count];
  if (v35 == [v43 count])
  {
    v36 = 0;
  }

  else
  {
    if (isCancelled)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    if (((v28 | isCancelled) & 1) == 0)
    {
      sub_100085CC8(a2, self);
      v36 = 2;
    }
  }

  v37 = objc_alloc_init(SDShareSheetProxyLoaderResult);
  [(SDShareSheetProxyLoaderResult *)v37 setState:v36];
  [(SDShareSheetProxyLoaderResult *)v37 setLoadedIndexes:v42];
  [(SDShareSheetProxyLoaderResult *)v37 setFailedIndexes:v41];
  delegate = [(SDShareSheetProxyLoader *)self delegate];
  [delegate proxyLoader:self didLoadProxiesWithResult:v37];
}

- (SDShareSheetProxyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end