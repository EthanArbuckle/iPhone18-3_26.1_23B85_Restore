@interface SKProgress
+ (SKProgress)progressWithTotalUnitCount:(int64_t)a3;
- (SKProgress)init;
- (void)chainChildProgress:(id)a3 withPendingUnitCount:(int64_t)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setLocalizedAdditionalDescription:(id)a3;
@end

@implementation SKProgress

- (void)setLocalizedAdditionalDescription:(id)a3
{
  v4 = a3;
  v5 = +[NSCharacterSet newlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  [(SKProgress *)self setUserInfoObject:v6 forKey:_NSProgressRemoteLocalizedAdditionalDescriptionKey];
  v7.receiver = self;
  v7.super_class = SKProgress;
  [(SKProgress *)&v7 setLocalizedAdditionalDescription:v6];
}

+ (SKProgress)progressWithTotalUnitCount:(int64_t)a3
{
  v4 = objc_opt_new();
  [v4 setTotalUnitCount:a3];

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

- (void)chainChildProgress:(id)a3 withPendingUnitCount:(int64_t)a4
{
  v6 = a3;
  [(SKProgress *)self addChild:v6 withPendingUnitCount:a4];
  v7 = [(SKProgress *)self children];
  [v7 addObject:v6];

  v8 = [v6 userInfo];

  [v8 addObserver:self forKeyPath:_NSProgressRemoteLocalizedAdditionalDescriptionKey options:0 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = _NSProgressRemoteLocalizedAdditionalDescriptionKey;
  if ([a3 isEqualToString:{_NSProgressRemoteLocalizedAdditionalDescriptionKey, a4, a5, a6}])
  {
    v9 = [(SKProgress *)self userInfo];
    v8 = [v9 objectForKeyedSubscript:v7];
    [(SKProgress *)self setLocalizedAdditionalDescription:v8];
  }
}

- (void)dealloc
{
  v3 = [(SKProgress *)self children];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002C684;
  v5[3] = &unk_1000499C8;
  v5[4] = self;
  [v3 enumerateObjectsUsingBlock:v5];

  v4.receiver = self;
  v4.super_class = SKProgress;
  [(SKProgress *)&v4 dealloc];
}

@end