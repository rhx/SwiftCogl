import CGLib
import CCogl
import GLib
import GLibObject

/// The type used by cogl for function pointers, note that this type
/// is used as a generic catch-all cast for function pointers and the
/// actual arguments and return type may be different.
public typealias FuncPtr = CoglFuncPtr
