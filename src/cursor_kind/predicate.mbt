// The following function can be implementeded using pattern match

///|
pub extern "c" fn is_declaration(x : CursorKind) -> Bool = "clang_isDeclaration"

///|
pub extern "c" fn is_reference(x : CursorKind) -> Bool = "clang_isReference"

///|
pub extern "c" fn is_expression(x : CursorKind) -> Bool = "clang_isExpression"

///|
pub extern "c" fn is_statement(x : CursorKind) -> Bool = "clang_isStatement"

///|
pub extern "c" fn is_attribute(x : CursorKind) -> Bool = "clang_isAttribute"

///|
pub extern "c" fn is_translationUnit(x : CursorKind) -> Bool = "clang_isTranslationUnit"

///|
pub extern "c" fn is_preprocessing(x : CursorKind) -> Bool = "clang_isPreprocessing"

///|
pub extern "c" fn is_unexposed(x : CursorKind) -> Bool = "clang_isUnexposed"
