import CGLib
import CCogl
import GLib
import GLibObject

/// Integer representation of an angle such that 1024 corresponds to
/// full circle (i.e., 2 * pi).
public typealias Angle = CoglAngle


/// A boolean data type used throughout the Cogl C api. This should be
/// used in conjunction with the `true` and `false` macro defines for
/// setting and testing boolean values.
public typealias Bool_ = CoglBool


/// Type used for storing references to cogl objects, the CoglHandle is
/// a fully opaque type without any public data members.
public typealias Handle = CoglHandle
