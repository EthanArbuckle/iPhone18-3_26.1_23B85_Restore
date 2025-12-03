@interface SDNetworkBrowser
- (SDNetworkBrowser)initWithKind:(id)kind rootNode:(__SFNode *)node;
- (SDNetworkBrowserDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (__SFNode)copyRootNode;
- (id)childrenForNode:(__SFNode *)node;
- (id)sidebarChildren;
- (int)addNode:(__SFNode *)node;
- (int)closeNode:(__SFNode *)node;
- (int)openNode:(__SFNode *)rootNode forProtocol:(id)protocol flags:(unint64_t)flags;
- (int)removeNode:(__SFNode *)node;
- (void)dealloc;
- (void)invalidate;
- (void)setMode:(int64_t)mode;
- (void)setOptions:(id)options;
@end

@implementation SDNetworkBrowser

- (SDNetworkBrowser)initWithKind:(id)kind rootNode:(__SFNode *)node
{
  kindCopy = kind;
  v15.receiver = self;
  v15.super_class = SDNetworkBrowser;
  v8 = [(SDNetworkBrowser *)&v15 init];
  v9 = v8;
  if (v8)
  {
    isEntitled = v8->_isEntitled;
    v8->_isEntitled = 0;

    v9->_mode = 0;
    objc_storeStrong(&v9->_kind, kind);
    connection = v9->_connection;
    v9->_connection = 0;

    v9->_rootNode = CFRetain(node);
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

- (int)openNode:(__SFNode *)rootNode forProtocol:(id)protocol flags:(unint64_t)flags
{
  protocolCopy = protocol;
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

    v10 = [[SDNodeBrowser alloc] initWithNode:rootNode protocol:protocolCopy flags:flags kind:self->_kind];
    CFDictionarySetValue(self->_nodeBrowsers, rootNode, v10);
    helperConnection = [(SDNetworkBrowser *)self helperConnection];
    [(SDNodeBrowser *)v10 setHelperConnection:helperConnection];

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

- (id)childrenForNode:(__SFNode *)node
{
  rootNode = node;
  if (!node)
  {
    rootNode = self->_rootNode;
  }

  v4 = CFDictionaryGetValue(self->_nodeBrowsers, rootNode);
  v5 = v4;
  if (v4)
  {
    nodes = [v4 nodes];
  }

  else
  {
    nodes = &__NSArray0__struct;
  }

  return nodes;
}

- (id)sidebarChildren
{
  v2 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  v3 = v2;
  if (v2)
  {
    sidebarNodes = [v2 sidebarNodes];
  }

  else
  {
    sidebarNodes = &__NSArray0__struct;
  }

  return sidebarNodes;
}

- (void)setMode:(int64_t)mode
{
  self->_mode = mode;
  v4 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  [v4 setMode:mode];
}

- (void)setOptions:(id)options
{
  objc_storeStrong(&self->_options, options);
  optionsCopy = options;
  v6 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  [v6 setOptions:optionsCopy];
}

- (int)addNode:(__SFNode *)node
{
  v4 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 addNode:node];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int)removeNode:(__SFNode *)node
{
  v4 = CFDictionaryGetValue(self->_nodeBrowsers, self->_rootNode);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 removeNode:node];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int)closeNode:(__SFNode *)node
{
  rootNode = node;
  if (!node)
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
  allValues = [(__CFDictionary *)self->_nodeBrowsers allValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setDelegate:0];
        [v8 stop];
      }

      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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