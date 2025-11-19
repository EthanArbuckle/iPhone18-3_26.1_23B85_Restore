void sub_1000DBF58()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DBFF4()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DC090(int a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[MSDHubTrustEvaluate trustServer:withRootCA:withHostName:]";
    v5 = 2048;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Cannot set anchor certificates: %ld", &v3, 0x16u);
  }
}

void sub_1000DC14C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_1000DC1E4()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DC280()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DC31C(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 getName];
    sub_100006E3C();
    sub_100020E84(&_mh_execute_header, v6, v7, "%{public}@: invalid request", v8, v9, v10, v11, v12);
  }

  *a2 = v4;
}

void sub_1000DC3D0(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 getName];
    sub_100006E3C();
    sub_100020E84(&_mh_execute_header, v6, v7, "%{public}@: cannot send request to nil path", v8, v9, v10, v11, v12);
  }

  *a2 = v4;
}

void sub_1000DC484(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 getName];
    sub_100006E3C();
    sub_100020E84(&_mh_execute_header, v6, v7, "%{public}@: Failed to convert input to query items", v8, v9, v10, v11, v12);
  }

  *a2 = v4;
}

void sub_1000DC538(void *a1)
{
  v1 = [a1 getName];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "%{public}@: invalid request", v4, v5, v6, v7, v8);
}

void sub_1000DC5BC(void *a1)
{
  v1 = [a1 getName];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "%{public}@: failed to convert to task info", v4, v5, v6, v7, v8);
}

void sub_1000DC640(void *a1)
{
  v1 = [a1 getName];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "%{public}@: cannot send request to nil endpoint", v4, v5, v6, v7, v8);
}

void sub_1000DC6C4(void *a1)
{
  v1 = [a1 getName];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "%{public}@: failed to generate post data", v4, v5, v6, v7, v8);
}

void sub_1000DC75C(os_log_t log)
{
  v1 = 138543362;
  v2 = @"/Applications/StoreDemoViewService.app";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not load localization bundle at %{public}@", &v1, 0xCu);
}

void sub_1000DC7E0()
{
  v1[0] = 136315394;
  sub_1000055D4();
  v2 = @"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - Failed to load bundle %{public}@", v1, 0x16u);
}

void sub_1000DC870()
{
  v2[0] = 136315394;
  sub_1000055D4();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s - allLocalizations = %{public}@", v2, 0x16u);
}

void sub_1000DC8F4()
{
  v1[0] = 136315394;
  sub_1000055D4();
  v2 = @"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - Failed to get all localizations or localizations is in wrong format.  Bundle:  %{public}@", v1, 0x16u);
}

void sub_1000DC998()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_1000DCA44()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_1000DCAF0()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000DCBE8()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000DCC58(void *a1, NSObject *a2)
{
  v3 = [a1 toString];
  sub_100006E3C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Store hour settings have or will be expired on %{public}@", v4, 0xCu);
}

void sub_1000DCCEC()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000DCD9C()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000DCE0C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a1;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to parse store hour date string - %{public}@", &v7, 0xCu);
  }
}

void sub_1000DCEE0()
{
  sub_100082B3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000DCF54()
{
  sub_100082B3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000DCFC8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100008394();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000DD040(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100008394();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000DD0B8(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Starting Asset download op %{public}@", buf, 0xCu);
}

void sub_1000DD114(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Timed out while waiting for %{public}@ to download", buf, 0xCu);
}

void sub_1000DD174(uint64_t a1)
{
  v7 = [MSDAssetUpdater assetToString:*(a1 + 32)];
  sub_100017378(&_mh_execute_header, v1, v2, "Asset download failed with status %ld\n%{public}@", v3, v4, v5, v6, 2u);
}

void sub_1000DD224(uint64_t a1, NSObject *a2)
{
  v3 = [MSDAssetUpdater assetToString:*(a1 + 32)];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Asset download finished:\n%{public}@", &v4, 0xCu);
}

void sub_1000DD2CC(void *a1)
{
  v7 = [a1 localizedDescription];
  sub_100017378(&_mh_execute_header, v1, v2, "An error occurred while retrieving contents of %{public}@ - %{public}@", v3, v4, v5, v6, 2u);
}

void sub_1000DD368(uint64_t a1, NSObject **a2)
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  *a2 = v3;
}

void sub_1000DD420(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = a1;
}

void sub_1000DD480(NSObject *a1, uint64_t a2, NSObject **a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  *a3 = a1;
}

void sub_1000DD538(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = a1;
}

void sub_1000DD6F0()
{
  v3[0] = 136315394;
  sub_1000055D4();
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v2, "%s - Manifest file does not exist:  %{public}@", v3);
}

void sub_1000DD76C(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136315394;
    sub_1000055D4();
    v7 = a1;
    sub_1000159F8(&_mh_execute_header, v4, v5, "%s:  Manifest file is in wrong format:  %{public}@ - Must be NSDictionary.", v6);
  }
}

