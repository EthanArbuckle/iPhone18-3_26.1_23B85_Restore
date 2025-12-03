@interface SDAirDropActivity
- (CGSize)_thumbnailSize;
- (SDAirDropActivity)init;
- (void)dealloc;
- (void)prepareWithActivityItemData:(id)data;
- (void)startAccessingSecurityScopedResourcesInContext:(id)context;
- (void)stopAccessingSecurityScopedResources;
@end

@implementation SDAirDropActivity

- (SDAirDropActivity)init
{
  v6.receiver = self;
  v6.super_class = SDAirDropActivity;
  v2 = [(SDAirDropActivity *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    activeSecurityContexts = v2->_activeSecurityContexts;
    v2->_activeSecurityContexts = v3;
  }

  return v2;
}

- (CGSize)_thumbnailSize
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  SFSuggestedAirDropThumbnailSize();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)prepareWithActivityItemData:(id)data
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  securityContexts = [data securityContexts];
  v5 = [securityContexts countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(securityContexts);
        }

        [(SDAirDropActivity *)self startAccessingSecurityScopedResourcesInContext:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [securityContexts countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)startAccessingSecurityScopedResourcesInContext:(id)context
{
  if (context)
  {
    contextCopy = context;
    [contextCopy activate];
    [(NSMutableArray *)self->_activeSecurityContexts addObject:contextCopy];
  }
}

- (void)stopAccessingSecurityScopedResources
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_activeSecurityContexts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) deactivate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_activeSecurityContexts removeAllObjects];
}

- (void)dealloc
{
  [(SDAirDropActivity *)self stopAccessingSecurityScopedResources];
  v3.receiver = self;
  v3.super_class = SDAirDropActivity;
  [(SDAirDropActivity *)&v3 dealloc];
}

@end