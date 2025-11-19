BOOL sub_100057A64(int a1, void *a2, size_t a3, off_t a4)
{
  v5 = pread(a1, a2, a3, a4);
  v6 = v5;
  if (v5 != a3 && v5 != -1)
  {
    *__error() = 5;
  }

  return v6 == a3;
}

BOOL sub_100057AB0(int a1, int a2, fat_arch *a3)
{
  v4 = sub_100057A64(a1, a3, 0x14uLL, 20 * a2 + 8);
  if (v4)
  {
    swap_fat_arch(a3, 1u, NX_LittleEndian);
  }

  return v4;
}

BOOL sub_100057B04(int a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 0 || (a4 + a3) > a6 + a5)
  {
    *__error() = 34;
    return 0;
  }

  else
  {
    v7 = a5 + a4;

    return sub_100057A64(a1, a2, a3, v7);
  }
}

void sub_100057BC4(int *a1, void *a2)
{
  v2 = *a1;
  v3 = [a2 path];
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = v2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to set F_NOCACHE accessing file [%@]; error = %{darwin.errno}u", &v4, 0x12u);
}

void sub_100057CC0(uint64_t a1)
{
  v1 = 136315394;
  v2 = "MIReportIssueUsingAutoBugCapture";
  v3 = 2112;
  v4 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to report using ABC with signature: %@", &v1, 0x16u);
}

void sub_100057D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 136315906;
  v4 = "[MIInstaller removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:withError:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  v9 = 2112;
  v10 = a3;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: App %@ already has a data container with persona %@ but this installation request came for a different persona, %@. Apps may not be installed for multiple personas simultaneously. Deleting abandoned containers.", &v3, 0x2Au);
}

void sub_100057E5C(void *a1, int a2)
{
  v8 = [a1 path];
  strerror(a2);
  sub_10002A588();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_100057F2C(void *a1)
{
  v1 = [a1 path];
  sub_10002A5D4();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100057FC4(void *a1, unsigned int *a2)
{
  v3 = [a1 path];
  v4 = *a2;
  sub_10002A5B4();
  sub_10002A588();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x18u);
}

void sub_100058068(void *a1, unsigned int *a2)
{
  v3 = [a1 path];
  v4 = *a2;
  sub_10002A5B4();
  sub_10002A588();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x18u);
}

void sub_10005810C(void *a1)
{
  v1 = [a1 path];
  sub_10002A5D4();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000581CC(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 URLByDeletingLastPathComponent];
  v5 = [a3 debugDescriptionForItemAtURL:v4];
  sub_10002A594();
  sub_10002A588();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100058288(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 URLByDeletingLastPathComponent];
  v5 = [a3 debugDescriptionForItemAtURL:v4];
  sub_10002A594();
  sub_10002A588();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100058464(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  sub_10002B96C();
  sub_10002B97C();
  sub_10002A588();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Au);
}

void sub_100058518(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  sub_10002B96C();
  sub_10002B97C();
  sub_10002A588();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x2Au);
}

void sub_1000585CC(void *a1)
{
  v1 = [a1 path];
  sub_10002B96C();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100058678(void *a1)
{
  v1 = [a1 path];
  sub_10002B96C();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100058724()
{
  sub_10002B96C();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000589F8(void *a1, uint64_t a2)
{
  v3 = [a1 path];
  sub_100030170();
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to read linked parent bundles file at %@ : %@", v4, 0x16u);
}

void sub_100058A9C()
{
  sub_100030170();
  v2 = 2112;
  v3 = v0;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to read bundle metadata for %@: %@", v1, 0x16u);
}

void sub_100058C04()
{
  v3[0] = 136315906;
  sub_1000342FC();
  v4 = v0;
  v5 = v1;
  v6 = v0;
  v7 = v2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to recover install for %@/%@ : %@", v3, 0x2Au);
}

void sub_100058C9C(void *a1, uint64_t a2)
{
  v3 = [a1 identity];
  v4[0] = 136315650;
  sub_1000342FC();
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to replay journal entry for %@ after %lu attempts", v4, 0x20u);
}

void sub_100058D4C(void *a1, _DWORD *a2, void *a3)
{
  *a2 = 136315650;
  sub_100037C48(a1, a2, "[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]");
  *(v5 + 24) = @"Placeholder";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Process %@ is using an unsupported key: %@", v6, 0x20u);
}

void sub_100058DC4(void *a1, _DWORD *a2, void *a3)
{
  *a2 = 136315650;
  sub_100037C48(a1, a2, "[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]");
  *(v5 + 24) = @"ParallelPlaceholderOnlyIfExists";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Process %@ is using an unsupported key: %@", v6, 0x20u);
}

void sub_100058E3C()
{
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100058F48()
{
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100058FD0()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059054()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000590D8()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000591E0()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059264()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000592E8()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005936C()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059480(void *a1)
{
  v1 = [a1 path];
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100059524(void *a1)
{
  v1 = [a1 path];
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000595C8()
{
  sub_1000342FC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005964C(void *a1)
{
  v1 = [a1 path];
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000596F0(void *a1)
{
  v1 = [a1 path];
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100059794()
{
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10005981C()
{
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000598A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v11 = MIStringForInstallationDomain();
  v12 = *(*(*a3 + 8) + 40);
  sub_10002A588();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_10005997C()
{
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100059A04(uint64_t a1, void *a2, uint64_t a3, uint8_t *buf)
{
  *buf = 136315906;
  *(buf + 4) = "[MILaunchServicesOperationManager unregisterAppForBundleID:inDomain:operationType:precondition:error:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  *(buf + 16) = 2112;
  *(buf + 34) = a3;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to unregister record for %@ in domain %@ : %@", buf, 0x2Au);
}

void sub_100059A84()
{
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100059B0C(uint64_t a1, uint64_t a2)
{
  v7 = *(*a2 + 40);
  sub_10002A588();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_100059BB8()
{
  sub_100052BFC();
  sub_10002A588();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100059C40()
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) > 2)
  {
    MOLogWrite();
  }

  abort();
}

void sub_100059C84()
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) > 2)
  {
    MOLogWrite();
  }

  abort();
}

void sub_100059CC8(void *a1)
{
  v1 = [a1 path];
  v2 = 136315394;
  v3 = "[MIAppReferenceManager _updateReferenceAtURL:byAddingPersonaUniqueString:resultingPersonaUniqueStrings:error:]";
  v4 = 2112;
  v5 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Unexpectedly found no personas in : %@", &v2, 0x16u);
}