void sub_1000DD828(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "+[MSDSignedManifestFactory readManifestFromFile:]";
    v7 = 1024;
    v8 = [a1 intValue];
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s:  Manifest version %d is not supported yet.", &v5, 0x12u);
  }
}

void sub_1000DD900(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136315394;
    sub_1000055D4();
    v7 = a1;
    sub_1000159F8(&_mh_execute_header, v4, v5, "%s:  Missing Version number in manifest file:  %{public}@", v6);
  }
}

void sub_1000DD9BC(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    v6[0] = 136315394;
    sub_1000055D4();
    v7 = v4;
    sub_1000159F8(&_mh_execute_header, v2, v5, "%s:  Failed to convert manifest file to property list.  Error:  %{public}@", v6);
  }
}

void sub_1000DDA7C()
{
  v3[0] = 136315394;
  sub_1000055D4();
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v2, "%s - Failed to read manifest file:  %{public}@", v3);
}

void sub_1000DDAF8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to delete cache container for: %{public}@", &v2, 0xCu);
}

void sub_1000DDB70(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "App was not uninstalled. Disposition: %ld", &v2, 0xCu);
}

void sub_1000DE508()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DE59C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100024E68();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000DE644()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    v2 = *__error();
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

void sub_1000DE6EC()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    v2 = *__error();
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

void sub_1000DE794(uint64_t a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = __error();
    strerror(*v5);
    v6 = 138543618;
    v7 = a1;
    sub_100086020();
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not validate ACL for %{public}@ with error - %{public}s", &v6, 0x16u);
  }

  *a2 = v4;
}

void sub_1000DE858()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    v2 = __error();
    strerror(*v2);
    sub_100024E68();
    sub_100086020();
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000DE940()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    v2 = __error();
    strerror(*v2);
    sub_100024E68();
    sub_100086020();
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000DE9E4()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DEA78()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000DEB28()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DEBBC(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (sub_1000083A0(v4))
  {
    v5 = [a2 localizedDescription];
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_1000DEC7C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DED10()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DEDA4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cannot remove extended attribte %{public}s from %{public}@.", &v3, 0x16u);
}

void sub_1000DEE70()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000DEEE0()
{
  sub_100018954();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000879E0();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

void sub_1000DEF54()
{
  sub_100018954();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000879E0();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

void sub_1000DEFC8()
{
  sub_100018954();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000879E0();
  [v0 handleFailureInMethod:@"request != nil" object:? file:? lineNumber:? description:?];
}

void sub_1000DF050()
{
  sub_100018954();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000879E0();
  [v0 handleFailureInMethod:@"request != NULL" object:? file:? lineNumber:? description:?];
}

void sub_1000DF0EC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MSDSystemMonitor.m" lineNumber:124 description:@"Observer does not conform to protocol"];
}

void sub_1000DF160(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "appInforeground: %{public}@, systemInUse: %{BOOL}d", &v3, 0x12u);
}

void sub_1000DF2D8()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

void sub_1000DF334()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "deleteConfigurationApp ended", v3, 2u);
  }

  *v0 = v1;
}

void sub_1000DF394(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000DF3E8(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000DF43C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006DBEC(&_mh_execute_header, v2, v3, "demo updater is busy; ignoring install call", v4, v5, v6, v7, 0);
  }
}

void sub_1000DF48C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006DBEC(&_mh_execute_header, v2, v3, "demo updater is busy.", v4, v5, v6, v7, 0);
  }
}

void sub_1000DF4DC(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006DBEC(&_mh_execute_header, v2, v3, "demo updater is NOT busy.", v4, v5, v6, v7, 0);
  }
}

void sub_1000DF52C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000DF568()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

void sub_1000DF5C4()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

void sub_1000DF620()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000DF65C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000DF698()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000DF6D4()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000DF744()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000DF7B4()
{
  sub_10001DA6C();
  v4 = @"AutomatedDeviceGroup";
  v5 = v0;
  v6 = @"com.apple.da";
  v7 = v0;
  v8 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to write %{public}@ to key %{public}@ in domain %{public}@, current value is %{public}@", v3, 0x2Au);
}

