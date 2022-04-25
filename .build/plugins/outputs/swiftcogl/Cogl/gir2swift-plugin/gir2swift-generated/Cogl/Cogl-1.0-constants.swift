import CGLib
import CCogl
import GLib
import GLibObject

public let AFIRST_BIT = COGL_AFIRST_BIT // 64


public let A_BIT = COGL_A_BIT // 16


public let BGR_BIT = COGL_BGR_BIT // 32


public let DEPTH_BIT = COGL_DEPTH_BIT // 256


/// The number 0.5 expressed as a `CoglFixed` number.
public let FIXED_0_5 = COGL_FIXED_0_5 // 32768


/// The number 1 expressed as a `CoglFixed` number.
public let FIXED_1 = 1 // COGL_FIXED_1

/// Two times pi, expressed as a `CoglFixed` number.
public let FIXED_2_PI = COGL_FIXED_2_PI // 411775


/// Evaluates to the number of bits used by the `CoglFixed` type.
public let FIXED_BITS = COGL_FIXED_BITS // 32


/// A very small number expressed as a `CoglFixed` number.
public let FIXED_EPSILON = COGL_FIXED_EPSILON // 1


/// The biggest number representable using `CoglFixed`
public let FIXED_MAX = COGL_FIXED_MAX // 2147483647


/// The smallest number representable using `CoglFixed`
public let FIXED_MIN = COGL_FIXED_MIN // 2147483648


/// The number pi, expressed as a `CoglFixed` number.
public let FIXED_PI = COGL_FIXED_PI // 205887


/// Half pi, expressed as a `CoglFixed` number.
public let FIXED_PI_2 = COGL_FIXED_PI_2 // 102944


/// pi / 4, expressed as `CoglFixed` number.
public let FIXED_PI_4 = COGL_FIXED_PI_4 // 51472


/// Evaluates to the number of bits used for the non-integer part
/// of the `CoglFixed` type.
public let FIXED_Q = -16 // COGL_FIXED_Q

public let PREMULT_BIT = COGL_PREMULT_BIT // 128


/// Evaluates to 180 / pi in fixed point notation.
public let RADIANS_TO_DEGREES = COGL_RADIANS_TO_DEGREES // 3754936


/// Maximum argument that can be passed to `cogl_sqrti()` for which the
/// resulting error is &lt; 10%
public let SQRTI_ARG_10_PERCENT = COGL_SQRTI_ARG_10_PERCENT // 5590


/// Maximum argument that can be passed to `cogl_sqrti()` for which the
/// resulting error is &lt; 5%
public let SQRTI_ARG_5_PERCENT = COGL_SQRTI_ARG_5_PERCENT // 210


/// Maximum argument that can be passed to `cogl_sqrti()` function.
public let SQRTI_ARG_MAX = COGL_SQRTI_ARG_MAX // 4194303


public let STENCIL_BIT = COGL_STENCIL_BIT // 512


public let TEXTURE_MAX_WASTE = COGL_TEXTURE_MAX_WASTE // 127
