@interface NSPCandidateFallbackProxyPath
- (BOOL)proxyPathIsValid:(id)a3 proxyPathList:(id)a4;
@end

@implementation NSPCandidateFallbackProxyPath

- (BOOL)proxyPathIsValid:(id)a3 proxyPathList:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NSPCandidateProxyPath *)self ingressProxy];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [(NSPCandidateProxyPath *)self egressProxy];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [NSPPrivacyProxyAgentManager proxiesMatch:v7 proxyPathList:v6 ingressProxy:v11 egressProxy:v15 pathWeight:[(NSPCandidateProxyPath *)self proxyPathWeight] supportsFallback:1];

  return v16;
}

@end