void sub_1000DF8D0()
{
  sub_1000055D4();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000DF95C()
{
  sub_1000055D4();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000DF9E8()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000DFA24(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

uint64_t sub_1000DFAB0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [a2 device];
    v13 = [v7 OSVersion];
    sub_10003AD94();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  return sub_1000C1424(a3, 3727740976, @"iOS version mismatch.");
}

void sub_1000DFBB0()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000DFC20()
{
  sub_10001DA6C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ with error: %{public}@", v2, 0x16u);
}

void sub_1000DFC9C()
{
  sub_10001DA6C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000DFD98()
{
  sub_10001DA6C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000DFE14()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

id sub_1000DFE50()
{
  sub_100018954();
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100018934(&_mh_execute_header, v3, v4, "Failed to load cached bundle metadata", v5, v6, v7, v8, 0);
  }

  *v1 = 0;
  sub_1000C1390(v1, 3727740942, @"Failed to load cached manifest file");
  v9 = *v1;
  *v0 = *v1;

  return v9;
}

void sub_1000DFEEC()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000DFF5C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000E0000()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_1000E00B8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E0150()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

id sub_1000E01C0()
{
  sub_100018954();
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100018934(&_mh_execute_header, v3, v4, "Selected bundle metadata do not contain file name", v5, v6, v7, v8, 0);
  }

  *v1 = 0;
  sub_1000C1390(v1, 3727740942, @"Selected bundle metadata do not contain file name");
  v9 = *v1;
  *v0 = *v1;

  return v9;
}

void sub_1000E025C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E02F8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E03D8(void *a1, uint64_t a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 getName];
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: required key not found or is in unexpected format: %{public}@", &v6, 0x16u);
  }
}

void sub_1000E04AC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to list directory contents - %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000E0534()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v1, v2, "Failed to copy file from content cache: %{public}@", v3, v4, v5, v6, 2u);
  }
}

void sub_1000E05CC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to remove file: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000E08A8(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSDictionary: %{public}@", &v3, 0xCu);
}

void sub_1000E0928(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "The value for key %{public}@ has a type that is not supported yet", &v2, 0xCu);
}

void sub_1000E09A0()
{
  v0 = objc_opt_class();
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000E0A44(void *a1)
{
  [a1 objCType];
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000E0ACC(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 136315394;
    sub_1000055D4();
    v6 = a1;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: format not correct: %{public}@", v5, 0x16u);
  }
}

void sub_1000E0B90(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    [a1 code];
    sub_10008EC34();
    sub_100008384();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  }
}

void sub_1000E0C54()
{
  v1[0] = 136315394;
  sub_1000055D4();
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Cannot convert %{public}@ to dictionary", v1, 0x16u);
}

void sub_1000E0CDC()
{
  v2[0] = 136315394;
  sub_1000055D4();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: Not a valid JSON object: %{public}@", v2, 0x16u);
}

void sub_1000E0D60(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    [a1 code];
    sub_10008EC34();
    sub_100008384();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  }
}

void sub_1000E1338()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000E1514()
{
  v2[0] = 136315394;
  sub_100033FA4();
  sub_1000159F8(&_mh_execute_header, v0, v1, "%s: signature type for certificate %{public}@ does not exist", v2);
}

void sub_1000E160C()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E167C()
{
  v2[0] = 136315394;
  sub_100033FA4();
  sub_1000159F8(&_mh_execute_header, v0, v1, "%s: No matching certificate for %{public}@.", v2);
}

void sub_1000E16F4()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000E1750()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000E17AC()
{
  sub_10006DBE0();
  v0 = sub_100063A54();
  if (sub_10006DBC8(v0))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_10003ADD4();
}

