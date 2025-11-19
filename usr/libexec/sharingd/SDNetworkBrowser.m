@interface SDNetworkBrowser
- (SDNetworkBrowser)initWithKind:(id)a3 rootNode:(__SFNode *)a4;
- (SDNetworkBrowserDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (__SFNode)copyRootNode;
- (id)childrenForNode:(__SFNode *)a3;
- (id)sidebarChildren;
- (int)addNode:(__SFNode *)a3;
- (int)closeNode:(__SFNode *)a3;
- (int)openNode:(__SFNode *)rootNode forProtocol:(id)a4 flags:(unint64_t)a5;
- (int)removeNode:(__SFNode *)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setMode:(int64_t)a3;
- (void)setOptions:(id)a3;
@end

@implementation SDNetworkBrowser

- (SDNetworkBrowser)initWithKind:(id)a3 rootNode:(__SFNode *)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = SDNetworkBrowser;
  v8 = [(SDNetworkBrowser *)&v15 init];
  v9 = v8;
  if (v8)
  {
    isEntitled = v8->_isEntitled;
    v8->_isEntitled = 0;

    v9->_mode = 0;
    objc_storeStrong(&v9->_kind, a3);
    connection = v9->_connection;
    v9->_connection = 0;

    v9->_rootNode = CFRetain(a4);
    v9->_nodeBrowsers = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = os_transaction_create();
    transaction = v9->_transaction;
    v9->_transaction = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(SDNetworkBrowser *)self invalidate];
  rootNode = self->_rootNode;
  if (rootNode)
  {
    CFRelease(rootNode);
  }

  nodeBrowsers = self->_nodeBrowsers;
  if (nodeBrowsers)
  {
    CFRelease(nodeBrowsers);
  }

  v5.receiver = self;
  v5.super_class = SDNetworkBrowser;
  [(SDNetworkBrowser *)&v5 dealloc];
}

- (int)openNode:(__SFNode *)rootNode forProtocol:(id)a4 flags:(unint64_t)a5
{
  v8 = a4;
  if (!rootNode)
  {
    rootNode = self->_rootNode;
  }

  v9 = CFDictionaryGetValue(self->_nodeBrowsers, rootNode);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    if (!SFNodeIsContainer())
    {
      v10 = 0;
      v12 = -1;
      goto LABEL_8;
    }

    v10 = [[SDNodeBrowser alloc] initWithNode:rootNode protocol:v8 flags:a5 kind:self->_kind];
    CFDictionarySetValue(self->_nodeBrowsers, rootNode, v10);
    v11 = [(SDNetworkBrowser *)self helperConnection];
    [(SDNodeBrowser *)v10 setHelperConnection:v11];

    [(SDNodeBrowser *)v10 setBundleID:self->_bundleID];
    [(SDNodeBrowser *)v10 setConnection:self->_connection];
    [(SDNodeBrowser *)v10 setDelegate:self];
    [(SDNodeBrowser *)v10 setMode:self->_mode];
    [(SDNodeBrowser *)v10 setOptions:self->_options];
    [(SDNodeBrowser *)v10 start];
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (__SFNode)copyRootNode
{
  result = self->_rootNode;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

- (id)childrenForNode:(__SFNode *)a3
{
  rootNode = a3;
  if (!a3)
  {
    rootNode = self->_rootNode;
  }

  v4 = CFDictionaryGetValue(self->_nodeBrowsers, rootNode);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 nodes];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)sidebarChildren
{
  v2 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 sidebarNodes];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)setMode:(int64_t)a3
{
  self->_mode = a3;
  v4 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  [v4 setMode:a3];
}

- (void)setOptions:(id)a3
{
  objc_storeStrong(&self->_options, a3);
  v5 = a3;
  v6 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  [v6 setOptions:v5];
}

- (int)addNode:(__SFNode *)a3
{
  v4 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 addNode:a3];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int)removeNode:(__SFNode *)a3
{
  v4 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 removeNode:a3];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int)closeNode:(__SFNode *)a3
{
  rootNode = a3;
  if (!a3)
  {
    rootNode = self->_rootNode;
  }

  v5 = CFDictionaryGetValue(self->_nodeBrowsers, rootNode);
  v6 = v5;
  if (v5)
  {
    [v5 stop];
    [v6 setDelegate:0];
    CFDictionaryRemoveValue(self->_nodeBrowsers, rootNode);
  }

  return 0;
}

- (void)invalidate
{
  v3 = [(__CFDictionary *)self->_nodeBrowsers allValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setDelegate:0];
        [v8 stop];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  CFDictionaryRemoveAllValues(self->_nodeBrowsers);
}

- (SDXPCHelperConnection)helperConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_helperConnection);

  return WeakRetained;
}

- (SDNetworkBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end