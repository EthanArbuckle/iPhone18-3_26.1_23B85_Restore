@interface NSPCandidateFallbackProxyPath
- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list;
@end

@implementation NSPCandidateFallbackProxyPath

- (BOOL)proxyPathIsValid:(id)valid proxyPathList:(id)list
{
  listCopy = list;
  validCopy = valid;
  ingressProxy = [(NSPCandidateProxyPath *)self ingressProxy];
  v9 = ingressProxy;
  if (ingressProxy)
  {
    v10 = *(ingressProxy + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  egressProxy = [(NSPCandidateProxyPath *)self egressProxy];
  v13 = egressProxy;
  if (egressProxy)
  {
    v14 = *(egressProxy + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [NSPPrivacyProxyAgentManager proxiesMatch:validCopy proxyPathList:listCopy ingressProxy:v11 egressProxy:v15 pathWeight:[(NSPCandidateProxyPath *)self proxyPathWeight] supportsFallback:1];

  return v16;
}

@end