void sub_1000E1850()
{
  sub_10006DBE0();
  v2 = sub_100063A54();
  if (sub_10006DBC8(v2))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000E18FC()
{
  v0 = sub_100063A54();
  if (sub_10006DBC8(v0))
  {
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  sub_10003ADD4();
}

void sub_1000E19A4()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E1A14(NSObject *a1)
{
  if (sub_10003ADE0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E1AA8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E1B44()
{
  sub_10003ADC4();
  if (sub_10003ADE0(v0))
  {
    sub_100093C90();
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_10003ADD4();
}

void sub_1000E1BE0()
{
  sub_10003ADC4();
  if (sub_10003ADE0(v0))
  {
    sub_100093C90();
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_10003ADD4();
}

void sub_1000E1C7C()
{
  sub_10003ADC4();
  if (sub_10003ADE0(v0))
  {
    sub_100093C90();
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_10003ADD4();
}

void sub_1000E1D18()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10003ADD4();
}

void sub_1000E1DA8(unsigned int *a1)
{
  v1 = *a1;
  v4[0] = 136315394;
  sub_100093C90();
  sub_1000159F8(&_mh_execute_header, v2, v3, "%s: certificate trust evaluation failed: %ld", v4);
}

void sub_1000E1E24()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_10005F09C();
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
  }

  v4 = *(*(v1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  *v0 = 1;
}

void sub_1000E1F30(int a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "[MSDDemoManifestCheck verifySignature:forData:withKey:]";
    v5 = 1024;
    v6 = a1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: Failed in verifying signature(%d)", &v3, 0x12u);
  }
}

void sub_1000E20EC()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000E2148()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E21E4()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E2280()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10003ADD4();
}

void sub_1000E2310()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E2380(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 40);
  v4 = 136315650;
  v5 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed rigorous check for:%{public}@ (from %{public}@)", &v4, 0x20u);
}

void sub_1000E241C()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E248C()
{
  sub_10006DBE0();
  v2 = sub_100063A54();
  if (sub_10006DBC8(v2))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000E2538()
{
  sub_10006DBE0();
  v0 = sub_100063A54();
  if (sub_10006DBC8(v0))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_10003ADD4();
}

void sub_1000E25DC()
{
  sub_10006DBE0();
  v0 = sub_100063A54();
  if (sub_10006DBC8(v0))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_10003ADD4();
}

void sub_1000E2680()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100093CA4();
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
  }
}

void sub_1000E26F0()
{
  sub_100006E3C();
  v3 = 2114;
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v1, "Not a valid fileType (%{public}@) for file: %{public}@", v2);
}

void sub_1000E276C()
{
  sub_100006E3C();
  v3 = 2048;
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v1, "File permissions failed for file:%{public}@(%ld)", v2);
}

void sub_1000E27E8()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E2858()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E28C8(void *a1)
{
  v3 = sub_100063A54();
  if (sub_10006DBC8(v3))
  {
    sub_10003AD94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_1000E292C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100063A54();
  if (sub_100018978(v6))
  {
    sub_10005F09C();
    _os_log_error_impl(v7, v8, v9, v10, v11, v12);
  }
}

void sub_1000E29E0()
{
  sub_10006DBE0();
  v2 = sub_100063A54();
  if (sub_10006DBC8(v2))
  {
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1000E2A84()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E2AF4()
{
  sub_100006E3C();
  sub_10005F09C();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_1000E2B64(NSObject *a1, uint64_t a2, NSObject **a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v12 = HIDWORD(*(*a2 + 40));
    sub_100020E84(&_mh_execute_header, v6, v7, "Failed to load manifest factory metadata from %{public}@; directory does not exist", v8, v9, v10, v11, 2u);
  }

  *a3 = a1;
}

void sub_1000E2C08(NSObject *a1, uint64_t a2, NSObject **a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v12 = HIDWORD(*(*a2 + 40));
    sub_100020E84(&_mh_execute_header, v6, v7, "Failed to load manifest factory metadata from %{public}@; path is not a directory", v8, v9, v10, v11, 2u);
  }

  *a3 = a1;
}

void sub_1000E2E04(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 20;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Waited %d minutes.  Siri assets still unavailable!", v1, 8u);
}

void sub_1000E2E84(void *a1, NSObject *a2)
{
  v4 = [a1 code];
  v5 = [a1 description];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error hit! Error: %ld %@", &v6, 0x16u);
}

void sub_1000E3024(uint64_t a1, void *a2)
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [a2 localizedDescription];
    sub_1000055D4();
    sub_10009711C(&_mh_execute_header, v5, v6, "%s - error creating directory at %{public}@. Error: %{public}@", v7, v8, v9, v10, 2u);
  }
}

void sub_1000E30F0(void *a1, void *a2)
{
  v3 = [a1 settingsFilePath];
  v4 = [a2 localizedDescription];
  sub_1000055D4();
  sub_10009711C(&_mh_execute_header, v5, v6, "%s - Error initializing the default system settings file %{public}@ with values - Error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000E31AC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDSettingsRefresher initializeCacheWithValues:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s - Initialized settings refresher cache with values from saved file", &v1, 0xCu);
}

