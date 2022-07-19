[Defines]
  DSC_SPECIFICATION              = 0x0001001C
  PLATFORM_GUID                  = 3db7270f-ffac-4139-90a4-0ae68f3f8167
  PLATFORM_VERSION               = 0.01
  PLATFORM_NAME                  = HelloPkg
  SKUID_IDENTIFIER               = DEFAULT
  SUPPORTED_ARCHITECTURES        = X64
  BUILD_TARGETS                  = RELEASE

[Components]
  HelloPkg/Hello/Hello.inf
  HelloPkg/ShellApp/ShellApp.inf
  HelloPkg/ShowBootOption/ShowBootOptionList.inf
  HelloPkg/InputHandle/input.inf
  HelloPkg/pcd/pcd.inf
  HelloPkg/tables/table.inf
  HelloPkg/smbios/smbios.inf
  HelloPkg/acpi/acpi.inf
  HelloPkg/find/find.inf
  HelloPkg/pci/pci.inf
  HelloPkg/hello_driver/hello_driver.inf
  HelloPkg/Library/Hello_Library/hello_library.inf
  HelloPkg/library_user/library_user.inf
  HelloPkg/ClassProtocol/class_protocol.inf
  HelloPkg/ClassUser/class_user.inf
  HelloPkg/ShowHII/ShowHII.inf

[LibraryClasses]
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  DebugLib|MdePkg/Library/UefiDebugLibConOut/UefiDebugLibConOut.inf
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  RegisterFilterLib|MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull.inf
  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  ShellCEntryLib|ShellPkg/Library/UefiShellCEntryLib/UefiShellCEntryLib.inf
  ShellLib|ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  FileHandleLib|MdePkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf  
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  SortLib|MdeModulePkg/Library/UefiSortLib/UefiSortLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  UefiDriverEntryPoint|MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  Hello_Library|HelloPkg/Library/Hello_Library/hello_library.inf

[PcdsFixedAtBuild]
  gUefiLessonsPkgTokenSpaceGuid.PcdMyVar32_2|44
  gUefiLessonsPkgTokenSpaceGuid.PcdMyVar32_1|44
  gUefiLessonsPkgTokenSpaceGuid.PcdMyVar32|44
