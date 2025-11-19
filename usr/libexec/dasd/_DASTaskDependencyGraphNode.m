@interface _DASTaskDependencyGraphNode
- (BOOL)isEqual:(id)a3;
- (_DASTaskDependencyGraphNode)initWithIdentifier:(id)a3;
@end

@implementation _DASTaskDependencyGraphNode

- (_DASTaskDependencyGraphNode)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DASTaskDependencyGraphNode;
  v6 = [(_DASTaskDependencyGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskIdentifier, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(_DASTaskDependencyGraphNode *)v4 isMemberOfClass:objc_opt_class()])
  {
    taskIdentifier = self->_taskIdentifier;
    v6 = [(_DASTaskDependencyGraphNode *)v4 taskIdentifier];
    v7 = [(NSString *)taskIdentifier isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end