@interface _DASTaskDependencyGraphNode
- (BOOL)isEqual:(id)equal;
- (_DASTaskDependencyGraphNode)initWithIdentifier:(id)identifier;
@end

@implementation _DASTaskDependencyGraphNode

- (_DASTaskDependencyGraphNode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _DASTaskDependencyGraphNode;
  v6 = [(_DASTaskDependencyGraphNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskIdentifier, identifier);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if ([(_DASTaskDependencyGraphNode *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    taskIdentifier = self->_taskIdentifier;
    taskIdentifier = [(_DASTaskDependencyGraphNode *)equalCopy taskIdentifier];
    v7 = [(NSString *)taskIdentifier isEqualToString:taskIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end