void sub_1000E3230(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDSettingsRefresher restoreSavedDeviceSettings]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - The shallow refresh settings refresher is uninitialized. No settings revert will be done", &v1, 0xCu);
}

void sub_1000E3504()
{
  v1[0] = 136315394;
  sub_1000055D4();
  v2 = @"Off";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - Invalid current airdrop setting read. Defaulting to %{public}@", v1, 0x16u);
}

void sub_1000E3970()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Failed ApplePKI and AxinoePKI trust evaluation", v1, 2u);
  }
}

void sub_1000E39DC()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000E3A38()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000E3B88(const void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v3, v4, "%s: Cannot load certificate.", v5, v6, v7, v8, 2u);
  }

  CFRelease(a1);
}

void sub_1000E3C30()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E3CCC(const void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v3, v4, "%s: Cannot load certificate.", v5, v6, v7, v8, 2u);
  }

  CFRelease(a1);
}

void sub_1000E3D74()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E3E10()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E3EAC(int a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[MSDSessionBaseTrustEvaluate trustServer:withRootCA:withHostName:]";
    v5 = 2048;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Cannot set anchor certificates: %ld", &v3, 0x16u);
  }
}

void sub_1000E3F68()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E4004()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E4114(const void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v3, v4, "%s: Cannot load demounit root CA certificate.", v5, v6, v7, v8, 2u);
  }

  CFRelease(a1);
}

