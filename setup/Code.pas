{
  Code.pas --

  This code is from the "libusb-win32" example Inno Setup script.  It has been
  modified for use by the PiAware setup.
}

function IsX64(): Boolean;
begin
  Result := Is64BitInstallMode and (ProcessorArchitecture = paX64);
end;

function IsI64(): Boolean;
begin
  Result := Is64BitInstallMode and (ProcessorArchitecture = paIA64);
end;

function IsX86(): Boolean;
begin
  Result := not IsX64 and not IsI64;
end;

function Is64(): Boolean;
begin
  Result := IsX64 or IsI64;
end;
