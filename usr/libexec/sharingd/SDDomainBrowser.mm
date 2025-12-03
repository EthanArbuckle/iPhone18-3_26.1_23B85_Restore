@interface SDDomainBrowser
+ (id)sharedBrowser;
- (SDDomainBrowser)init;
- (id)childrenForNode:(__SFNode *)node;
- (id)displayNameForDomain:(id)domain;
- (void)browseAfterDelay:(double)delay;
- (void)buildNodes;
- (void)netServiceBrowser:(id)browser didFindDomain:(id)domain moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didNotSearch:(id)search;
- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming;
- (void)parseDomain:(id)domain;
- (void)postNotification;
- (void)restart;
- (void)scheduleBrowser;
- (void)start;
- (void)stop;
@end

@implementation SDDomainBrowser

+ (id)sharedBrowser
{
  if (qword_10098A228 != -1)
  {
    sub_1001F84E0();
  }

  v3 = qword_10098A230;

  return v3;
}

- (SDDomainBrowser)init
{
  v9.receiver = self;
  v9.super_class = SDDomainBrowser;
  v2 = [(SDDomainBrowser *)&v9 init];
  v3 = v2;
  if (v2)
  {
    timer = v2->_timer;
    v2->_timer = 0;

    v3->_clientCount = 0;
    domainBrowser = v3->_domainBrowser;
    v3->_domainBrowser = 0;

    v3->_sendNotification = 0;
    v6 = objc_opt_new();
    domains = v3->_domains;
    v3->_domains = v6;

    v3->_domainTree = CFDictionaryCreateMutable(0, 0, &unk_1008D3F08, &kCFTypeDictionaryValueCallBacks);
  }

  return v3;
}

- (void)browseAfterDelay:(double)delay
{
  timer = self->_timer;
  v4 = sub_1001F0530(delay);

  sub_1001F05F0(timer, v4);
}

- (void)scheduleBrowser
{
  v3 = objc_alloc_init(NSNetServiceBrowser);
  domainBrowser = self->_domainBrowser;
  self->_domainBrowser = v3;

  [(NSNetServiceBrowser *)self->_domainBrowser searchForBrowsableDomains];
  v5 = self->_domainBrowser;

  [(NSNetServiceBrowser *)v5 setDelegate:self];
}

- (void)restart
{
  if (self->_clientCount >= 1)
  {
    [(NSMutableSet *)self->_domains removeAllObjects];
    domainBrowser = self->_domainBrowser;
    if (domainBrowser)
    {
      [(NSNetServiceBrowser *)domainBrowser stop];
    }

    CFDictionaryRemoveAllValues(self->_domainTree);

    [(SDDomainBrowser *)self scheduleBrowser];
  }
}

- (id)childrenForNode:(__SFNode *)node
{
  if (SFNodeIsRoot())
  {
    Value = CFDictionaryGetValue(self->_domainTree, &stru_1008EFBD0);
  }

  else
  {
    v5 = SFNodeCopyKinds();
    if (CFSetContainsValue(v5, kSFNodeKindDomain))
    {
      v6 = SFNodeCopyRealName();
      Value = CFDictionaryGetValue(self->_domainTree, v6);
      CFRelease(v6);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v5);
  }

  return [Value allValues];
}

- (id)displayNameForDomain:(id)domain
{
  domainCopy = domain;
  v4 = [(__CFString *)domainCopy length:0];
  v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  if (CFStringGetCString(domainCopy, v5, v4 + 1, 0x8000100u))
  {
    Mutable = CFStringCreateMutable(0, 0);
    if (v5 && *v5)
    {
      v7 = v5;
      do
      {
        v7 = sub_1001F7A94(v7, &v11);
        v8 = CFStringCreateWithCString(0, &v11, 0x8000100u);
        if (v8)
        {
          v9 = v8;
          CFStringAppend(Mutable, v8);
          CFRelease(v9);
        }

        if (!v7)
        {
          break;
        }

        if (*v7)
        {
          CFStringAppend(Mutable, @".");
        }
      }

      while (*v7);
    }
  }

  else
  {
    Mutable = 0;
  }

  free(v5);

  return Mutable;
}