void sub_1000E41BC()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E4258()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E43C8(void *a1)
{
  v1 = [a1 path];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000E4454(void *a1)
{
  v1 = [a1 path];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000E44E0(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000083A0(v3))
  {
    v4 = [a1 path];
    sub_100006E3C();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1000E4588(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = [a2 path];
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1000E4640(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = [a2 path];
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1000E46F8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E4794()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000E482C(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 path];
    sub_100006E3C();
    sub_100033CD8(&_mh_execute_header, v4, v6, "Cannot find executable file in bundle:  %{public}@.", v7);
  }

  *a2 = v4;
}

void sub_1000E48E8(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 path];
    sub_100006E3C();
    sub_100033CD8(&_mh_execute_header, v4, v6, "Cannot load bundle: %{public}@", v7);
  }

  *a2 = v4;
}

void sub_1000E49A4()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000E4A48(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (sub_1000083A0(v4))
  {
    v5 = [a2 localizedDescription];
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
  }
}

void sub_1000E4B14(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000E4BE8(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_10009B948();
  sub_10001B0D4(&_mh_execute_header, v2, v3, "MSDRapportMessageHandler: Incoming options: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E4CC0(uint64_t a1)
{
  sub_10009B964(a1, __stack_chk_guard);
  sub_10009B948();
  sub_100024E1C(&_mh_execute_header, v1, v2, "MSDRapportMessageHandler: XPC connection to sender RPCompanionLinkClient interrupted for device: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000E4D28(uint64_t a1)
{
  sub_10009B964(a1, __stack_chk_guard);
  sub_10009B948();
  sub_100024E1C(&_mh_execute_header, v1, v2, "MSDRapportMessageHandler: XPC connection to sender RPCompanionLinkClient invalidated for device: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000E4D90(uint64_t a1)
{
  sub_10009B964(a1, __stack_chk_guard);
  sub_10009B948();
  sub_100024E1C(&_mh_execute_header, v1, v2, "MSDRapportMessageHandler: Link connection lost for device: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000E4DF8(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009B954(a1 a2)];
  sub_10009B930();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000E4E8C(uint64_t a1)
{
  sub_10009B964(a1, __stack_chk_guard);
  sub_10009B948();
  sub_100024E1C(&_mh_execute_header, v1, v2, "MSDRapportMessageHandler: No RPCompanionLinkClient found for device: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000E4EF4(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009B954(a1 a2)];
  sub_10009B930();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000E4F88(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009B954(a1 a2)];
  sub_10009B930();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000E5030(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to get file last modified date: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E50B4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to locate xctspawn tool: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E5138(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67240450;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to run xctspawn: %{public, errno}d stdout: %{public}@", v3, 0x12u);
}

void sub_1000E51C0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to deserialize JSON data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E5244(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to load JSON data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E52C8(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to run xctspawn: %{public, errno}d", v2, 8u);
}

void sub_1000E53C8(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Previous saved migration version: %{public}@ not in expected format.", &v3, 0xCu);
  }
}

void sub_1000E57B0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to query recovery key availability: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000E5838(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to generate recovery key: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000E58C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "/Register data: %@", &v2, 0xCu);
}

void sub_1000E5938(void *a1)
{
  v1 = [a1 getName];
  sub_100069728();
  sub_100017378(&_mh_execute_header, v2, v3, "%{public}@: required key not found: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E59C8(void *a1)
{
  v1 = [a1 getName];
  sub_100069728();
  sub_100017378(&_mh_execute_header, v2, v3, "%{public}@: error from the server: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E5ABC()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "No expire epoch found.", v1, 2u);
  }
}

void sub_1000E5B24(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [a2 localizedDescription];
  sub_10009F014();
  sub_10009711C(&_mh_execute_header, v5, v6, "%s - Failed to load file:  %{public}@ - Error:  %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000E5BD4(uint64_t a1, void *a2)
{
  v8 = [a2 localizedDescription];
  sub_10009711C(&_mh_execute_header, v2, v3, "%s - Failed to create folder:  %{public}@ - Error:  %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000E5C88(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [a2 localizedDescription];
  sub_10009F014();
  sub_10009711C(&_mh_execute_header, v5, v6, "%s - Failed to save info to file:  %{public}@ - Error:  %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000E5D38(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 getName];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@ returned error: %{public}@", &v6, 0x16u);
}

void *sub_1000E5DE8(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [a1 getName];
    sub_100020E84(&_mh_execute_header, v7, v8, "%{public}@: failed to convert data to dict", v9, v10, v11, v12, 2u);
  }

  return sub_1000C1390(a2, 3727744512, @"Unexpected server response.");
}

void *sub_1000E5EB8(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [a1 getName];
    sub_100020E84(&_mh_execute_header, v7, v8, "%{public}@: no data received.", v9, v10, v11, v12, 2u);
  }

  return sub_1000C1390(a2, 3727740934, @"Request rejected by server.");
}

void sub_1000E5F88(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSArray: %{public}@", &v3, 0xCu);
}

void sub_1000E6008(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "The value at index %lu in this xpcArray are of an unsupported type", &v2, 0xCu);
}

void sub_1000E60C4(void *a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = [a1 objCType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unsupported NSNumber type: %s for xpc dictionary encoding", &v3, 0xCu);
}

void sub_1000E6168(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000E6204()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000E6400(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 localizedDescription];
    sub_100006E3C();
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to load app patches list: %{public}@", v6, 0xCu);
  }

  *a2 = v4;
}

void sub_1000E64C4(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100008384();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_1000E6574(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDNearbyObjectMonitor: Failed to create NIDevicePresenceConfiguration: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E65FC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDNearbyObjectMonitor: Failed to activate device scanner: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E6680(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDNearbyObjectMonitor: NISession invalidated with error: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E696C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100017378(&_mh_execute_header, v3, v4, "Failed to install OS update (%{public}s) - %{public}@", v5, v6, v7, v8, v9);
}

void sub_1000E6A00(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to install OS update (%{public}s)", &v2, 0xCu);
}

void sub_1000E6A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MSDOperationQueue.m" lineNumber:37 description:{@"%@ is not a flavor of MSDOperation.", a3}];
}

void sub_1000E6C70(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = sub_1000A9AA0();
  if (v5)
  {
    v6 = [v5 error];

    if (!v6)
    {
      v8 = [sub_1000A9AA0() credential];
      if (v8)
      {
        v7 = v8;
        v9 = +[MSDFileDownloadCredentials sharedInstance];
        v10 = [v9 updateWithResponseFromGetFileDownloadCredentials:v7];

        if (v10)
        {
          goto LABEL_6;
        }

        v13 = sub_100063A54();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to update FDC", v14, 2u);
        }

        v12 = [NSError errorDomainMSDWithCode:3727744737 message:@"Cannot write file."];
      }

      else
      {
        v11 = sub_100063A54();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "FDC response does not contain credential dictionary", buf, 2u);
        }

        v12 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
        v7 = 0;
      }

      [sub_1000A9AA0() setError:v12];

      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000E6E48(void *a1)
{
  v2 = [NSError errorDomainMSDWithCode:3727740949 message:@"Cannot save enrollment record."];
  [a1 setError:v2];
}

void sub_1000E6EB4(void *a1)
{
  v2 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
  [a1 setError:v2];
}

void sub_1000E6F20(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Hub host name and port must be saved for handling request: %@", buf, 0xCu);
}

void sub_1000E6F78(void *a1)
{
  v2 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
  [a1 setError:v2];
}

void sub_1000E6FCC(void *a1)
{
  v1 = [a1 savePath];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "Cannot find %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E7050(void *a1)
{
  v1 = [a1 appID];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to get IPA from server for app %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000E70D4(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = [a2 getName];
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v5, v6, "%{public}@: does not conform to MSDDownloadFileDetailsProtocol.", v7, v8, v9, v10, v11);
  }
}

void sub_1000E729C()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "[MSDUIHelper stopFullScreenUI:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Cannot create xpc dict.", &v1, 0xCu);
  }
}

void sub_1000E7418()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_100020E84(&_mh_execute_header, v1, v2, "%s: Cannot create xpc dict.", v3, v4, v5, v6, 2u);
  }

  sub_10003ADD4();
}

void sub_1000E74A0()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_100020E84(&_mh_execute_header, v1, v2, "%s: Attempt to report an nil error", v3, v4, v5, v6, 2u);
  }

  sub_10003ADD4();
}

void sub_1000E7528()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_100020E84(&_mh_execute_header, v1, v2, "%s: Cannot create xpc dict.", v3, v4, v5, v6, 2u);
  }

  sub_10003ADD4();
}

void sub_1000E75B0()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_100020E84(&_mh_execute_header, v1, v2, "%s: Cannot create xpc dict.", v3, v4, v5, v6, 2u);
  }

  sub_10003ADD4();
}

void sub_1000E7638()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_100020E84(&_mh_execute_header, v1, v2, "%s: Cannot create xpc dict.", v3, v4, v5, v6, 2u);
  }

  sub_10003ADD4();
}

void sub_1000E7D60(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000E7DBC()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E7E6C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E7EA8()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E7F18()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E7F88()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8038(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

void sub_1000E80C8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

void sub_1000E8158()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8194()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E8204()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000E82A4()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8630(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 localizedDescription];
  v6 = 136315650;
  v7 = "[MSDHelperAgent createDeviceManifestForComponent:ofType:withRootPath:userHomePath:andSavePath:]";
  v8 = 2114;
  v9 = a1;
  v10 = 2114;
  v11 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: Failed to load device manifest from: %{public}@ error: %{public}@", &v6, 0x20u);
}

void sub_1000E86F4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDHelperAgent cloneFile:to:expectingHash:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: entered.", &v1, 0xCu);
}

void sub_1000E8778(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Cannot clone file: %{public}@.", &v3, 0xCu);
  }
}

void sub_1000E8820(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDHelperAgent cloneFile:to:expectingHash:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: will return.", &v1, 0xCu);
}

void sub_1000E8924(void *a1, NSObject *a2)
{
  v3 = [a1 context];
  v4 = [v3 identifier];
  v5 = 136315394;
  v6 = "[MSDSettingsInstallOperation _applySettingToDevice]";
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s - Error: unsupported device setting %{public}@ found in the manifest", &v5, 0x16u);
}

void sub_1000E89E8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDSettingsInstallOperation _updateLocale]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Error: The 'locale' manifest component does not contain valid locale data", &v1, 0xCu);
}

