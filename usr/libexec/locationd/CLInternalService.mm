@interface CLInternalService
+ (id)getAsyncResponseSilo;
+ (id)getIntersiloDelegate;
- ($115C4C562B26FF47E01F9F4EA65B5887)currentToken;
@end

@implementation CLInternalService

- ($115C4C562B26FF47E01F9F4EA65B5887)currentToken
{
  result = +[NSXPCConnection currentConnection];
  if (result)
  {

    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

+ (id)getIntersiloDelegate
{
  if (qword_102667230 != -1)
  {
    dispatch_once(&qword_102667230, &stru_1025025E0);
  }

  return qword_102667228;
}

+ (id)getAsyncResponseSilo
{
  if (qword_102667240 != -1)
  {
    dispatch_once(&qword_102667240, &stru_102502600);
  }

  return qword_102667238;
}

@end