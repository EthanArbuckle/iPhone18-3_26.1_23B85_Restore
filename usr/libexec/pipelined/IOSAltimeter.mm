@interface IOSAltimeter
- (IOSAltimeter)init;
- (IOSAltimeter)initWithOperationQueue:(id)queue;
- (void)start;
@end

@implementation IOSAltimeter

- (IOSAltimeter)init
{
  [(IOSAltimeter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IOSAltimeter)initWithOperationQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = IOSAltimeter;
  v6 = [(IOSAltimeter *)&v13 init];
  if (v6)
  {
    if ((atomic_load_explicit(&qword_10045D4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045D4F8))
    {
      qword_10045D4F0 = objc_alloc_init(CMAltimeter);
      __cxa_guard_release(&qword_10045D4F8);
    }

    objc_storeStrong(&v6->_queue, queue);
    objc_storeStrong(&v6->_altimeter, qword_10045D4F0);
    v7 = v6;
    sub_100338704(&v14);
    v14 = off_100448DC8;
    objc_initWeak(&v18, v7);

    sub_1003078D8(&v7->_sensor, &v14);
    objc_destroyWeak(&v18);
    v14 = off_10044A5C0;
    v8 = __p;
    if (__p)
    {
      v9 = v17;
      v10 = __p;
      if (v17 != __p)
      {
        do
        {
          v11 = *(v9 - 1);
          if (v11)
          {
            std::__shared_weak_count::__release_weak(v11);
          }

          v9 -= 16;
        }

        while (v9 != v8);
        v10 = __p;
      }

      v17 = v8;
      operator delete(v10);
    }

    std::mutex::~mutex(&v15);
  }

  return v6;
}

- (void)start
{
  queue = self->_queue;
  altimeter = self->_altimeter;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_100307A74;
  v5[3] = &unk_100448D88;
  selfCopy = self;
  v6 = selfCopy;
  [(CMAltimeter *)altimeter startRelativeAltitudeUpdatesToQueue:queue withHandler:v5];
}

@end