void sub_1000E8A6C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDSettingsInstallOperation _updateLocale]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Error writing locale info to the MSDPreferences file", &v1, 0xCu);
}

void sub_1000E8B34()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 138543362;
    v2 = @"HDR";
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Missing key %{public}@ in display settings.", &v1, 0xCu);
  }
}

void sub_1000E9460(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Unable to set power. Error: %{public}@", &v3, 0xCu);
  }
}

void sub_1000E9508()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E9544()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E9580()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    sub_1000B4CE8(&_mh_execute_header, v0, v1, "Failed to save wifi settings to our preferences file.", v2);
  }
}

void sub_1000E95E4()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E9620()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E965C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E9698()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E96D4(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100020E84(&_mh_execute_header, v6, v7, "Failed to start monitoring for CWFEventTypeLinkChanged event. Error %{public}@", v8, v9, v10, v11, v12);
  }

  *a2 = v4;
}

void sub_1000E97FC()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    sub_1000B4CE8(&_mh_execute_header, v0, v1, "Unable to get SSID for current network.", v2);
  }
}

void sub_1000E9860()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E999C()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E9A88()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E9B6C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E9BA8(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100020E84(&_mh_execute_header, v4, v5, "Failed to remove known WiFi network - %{public}@", v6, v7, v8, v9, v10);
  }
}

void sub_1000E9C5C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E9CAC(NSObject *a1, uint8_t *a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *a2 = 138543362;
    *a3 = 0;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Cannot find metadata for %{public}@", a2, 0xCu);
  }
}

