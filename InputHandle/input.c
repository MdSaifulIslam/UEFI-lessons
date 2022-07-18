#include <Library/UefiBootServicesTableLib.h>
#include <Library/UefiLib.h>

EFI_STATUS
EFIAPI
UefiMain (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
  UINTN Index;
  EFI_INPUT_KEY Key;
  unsigned char tmp[100];
  int i;

  Print(L"Try to guess the secret symbol!\n");
  Print(L"To quit press 'q'\n");

  while(TRUE) {
    gBS->WaitForEvent(1, &(gST->ConIn->WaitForKey), &Index);
    gST->ConIn->ReadKeyStroke(gST->ConIn, &Key);
    Print(L"%c", Key.UnicodeChar);
    tmp[i++] =  Key.UnicodeChar;

    if (Key.UnicodeChar == 'q') {
      tmp[i++] = '\0';
      Print(L"\nBye!\n");
      break;
    } 
  }
  Print(L"\n Input String is: %s %p\n", tmp, tmp);
  gST->ConIn->Reset(gST->ConIn, FALSE);
  return EFI_SUCCESS;
}
