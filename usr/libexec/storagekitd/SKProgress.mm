@interface SKProgress
+ (SKProgress)progressWithTotalUnitCount:(int64_t)count;
- (SKProgress)init;
- (void)chainChildProgress:(id)progress withPendingUnitCount:(int64_t)count;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLocalizedAdditionalDescription:(id)description;
@end

@implementation SKProgress

- (void)setLocalizedAdditionalDescription:(id)description
{
  descriptionCopy = description;
  v5 = +[NSCharacterSet newlineCharacterSet];
  v6 = [descriptionCopy stringByTrimmingCharactersInSet:v5];

  [(SKProgress *)self setUserInfoObject:v6 forKey:_NSProgressRemoteLocalizedAdditionalDescriptionKey];
  v7.receiver = self;
  v7.super_class = SKProgress;
  [(SKProgress *)&v7 setLocalizedAdditionalDescription:v6];
}

+ (SKProgress)progressWithTotalUnitCount:(int64_t)count
{
  v4 = objc_opt_new();
  [v4 setTotalUnitCount:count];

  return v4;
}

- (SKProgress)init
{
  v7.receiver = self;
  v7.super_class = SKProgress;
  v2 = [(SKProgress *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(SKProgress *)v2 set_adoptChildUserInfo:1];
    [(SKProgress *)v3 setLocalizedAdditionalDescription:&stru_10004A890];
    v4 = objc_opt_new();
    children = v3->_children;
    v3->_children = v4;
  }

  return v3;
}

- (void)chainChildProgress:(id)progress withPendingUnitCount:(int64_t)count
{
  progressCopy = progress;
  [(SKProgress *)self addChild:progressCopy withPendingUnitCount:count];
  children = [(SKProgress *)self children];
  [children addObject:progressCopy];

  userInfo = [progressCopy userInfo];

  [userInfo addObserver:self forKeyPath:_NSProgressRemoteLocalizedAdditionalDescriptionKey options:0 context:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = _NSProgressRemoteLocalizedAdditionalDescriptionKey;
  if ([path isEqualToString:{_NSProgressRemoteLocalizedAdditionalDescriptionKey, object, change, context}])
  {
    userInfo = [(SKProgress *)self userInfo];
    v8 = [userInfo objectForKeyedSubscript:v7];
    [(SKProgress *)self setLocalizedAdditionalDescription:v8];
  }
}

- (void)dealloc
{
  children = [(SKProgress *)self children];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002C684;
  v5[3] = &unk_1000499C8;
  v5[4] = self;
  [children enumerateObjectsUsingBlock:v5];

  v4.receiver = self;
  v4.super_class = SKProgress;
  [(SKProgress *)&v4 dealloc];
}

@end