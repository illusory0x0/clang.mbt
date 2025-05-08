///|
pub extern "c" fn Index::new(
  excludeDeclarationsFromPCH : Bool,
  displayDiagnostics : Bool
) -> Index = "illusory0x0_clang_Index_new"

///|
pub fn Index::parse(
  self : Index,
  source_filename : Bytes,
  command_line_args : FixedArray[Bytes],
  option : TranslationUnit_Flags
) -> TranslationUnit!ParseError {
  let out_ec : Ref[ErrorCode] = Ref::new(Failure_)
  let res = self._parse(source_filename, command_line_args, option, out_ec)
  if out_ec.val != Success {
    raise ParseError(out_ec.val)
  } else {
    res
  }
}