- (void)parseDomain:(id)domain
{
  domainCopy = domain;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  if (domainCopy)
  {
    bzero(v25, 0x400uLL);
    v5 = [(__CFString *)domainCopy length];
    v6 = malloc_type_malloc((v5 + 1), 0x100004077774924uLL);
    CFStringGetCString(domainCopy, v6, (v5 + 1), 0x8000100u);
    v7 = 0;
    v5[v6 - 1] = 0;
    v8 = v6;
    while (*v8)
    {
      v9 = v7 + 1;
      v25[v7] = v8;
      v8 = sub_1001F7A94(v8, cStr);
      v7 = v9;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    LODWORD(v9) = v7;
LABEL_7:
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v24 = kSFNodeKindDomain;
      v12 = (v9 & 0x7FFFFFFF) + 1;
      v13 = &v25[(v9 & 0x7FFFFFFF) - 1];
      do
      {
        if (v11)
        {
          CFRelease(v11);
        }

        v14 = *v13;
        v11 = CFStringCreateWithCString(0, *v13, 0x8000100u);
        if (v10)
        {
          v15 = sub_1001F7A94(v14, cStr);
          v16 = CFStringCreateWithCString(0, cStr, 0x8000100u);
          v17 = CFStringCreateWithCString(0, v15, 0x8000100u);
          Value = CFDictionaryGetValue(self->_domainTree, v17);
          if (!Value)
          {
            Value = CFDictionaryCreateMutable(0, 0, &unk_1008D3F08, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(self->_domainTree, v17, Value);
            CFRelease(Value);
          }

          if (!CFDictionaryGetValue(Value, v16))
          {
            v19 = SFNodeCreate();
            SFNodeAddDomain();
            SFNodeAddKind();
            SFNodeSetDomain();
            CFDictionarySetValue(Value, v16, v19);
            CFRelease(v19);
          }

          CFRelease(v16);
          CFRelease(v17);
          v10 = 1;
        }

        else
        {
          v20 = CFDictionaryGetValue(self->_domainTree, &stru_1008EFBD0);
          if (v20)
          {
            v10 = CFDictionaryGetValue(v20, v11) != 0;
          }

          else
          {
            v10 = 0;
          }
        }

        --v12;
        --v13;
      }

      while (v12 > 1);
      if (v11)
      {
        if (!v10)
        {
          Mutable = CFDictionaryGetValue(self->_domainTree, &stru_1008EFBD0);
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &unk_1008D3F08, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(self->_domainTree, &stru_1008EFBD0, Mutable);
            CFRelease(Mutable);
          }

          v22 = [(SDDomainBrowser *)self displayNameForDomain:v11, v6, v24];
          v23 = SFNodeCreate();
          SFNodeAddDomain();
          SFNodeAddKind();
          CFDictionarySetValue(Mutable, v11, v23);
          CFRelease(v23);
        }

        CFRelease(v11);
      }
    }

    free(v6);
  }
}

- (void)buildNodes
{
  CFDictionaryRemoveAllValues(self->_domainTree);
  allObjects = [(NSMutableSet *)self->_domains allObjects];

  if (allObjects)
  {
    Count = CFArrayGetCount(allObjects);
    MutableCopy = CFArrayCreateMutableCopy(0, Count, allObjects);
    v8.location = 0;
    v8.length = Count;
    CFArraySortValues(MutableCopy, v8, sub_1001F7FC8, self);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        [(SDDomainBrowser *)self parseDomain:CFArrayGetValueAtIndex(MutableCopy, i)];
      }
    }

    CFRelease(MutableCopy);
  }
}

- (void)postNotification
{
  if (self->_clientCount >= 1)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"com.apple.sharingd.DomainsChanged" object:0 userInfo:0];
  }
}

- (void)netServiceBrowser:(id)browser didFindDomain:(id)domain moreComing:(BOOL)coming
{
  domainCopy = domain;
  lowercaseString = [domainCopy lowercaseString];
  v8 = lowercaseString;
  if (lowercaseString && ([lowercaseString isEqualToString:@"local."] & 1) == 0)
  {
    [(NSMutableSet *)self->_domains addObject:domainCopy];
  }

  if (!coming)
  {
    [(SDDomainBrowser *)self buildNodes];
    [(SDDomainBrowser *)self postNotification];
  }
}

- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming
{
  [(NSMutableSet *)self->_domains removeObject:domain];
  if (!coming)
  {
    [(SDDomainBrowser *)self buildNodes];

    [(SDDomainBrowser *)self postNotification];
  }
}

- (void)netServiceBrowser:(id)browser didNotSearch:(id)search
{
  searchCopy = search;
  v5 = browser_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001F84F4(searchCopy, v5);
  }
}

- (void)start
{
  clientCount = self->_clientCount;
  self->_clientCount = clientCount + 1;
  if (!clientCount)
  {
    v9[7] = v2;
    v9[8] = v3;
    [(SDDomainBrowser *)self scheduleBrowser];
    if (!self->_timer)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001F82E8;
      v9[3] = &unk_1008CDEA0;
      v9[4] = self;
      v6 = sub_1001F0548(1, &_dispatch_main_q, v9);
      timer = self->_timer;
      self->_timer = v6;

      dispatch_resume(self->_timer);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"statusChanged:" name:@"com.apple.sharingd.MulticastDNSChanged" object:0];
  }
}

- (void)stop
{
  v3 = self->_clientCount - 1;
  self->_clientCount = v3;
  if (!v3)
  {
    domainBrowser = self->_domainBrowser;
    if (domainBrowser)
    {
      [(NSNetServiceBrowser *)domainBrowser setDelegate:0];
      [(NSNetServiceBrowser *)self->_domainBrowser stop];
      v6 = self->_domainBrowser;
      self->_domainBrowser = 0;
    }

    [(NSMutableSet *)self->_domains removeAllObjects];
    CFDictionaryRemoveAllValues(self->_domainTree);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self];
  }
}

@end