void sub_1000E9D68(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = @"/tmp/DownloadedFileList.plist";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to save list of downloaded files to:  %{public}@ - Error:  %{public}@", buf, 0x16u);
}

void sub_1000E9DD4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to download file %{public}@ to %{public}@", &v4, 0x16u);
}

void sub_1000E9E70(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_100006E3C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MSDDemoPeerResponder: Failed to upload pairing password: %{public}@", v4, 0xCu);
}

void sub_1000E9F04()
{
  v1 = 136315394;
  v2 = "[MSDDemoPeerResponder _getDeviceAddresses]";
  sub_100022404();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s - addresses:  %{public}@", &v1, 0x16u);
}

void sub_1000EA0B0()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EA120(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  sub_100022404();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "MSDDemoPeerResponder: Failed to create archive for app: %{public}@ error: %{public}@", &v6, 0x16u);
}

void sub_1000EA1CC()
{
  sub_100022404();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000EA524()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_1000EA594(void *a1, uint64_t *a2)
{
  v4 = [NSError errorDomainMSDWithCode:3727744768 message:@"An error has occurred." reason:@"Failed to set language and region."];
  *a2 = v4;
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  [a1 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  v6 = [v5 localizedDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"An error has occurred.";
  }

  [a1 setObject:v8 forKeyedSubscript:@"Reason"];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[MSDDemoPeerResponder _handleSetLanguageAndRegion:]";
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s - error:  %{public}@", &v11, 0x16u);
  }

  return 0;
}

void sub_1000EA754()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EA7C4()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EA834()
{
  sub_100006E3C();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "MSDDemoPeerResponder: Received unhandled event message: %{public}@ from device: %{public}@", v2, 0x16u);
}

void sub_1000EA938(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = [v3 localizedDescription];
  v5 = 136315394;
  v6 = "+[MSDBiomeAppInFocusStream collectAppUsageDataFrom:to:]_block_invoke";
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s - Sink completed with error:  %{public}@", &v5, 0x16u);
}

void sub_1000EA9FC()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000EAA38()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000EAA74()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000EAAB0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Add closed event for app:  %{public}@", buf, 0xCu);
}

void sub_1000EAB08()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000EAB44(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Add open event for app:  %{public}@", buf, 0xCu);
}

void sub_1000EABDC()
{
  sub_1000BC638();
  sub_1000BC620(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Subsuming - start:  %{public}@ - end:  %{public}@", v5, 0x16u);
}

void sub_1000EAC34()
{
  sub_1000BC638();
  sub_1000BC620(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Subsumed  - start:  %{public}@ - end:  %{public}@", v5, 0x16u);
}

void sub_1000EAD04(void *a1)
{
  v6 = [a1 bundleID];
  sub_1000729A8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000EAD94(void *a1)
{
  [a1 starting];
  sub_1000729A8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000EAE18(void *a1)
{
  v6 = [a1 launchReason];
  sub_1000729A8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000EAEA8(void *a1)
{
  [a1 launchType];
  sub_1000729A8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000EAF2C(void *a1)
{
  v1 = [a1 absoluteTimestamp];
  v7 = [v1 toString];
  sub_1000729A8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000EB02C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 getSiriLanguage];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to set the Siri language to %{public}@, the device Siri language remains set to %{public}@", &v6, 0x16u);
}

void sub_1000EB1BC(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) getName];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@: All URL retries exhausted, returning...", &v4, 0xCu);
}

void sub_1000EB258(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 requestPerSession];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Decreased concurrent request per session to %ld", &v3, 0xCu);
}

void sub_1000EB2E4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown contaier type: %{public}@", &v2, 0xCu);
}

void sub_1000EB35C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a3;
    sub_1000C1B50();
    sub_10009711C(&_mh_execute_header, v6, v7, "Cannot remove data for container %{public}@(%{public}@), error code is %lld", v8, v9, v10, v11, v12);
  }
}

void sub_1000EB404(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a3;
    sub_1000C1B50();
    sub_10009711C(&_mh_execute_header, v6, v7, "Cannot create container object for %{public}@(%{public}@): %lld", v8, v9, v10, v11, v12);
  }
}

void sub_1000EB4AC(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a2 localizedDescription];
    v6 = 138543618;
    v7 = a1;
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ - %{public}@", &v6, 0x16u);
  }
}

void sub_1000EB580(void *a1, NSObject *a2)
{
  v3 = [a1 getName];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@: invalid request", &v4, 0xCu);
}