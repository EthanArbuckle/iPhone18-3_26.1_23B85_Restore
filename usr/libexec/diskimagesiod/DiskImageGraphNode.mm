@interface DiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
+ (id)GraphNodeWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (DiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (DiskImageGraphNode)initWithTag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache;
- (DiskImageGraphNode)parent;
- (NSArray)children;
- (id)getDescendants;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)addDecendantsToArray:(id)array;
- (void)setMetadata:(id)metadata;
- (void)setParent:(id)parent;
- (void)setTag:(id)tag;
- (void)setUUID:(id)d;
@end

@implementation DiskImageGraphNode

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  v4 = [(DiskImageGraphNode *)self URL];
  v5 = [(DIShadowNode *)v3 initWithURL:v4 isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy validateAndPopObjectForKey:@"Tag" className:objc_opt_class() isOptional:0 error:error] && objc_msgSend(dictionaryCopy, "validateAndPopObjectForKey:className:isOptional:error:", @"UUID", objc_opt_class(), 0, error) && objc_msgSend(dictionaryCopy, "validateAndPopObjectForKey:className:isOptional:error:", @"ParentUUID", objc_opt_class(), 1, error) && objc_msgSend(dictionaryCopy, "validateAndPopObjectForKey:className:isOptional:error:", @"Metadata", objc_opt_class(), 1, error))
  {
    v6 = [dictionaryCopy validateAndPopObjectForKey:@"IsCache" className:objc_opt_class() isOptional:0 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = DiskImageGraphNode;
  v8 = [(DiskImageGraphNode *)&v27 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:@"Tag"];
    tag = v8->_tag;
    v8->_tag = v9;

    v11 = [NSUUID alloc];
    v12 = [dictionaryCopy objectForKey:@"UUID"];
    v13 = [v11 initWithUUIDString:v12];
    UUID = v8->_UUID;
    v8->_UUID = v13;

    v15 = [dictionaryCopy objectForKey:@"IsCache"];
    v8->_isCache = [v15 BOOLValue];

    objc_storeStrong(&v8->_pstackDict, dictionary);
    v16 = [dictionaryCopy objectForKey:@"ParentUUID"];

    if (v16)
    {
      v17 = [NSUUID alloc];
      v18 = [dictionaryCopy objectForKey:@"ParentUUID"];
      v19 = [v17 initWithUUIDString:v18];
      parentUUID = v8->_parentUUID;
      v8->_parentUUID = v19;
    }

    v21 = [dictionaryCopy objectForKey:@"Metadata"];

    if (v21)
    {
      v22 = [dictionaryCopy objectForKey:@"Metadata"];
      metadata = v8->_metadata;
      v8->_metadata = v22;
    }

    v24 = objc_alloc_init(NSMutableArray);
    mutableChildren = v8->_mutableChildren;
    v8->_mutableChildren = v24;
  }

  return v8;
}

+ (id)GraphNodeWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dirCopy = dir;
  dictionaryCopy = dictionary;
  v9 = [dictionaryCopy objectForKeyedSubscript:@"PluginName"];

  v10 = off_1001F50D8;
  if (v9)
  {
    v10 = off_1001F50E0;
  }

  v11 = [objc_alloc(*v10) initWithDictionary:dictionaryCopy workDir:dirCopy error:error];

  return v11;
}

- (DiskImageGraphNode)initWithTag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache
{
  tagCopy = tag;
  dCopy = d;
  nodeCopy = node;
  metadataCopy = metadata;
  v24.receiver = self;
  v24.super_class = DiskImageGraphNode;
  v16 = [(DiskImageGraphNode *)&v24 init];
  v17 = v16;
  if (v16)
  {
    if (tagCopy)
    {
      v18 = tagCopy;
    }

    else
    {
      v18 = &stru_100226D78;
    }

    objc_storeStrong(&v16->_tag, v18);
    objc_storeStrong(&v17->_UUID, d);
    objc_storeWeak(&v17->_parent, nodeCopy);
    uUID = [nodeCopy UUID];
    parentUUID = v17->_parentUUID;
    v17->_parentUUID = uUID;

    objc_storeStrong(&v17->_metadata, metadata);
    v17->_isCache = cache;
    v21 = objc_alloc_init(NSMutableArray);
    mutableChildren = v17->_mutableChildren;
    v17->_mutableChildren = v21;
  }

  return v17;
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  objc_storeStrong(&self->_tag, tag);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    [pstackDict2 setObject:tagCopy forKey:@"Tag"];
  }
}

- (void)setUUID:(id)d
{
  dCopy = d;
  objc_storeStrong(&self->_UUID, d);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    uUIDString = [dCopy UUIDString];
    [pstackDict2 setObject:uUIDString forKey:@"UUID"];
  }
}

- (DiskImageGraphNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  objc_storeWeak(&self->_parent, parentCopy);
  uUID = [parentCopy UUID];
  parentUUID = self->_parentUUID;
  self->_parentUUID = uUID;

  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    uUID2 = [parentCopy UUID];
    uUIDString = [uUID2 UUIDString];
    [pstackDict2 setObject:uUIDString forKey:@"ParentUUID"];
  }
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_storeStrong(&self->_metadata, metadata);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    [pstackDict2 setObject:metadataCopy forKey:@"Metadata"];
  }
}

- (id)getDescendants
{
  mutableChildren = [(DiskImageGraphNode *)self mutableChildren];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [mutableChildren count]);

  [(DiskImageGraphNode *)self addDecendantsToArray:v4];

  return v4;
}

- (void)addDecendantsToArray:(id)array
{
  arrayCopy = array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mutableChildren = [(DiskImageGraphNode *)self mutableChildren];
  v6 = [mutableChildren countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(mutableChildren);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [arrayCopy addObject:v10];
        [v10 addDecendantsToArray:arrayCopy];
      }

      v7 = [mutableChildren countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)toDictionary
{
  v3 = [NSMutableDictionary alloc];
  v4 = [(DiskImageGraphNode *)self tag];
  uUID = [(DiskImageGraphNode *)self UUID];
  uUIDString = [uUID UUIDString];
  v7 = [NSNumber numberWithBool:[(DiskImageGraphNode *)self isCache]];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"Tag", uUIDString, @"UUID", v7, @"IsCache", 0}];

  parentUUID = [(DiskImageGraphNode *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(DiskImageGraphNode *)self parentUUID];
    uUIDString2 = [parentUUID2 UUIDString];
    [v8 setObject:uUIDString2 forKey:@"ParentUUID"];
  }

  metadata = [(DiskImageGraphNode *)self metadata];

  if (metadata)
  {
    metadata2 = [(DiskImageGraphNode *)self metadata];
    [v8 setObject:metadata2 forKey:@"Metadata"];
  }

  return v8;
}

- (NSArray)children
{
  mutableChildren = [(DiskImageGraphNode *)self mutableChildren];
  v3 = [mutableChildren copy];

  return v3;
}

@end