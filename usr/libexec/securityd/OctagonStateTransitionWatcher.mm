@interface OctagonStateTransitionWatcher
- (id)description;
- (id)initNamed:(id)named stateMachine:(id)machine path:(id)path initialRequest:(id)request;
- (void)onqueueHandleStartTimeout:(id)timeout;
- (void)onqueueHandleTransition:(id)transition;
- (void)onqueueProcessTransition:(id)transition;
- (void)onqueueStartFinishOperation;
@end

@implementation OctagonStateTransitionWatcher

- (void)onqueueStartFinishOperation
{
  queue = [(OctagonStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  [(OctagonStateTransitionWatcher *)self setTimeoutCanOccur:0];
  operationQueue = [(OctagonStateTransitionWatcher *)self operationQueue];
  result = [(OctagonStateTransitionWatcher *)self result];
  [operationQueue addOperation:result];

  [(OctagonStateTransitionWatcher *)self setActive:0];

  [(OctagonStateTransitionWatcher *)self setCompleted:1];
}

- (void)onqueueProcessTransition:(id)transition
{
  transitionCopy = transition;
  queue = [(OctagonStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  remainingPath = [(OctagonStateTransitionWatcher *)self remainingPath];
  if (remainingPath)
  {
    v7 = remainingPath;
    completed = [(OctagonStateTransitionWatcher *)self completed];

    if ((completed & 1) == 0)
    {
      remainingPath2 = [(OctagonStateTransitionWatcher *)self remainingPath];
      nextState = [transitionCopy nextState];
      v11 = [remainingPath2 nextStep:nextState];

      if (v11)
      {
        [(OctagonStateTransitionWatcher *)self setRemainingPath:v11];
        remainingPath3 = [(OctagonStateTransitionWatcher *)self remainingPath];
        successState = [remainingPath3 successState];

        if (successState)
        {
          [(OctagonStateTransitionWatcher *)self onqueueStartFinishOperation];
        }
      }

      else
      {
        error = [transitionCopy error];

        if (error)
        {
          error2 = [transitionCopy error];
          result = [(OctagonStateTransitionWatcher *)self result];
          [result setError:error2];
        }

        else
        {
          stateNumberMap = [(OctagonStateTransitionWatcher *)self stateNumberMap];
          nextState2 = [transitionCopy nextState];
          error2 = [stateNumberMap objectForKeyedSubscript:nextState2];

          v19 = &swift_errorRelease_ptr;
          if (error2)
          {
            unexpectedStateErrorDomain = [(OctagonStateTransitionWatcher *)self unexpectedStateErrorDomain];
            integerValue = [error2 integerValue];
            nextState3 = [transitionCopy nextState];
            v23 = [NSString stringWithFormat:@"unexpected state '%@'", nextState3];
            result = [NSError errorWithDomain:unexpectedStateErrorDomain code:integerValue description:v23];

            v19 = &swift_errorRelease_ptr;
          }

          else
          {
            result = 0;
          }

          v24 = v19[313];
          nextState4 = [transitionCopy nextState];
          remainingPath4 = [(OctagonStateTransitionWatcher *)self remainingPath];
          v27 = [NSString stringWithFormat:@"state became %@, was expecting %@", nextState4, remainingPath4];
          v28 = [v24 errorWithDomain:@"com.apple.security.octagon" code:30 description:v27 underlying:result];
          result2 = [(OctagonStateTransitionWatcher *)self result];
          [result2 setError:v28];
        }

        v30 = +[CKKSAnalytics logger];
        result3 = [(OctagonStateTransitionWatcher *)self result];
        error3 = [result3 error];
        v39[0] = @"name";
        name = [(OctagonStateTransitionWatcher *)self name];
        v40[0] = name;
        v39[1] = @"intended";
        remainingPath5 = [(OctagonStateTransitionWatcher *)self remainingPath];
        followStates = [remainingPath5 followStates];
        allKeys = [followStates allKeys];
        v40[1] = allKeys;
        v39[2] = @"became";
        nextState5 = [transitionCopy nextState];
        v40[2] = nextState5;
        v37 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];
        [v30 logUnrecoverableError:error3 forEvent:@"OctagonEventStateTransition" withAttributes:v37];

        [(OctagonStateTransitionWatcher *)self onqueueStartFinishOperation];
        v11 = 0;
      }
    }
  }
}

- (void)onqueueHandleStartTimeout:(id)timeout
{
  timeoutCopy = timeout;
  queue = [(OctagonStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OctagonStateTransitionWatcher *)self timeoutCanOccur])
  {
    [(OctagonStateTransitionWatcher *)self setTimeoutCanOccur:0];
    name = [(OctagonStateTransitionWatcher *)self name];
    remainingPath = [(OctagonStateTransitionWatcher *)self remainingPath];
    v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for [%@]", name, remainingPath];

    v8 = [NSError errorWithDomain:@"CKKSResultOperationError" code:3 description:v7 underlying:timeoutCopy];
    result = [(OctagonStateTransitionWatcher *)self result];
    [result setError:v8];

    [(OctagonStateTransitionWatcher *)self onqueueStartFinishOperation];
  }
}

- (void)onqueueHandleTransition:(id)transition
{
  transitionCopy = transition;
  queue = [(OctagonStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  remainingPath = [(OctagonStateTransitionWatcher *)self remainingPath];
  if (remainingPath)
  {
    v6 = remainingPath;
    completed = [(OctagonStateTransitionWatcher *)self completed];

    if ((completed & 1) == 0)
    {
      if (![(OctagonStateTransitionWatcher *)self active])
      {
        nextState = [transitionCopy nextState];
        intendedPath = [(OctagonStateTransitionWatcher *)self intendedPath];
        initialState = [intendedPath initialState];
        v11 = [nextState isEqualToString:initialState];

        if (!v11)
        {
          goto LABEL_7;
        }

        [(OctagonStateTransitionWatcher *)self setActive:1];
      }

      [(OctagonStateTransitionWatcher *)self onqueueProcessTransition:transitionCopy];
    }
  }

LABEL_7:
}

- (id)description
{
  name = [(OctagonStateTransitionWatcher *)self name];
  remainingPath = [(OctagonStateTransitionWatcher *)self remainingPath];
  result = [(OctagonStateTransitionWatcher *)self result];
  v6 = [NSString stringWithFormat:@"<OctagonStateTransitionWatcher(%@): remaining: %@, result: %@>", name, remainingPath, result];

  return v6;
}

- (id)initNamed:(id)named stateMachine:(id)machine path:(id)path initialRequest:(id)request
{
  namedCopy = named;
  machineCopy = machine;
  pathCopy = path;
  requestCopy = request;
  v31.receiver = self;
  v31.super_class = OctagonStateTransitionWatcher;
  v15 = [(OctagonStateTransitionWatcher *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, named);
    objc_storeStrong(&v16->_intendedPath, path);
    asPathStep = [pathCopy asPathStep];
    remainingPath = v16->_remainingPath;
    v16->_remainingPath = asPathStep;

    namedCopy = [NSString stringWithFormat:@"watcher-%@", namedCopy];
    v20 = [CKKSResultOperation named:namedCopy withBlock:&stru_100337730];
    v21 = v16->_result;
    v16->_result = v20;

    v22 = objc_alloc_init(NSOperationQueue);
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v22;

    queue = [machineCopy queue];
    queue = v16->_queue;
    v16->_queue = queue;

    stateNumberMap = [machineCopy stateNumberMap];
    stateNumberMap = v16->_stateNumberMap;
    v16->_stateNumberMap = stateNumberMap;

    unexpectedStateErrorDomain = [machineCopy unexpectedStateErrorDomain];
    unexpectedStateErrorDomain = v16->_unexpectedStateErrorDomain;
    v16->_unexpectedStateErrorDomain = unexpectedStateErrorDomain;

    v16->_timeoutCanOccur = 1;
    objc_storeStrong(&v16->_initialRequest, request);
    *&v16->_active = 0;
  }

  return v16;
}

@end