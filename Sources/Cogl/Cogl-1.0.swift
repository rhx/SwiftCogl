
func cast(_ param: UInt)   -> Int    {    Int(bitPattern: param) }
func cast(_ param: Int)    -> UInt   {   UInt(bitPattern: param) }
func cast(_ param: UInt16) -> Int16  {  Int16(bitPattern: param) }
func cast(_ param: Int16)  -> UInt16 { UInt16(bitPattern: param) }
func cast(_ param: UInt32) -> Int32  {  Int32(bitPattern: param) }
func cast(_ param: Int32)  -> UInt32 { UInt32(bitPattern: param) }
func cast(_ param: UInt64) -> Int64  {  Int64(bitPattern: param) }
func cast(_ param: Int64)  -> UInt64 { UInt64(bitPattern: param) }
func cast(_ param: Float)  -> Double { Double(param) }
func cast(_ param: Float80) -> Double { Double(param) }
func cast(_ param: Double) -> Float { Float(param) }
func cast(_ param: Double) -> Float80 { Float80(param) }
func cast<U: UnsignedInteger>(_ param: U) -> Int { Int(param) }
func cast<S: SignedInteger>(_ param: S) -> Int { Int(param) }
func cast<U: UnsignedInteger>(_ param: Int) -> U { U(param) }
func cast<S: SignedInteger>(_ param: Int) -> S  { S(param) }
func cast<I: BinaryInteger>(_ param: I) -> Int32 { Int32(param) }
func cast<I: BinaryInteger>(_ param: I) -> UInt32 { UInt32(param) }
func cast<I: BinaryInteger>(_ param: I) -> Bool { param != 0 }
func cast<I: BinaryInteger>(_ param: Bool) -> I { param ? 1 : 0 }

func cast(_ param: UnsafeRawPointer?) -> String! {
    return param.map { String(cString: $0.assumingMemoryBound(to: CChar.self)) }
}

func cast(_ param: OpaquePointer?) -> String! {
    return param.map { String(cString: UnsafePointer<CChar>($0)) }
}

func cast(_ param: UnsafeRawPointer) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafeMutablePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { $0 }
}

func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { UnsafePointer<T>($0) }
}

func cast<S, T>(_ param: UnsafePointer<S>?) -> UnsafePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { UnsafePointer<T>($0) }
}

func cast<T>(_ param: OpaquePointer?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutablePointer<T>(param)
}

func cast<T>(_ param: OpaquePointer?) -> UnsafePointer<T>! {
    return UnsafePointer<T>(param)
}

func cast(_ param: OpaquePointer?) -> UnsafeMutableRawPointer! {
    return UnsafeMutableRawPointer(param)
}

func cast(_ param: UnsafeRawPointer?) -> UnsafeMutableRawPointer! {
    return UnsafeMutableRawPointer(mutating: param)
}

func cast<T>(_ param: UnsafePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<T>(_ param: UnsafeMutablePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<T>(_ param: UnsafeRawPointer?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutableRawPointer(mutating: param)?.assumingMemoryBound(to: T.self)
}

func cast<T>(_ param: UnsafeMutableRawPointer?) -> UnsafeMutablePointer<T>! {
    return param?.assumingMemoryBound(to: T.self)
}

func cast<T>(_ param: T) -> T { return param }

extension gboolean {
    private init(_ b: Bool) { self = b ? gboolean(1) : gboolean(0) }
}

func asStringArray(_ param: UnsafePointer<UnsafePointer<CChar>?>) -> [String] {
    var ptr = param
    var rv = [String]()
    while ptr.pointee != nil {
        rv.append(String(cString: ptr.pointee!))
        ptr = ptr.successor()
    }
    return rv
}

func asStringArray<T>(_ param: UnsafePointer<UnsafePointer<CChar>?>, release: ((UnsafePointer<T>?) -> Void)) -> [String] {
    let rv = asStringArray(param)
    param.withMemoryRebound(to: T.self, capacity: rv.count) { release(UnsafePointer<T>($0)) }
    return rv
}
import CGLib
import CCogl
import GLib
import GLibObject


/// The type used by cogl for function pointers, note that this type
/// is used as a generic catch-all cast for function pointers and the
/// actual arguments and return type may be different.
public typealias FuncPtr = CoglFuncPtr
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

public let AFIRST_BIT = COGL_AFIRST_BIT /* gint 64 */

public let A_BIT = COGL_A_BIT /* gint 16 */

public let BGR_BIT = COGL_BGR_BIT /* gint 32 */

public let DEPTH_BIT = COGL_DEPTH_BIT /* gint 256 */

/// The number 0.5 expressed as a `CoglFixed` number.
public let FIXED_0_5 = COGL_FIXED_0_5 /* gint 32768 */

/// The number 1 expressed as a `CoglFixed` number.
public let FIXED_1: CInt = 1 /* COGL_FIXED_1 */

/// Two times pi, expressed as a `CoglFixed` number.
public let FIXED_2_PI = COGL_FIXED_2_PI /* gint 411775 */

/// Evaluates to the number of bits used by the `CoglFixed` type.
public let FIXED_BITS = COGL_FIXED_BITS /* gint 32 */

/// A very small number expressed as a `CoglFixed` number.
public let FIXED_EPSILON = COGL_FIXED_EPSILON /* gint 1 */

/// The biggest number representable using `CoglFixed`
public let FIXED_MAX = COGL_FIXED_MAX /* gint 2147483647 */

/// The smallest number representable using `CoglFixed`
public let FIXED_MIN = COGL_FIXED_MIN /* gint 2147483648 */

/// The number pi, expressed as a `CoglFixed` number.
public let FIXED_PI = COGL_FIXED_PI /* gint 205887 */

/// Half pi, expressed as a `CoglFixed` number.
public let FIXED_PI_2 = COGL_FIXED_PI_2 /* gint 102944 */

/// pi / 4, expressed as `CoglFixed` number.
public let FIXED_PI_4 = COGL_FIXED_PI_4 /* gint 51472 */

/// Evaluates to the number of bits used for the non-integer part
/// of the `CoglFixed` type.
public let FIXED_Q: CInt = 16 /* COGL_FIXED_Q */

public let PREMULT_BIT = COGL_PREMULT_BIT /* gint 128 */

/// Evaluates to 180 / pi in fixed point notation.
public let RADIANS_TO_DEGREES = COGL_RADIANS_TO_DEGREES /* gint 3754936 */

/// Maximum argument that can be passed to `cogl_sqrti()` for which the
/// resulting error is < 10%
public let SQRTI_ARG_10_PERCENT = COGL_SQRTI_ARG_10_PERCENT /* gint 5590 */

/// Maximum argument that can be passed to `cogl_sqrti()` for which the
/// resulting error is < 5%
public let SQRTI_ARG_5_PERCENT = COGL_SQRTI_ARG_5_PERCENT /* gint 210 */

/// Maximum argument that can be passed to `cogl_sqrti()` function.
public let SQRTI_ARG_MAX = COGL_SQRTI_ARG_MAX /* gint 4194303 */

public let STENCIL_BIT = COGL_STENCIL_BIT /* gint 512 */

public let TEXTURE_MAX_WASTE = COGL_TEXTURE_MAX_WASTE /* gint 127 */
/// Types of auxiliary buffers
public struct BufferBit: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglBufferBit` enum value
    public var value: CoglBufferBit { get { CoglBufferBit(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglBufferBit` enum value
    public init(_ enumValue: CoglBufferBit) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Selects the primary color buffer
    public static let color = BufferBit(1) /* COGL_BUFFER_BIT_COLOR */
    /// Selects the depth buffer
    public static let depth = BufferBit(2) /* COGL_BUFFER_BIT_DEPTH */
    /// Selects the stencil buffer
    public static let stencil = BufferBit(4) /* COGL_BUFFER_BIT_STENCIL */


}
func cast<I: BinaryInteger>(_ param: I) -> BufferBit { BufferBit(rawValue: cast(param)) }
func cast(_ param: BufferBit) -> UInt32 { cast(param.rawValue) }


/// Target flags for FBOs.
public struct BufferTarget: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglBufferTarget` enum value
    public var value: CoglBufferTarget { get { CoglBufferTarget(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglBufferTarget` enum value
    public init(_ enumValue: CoglBufferTarget) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// FIXME
    public static let windowBuffer = BufferTarget(2) /* COGL_WINDOW_BUFFER */
    /// FIXME
    public static let offscreenBuffer = BufferTarget(4) /* COGL_OFFSCREEN_BUFFER */

    /// FIXME
    @available(*, deprecated) public static let window_buffer = BufferTarget(2) /* COGL_WINDOW_BUFFER */
    /// FIXME
    @available(*, deprecated) public static let offscreen_buffer = BufferTarget(4) /* COGL_OFFSCREEN_BUFFER */
}
func cast<I: BinaryInteger>(_ param: I) -> BufferTarget { BufferTarget(rawValue: cast(param)) }
func cast(_ param: BufferTarget) -> UInt32 { cast(param.rawValue) }


/// Defines a bit mask of color channels. This can be used with
/// `cogl_pipeline_set_color_mask()` for example to define which color
/// channels should be written to the current framebuffer when
/// drawing something.
public struct ColorMask: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglColorMask` enum value
    public var value: CoglColorMask { get { CoglColorMask(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglColorMask` enum value
    public init(_ enumValue: CoglColorMask) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// None of the color channels are masked
    public static let `none` = ColorMask(0) /* COGL_COLOR_MASK_NONE */
    /// Masks the red color channel
    public static let red = ColorMask(1) /* COGL_COLOR_MASK_RED */
    /// Masks the green color channel
    public static let green = ColorMask(2) /* COGL_COLOR_MASK_GREEN */
    /// Masks the blue color channel
    public static let blue = ColorMask(4) /* COGL_COLOR_MASK_BLUE */
    /// Masks the alpha color channel
    public static let alpha = ColorMask(8) /* COGL_COLOR_MASK_ALPHA */
    /// All of the color channels are masked
    public static let all = ColorMask(15) /* COGL_COLOR_MASK_ALL */

    /// None of the color channels are masked
    @available(*, deprecated) public static let none_ = ColorMask(0) /* COGL_COLOR_MASK_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> ColorMask { ColorMask(rawValue: cast(param)) }
func cast(_ param: ColorMask) -> UInt32 { cast(param.rawValue) }


/// Flags for the supported features.
public struct FeatureFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglFeatureFlags` enum value
    public var value: CoglFeatureFlags { get { CoglFeatureFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglFeatureFlags` enum value
    public init(_ enumValue: CoglFeatureFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// ARB_texture_rectangle support
    public static let textureRectangle = FeatureFlags(2) /* COGL_FEATURE_TEXTURE_RECTANGLE */
    /// Non power of two textures are supported
    ///    by the hardware. This is a equivalent to the
    ///    `COGL_FEATURE_TEXTURE_NPOT_BASIC`, `COGL_FEATURE_TEXTURE_NPOT_MIPMAP`
    ///    and `COGL_FEATURE_TEXTURE_NPOT_REPEAT` features combined.
    public static let textureNpot = FeatureFlags(4) /* COGL_FEATURE_TEXTURE_NPOT */
    /// ycbcr conversion support
    public static let textureYuv = FeatureFlags(8) /* COGL_FEATURE_TEXTURE_YUV */
    /// `glReadPixels()` support
    public static let textureReadPixels = FeatureFlags(16) /* COGL_FEATURE_TEXTURE_READ_PIXELS */
    /// GLSL support
    public static let shadersGlsl = FeatureFlags(32) /* COGL_FEATURE_SHADERS_GLSL */
    /// FBO support
    public static let offscreen = FeatureFlags(64) /* COGL_FEATURE_OFFSCREEN */
    /// Multisample support on FBOs
    public static let offscreenMultisample = FeatureFlags(128) /* COGL_FEATURE_OFFSCREEN_MULTISAMPLE */
    /// Blit support on FBOs
    public static let offscreenBlit = FeatureFlags(256) /* COGL_FEATURE_OFFSCREEN_BLIT */
    /// At least 4 clip planes available
    public static let fourClipPlanes = FeatureFlags(512) /* COGL_FEATURE_FOUR_CLIP_PLANES */
    /// Stencil buffer support
    public static let stencilBuffer = FeatureFlags(1024) /* COGL_FEATURE_STENCIL_BUFFER */
    /// VBO support
    public static let vbos = FeatureFlags(2048) /* COGL_FEATURE_VBOS */
    /// PBO support
    public static let pbos = FeatureFlags(4096) /* COGL_FEATURE_PBOS */
    /// Set if
    ///     `COGL_INDICES_TYPE_UNSIGNED_INT` is supported in
    ///     `cogl_vertex_buffer_indices_new()`.
    public static let unsignedIntIndices = FeatureFlags(8192) /* COGL_FEATURE_UNSIGNED_INT_INDICES */
    /// `cogl_material_set_depth_range()` support
    public static let depthRange = FeatureFlags(16384) /* COGL_FEATURE_DEPTH_RANGE */
    /// The hardware supports non power
    ///     of two textures, but you also need to check the
    ///     `COGL_FEATURE_TEXTURE_NPOT_MIPMAP` and `COGL_FEATURE_TEXTURE_NPOT_REPEAT`
    ///     features to know if the hardware supports npot texture mipmaps
    ///     or repeat modes other than
    ///     `COGL_PIPELINE_WRAP_MODE_CLAMP_TO_EDGE` respectively.
    public static let textureNpotBasic = FeatureFlags(32768) /* COGL_FEATURE_TEXTURE_NPOT_BASIC */
    /// Mipmapping is supported in
    ///     conjuntion with non power of two textures.
    public static let textureNpotMipmap = FeatureFlags(65536) /* COGL_FEATURE_TEXTURE_NPOT_MIPMAP */
    /// Repeat modes other than
    ///     `COGL_PIPELINE_WRAP_MODE_CLAMP_TO_EDGE` are supported by the
    ///     hardware.
    public static let textureNpotRepeat = FeatureFlags(131072) /* COGL_FEATURE_TEXTURE_NPOT_REPEAT */
    /// Whether
    ///     `cogl_material_set_layer_point_sprite_coords_enabled()` is supported.
    public static let pointSprite = FeatureFlags(262144) /* COGL_FEATURE_POINT_SPRITE */
    /// 3D texture support
    public static let texture3d = FeatureFlags(524288) /* COGL_FEATURE_TEXTURE_3D */
    /// ARBFP support
    public static let shadersArbfp = FeatureFlags(1048576) /* COGL_FEATURE_SHADERS_ARBFP */
    /// Whether `cogl_buffer_map()` is
    ///     supported with CoglBufferAccess including read support.
    public static let mapBufferForRead = FeatureFlags(2097152) /* COGL_FEATURE_MAP_BUFFER_FOR_READ */
    /// Whether `cogl_buffer_map()` is
    ///     supported with CoglBufferAccess including write support.
    public static let mapBufferForWrite = FeatureFlags(4194304) /* COGL_FEATURE_MAP_BUFFER_FOR_WRITE */
    public static let onscreenMultiple = FeatureFlags(8388608) /* COGL_FEATURE_ONSCREEN_MULTIPLE */
    /// Whether `CoglFramebuffer` support rendering the
    ///     depth buffer to a texture.
    public static let depthTexture = FeatureFlags(16777216) /* COGL_FEATURE_DEPTH_TEXTURE */

    /// ARB_texture_rectangle support
    @available(*, deprecated) public static let texture_rectangle = FeatureFlags(2) /* COGL_FEATURE_TEXTURE_RECTANGLE */
    /// Non power of two textures are supported
    ///    by the hardware. This is a equivalent to the
    ///    `COGL_FEATURE_TEXTURE_NPOT_BASIC`, `COGL_FEATURE_TEXTURE_NPOT_MIPMAP`
    ///    and `COGL_FEATURE_TEXTURE_NPOT_REPEAT` features combined.
    @available(*, deprecated) public static let texture_npot = FeatureFlags(4) /* COGL_FEATURE_TEXTURE_NPOT */
    /// ycbcr conversion support
    @available(*, deprecated) public static let texture_yuv = FeatureFlags(8) /* COGL_FEATURE_TEXTURE_YUV */
    /// `glReadPixels()` support
    @available(*, deprecated) public static let texture_read_pixels = FeatureFlags(16) /* COGL_FEATURE_TEXTURE_READ_PIXELS */
    /// GLSL support
    @available(*, deprecated) public static let shaders_glsl = FeatureFlags(32) /* COGL_FEATURE_SHADERS_GLSL */
    /// Multisample support on FBOs
    @available(*, deprecated) public static let offscreen_multisample = FeatureFlags(128) /* COGL_FEATURE_OFFSCREEN_MULTISAMPLE */
    /// Blit support on FBOs
    @available(*, deprecated) public static let offscreen_blit = FeatureFlags(256) /* COGL_FEATURE_OFFSCREEN_BLIT */
    /// At least 4 clip planes available
    @available(*, deprecated) public static let four_clip_planes = FeatureFlags(512) /* COGL_FEATURE_FOUR_CLIP_PLANES */
    /// Stencil buffer support
    @available(*, deprecated) public static let stencil_buffer = FeatureFlags(1024) /* COGL_FEATURE_STENCIL_BUFFER */
    /// Set if
    ///     `COGL_INDICES_TYPE_UNSIGNED_INT` is supported in
    ///     `cogl_vertex_buffer_indices_new()`.
    @available(*, deprecated) public static let unsigned_int_indices = FeatureFlags(8192) /* COGL_FEATURE_UNSIGNED_INT_INDICES */
    /// `cogl_material_set_depth_range()` support
    @available(*, deprecated) public static let depth_range = FeatureFlags(16384) /* COGL_FEATURE_DEPTH_RANGE */
    /// The hardware supports non power
    ///     of two textures, but you also need to check the
    ///     `COGL_FEATURE_TEXTURE_NPOT_MIPMAP` and `COGL_FEATURE_TEXTURE_NPOT_REPEAT`
    ///     features to know if the hardware supports npot texture mipmaps
    ///     or repeat modes other than
    ///     `COGL_PIPELINE_WRAP_MODE_CLAMP_TO_EDGE` respectively.
    @available(*, deprecated) public static let texture_npot_basic = FeatureFlags(32768) /* COGL_FEATURE_TEXTURE_NPOT_BASIC */
    /// Mipmapping is supported in
    ///     conjuntion with non power of two textures.
    @available(*, deprecated) public static let texture_npot_mipmap = FeatureFlags(65536) /* COGL_FEATURE_TEXTURE_NPOT_MIPMAP */
    /// Repeat modes other than
    ///     `COGL_PIPELINE_WRAP_MODE_CLAMP_TO_EDGE` are supported by the
    ///     hardware.
    @available(*, deprecated) public static let texture_npot_repeat = FeatureFlags(131072) /* COGL_FEATURE_TEXTURE_NPOT_REPEAT */
    /// Whether
    ///     `cogl_material_set_layer_point_sprite_coords_enabled()` is supported.
    @available(*, deprecated) public static let point_sprite = FeatureFlags(262144) /* COGL_FEATURE_POINT_SPRITE */
    /// 3D texture support
    @available(*, deprecated) public static let texture_3d = FeatureFlags(524288) /* COGL_FEATURE_TEXTURE_3D */
    /// ARBFP support
    @available(*, deprecated) public static let shaders_arbfp = FeatureFlags(1048576) /* COGL_FEATURE_SHADERS_ARBFP */
    /// Whether `cogl_buffer_map()` is
    ///     supported with CoglBufferAccess including read support.
    @available(*, deprecated) public static let map_buffer_for_read = FeatureFlags(2097152) /* COGL_FEATURE_MAP_BUFFER_FOR_READ */
    /// Whether `cogl_buffer_map()` is
    ///     supported with CoglBufferAccess including write support.
    @available(*, deprecated) public static let map_buffer_for_write = FeatureFlags(4194304) /* COGL_FEATURE_MAP_BUFFER_FOR_WRITE */
    @available(*, deprecated) public static let onscreen_multiple = FeatureFlags(8388608) /* COGL_FEATURE_ONSCREEN_MULTIPLE */
    /// Whether `CoglFramebuffer` support rendering the
    ///     depth buffer to a texture.
    @available(*, deprecated) public static let depth_texture = FeatureFlags(16777216) /* COGL_FEATURE_DEPTH_TEXTURE */
}
func cast<I: BinaryInteger>(_ param: I) -> FeatureFlags { FeatureFlags(rawValue: cast(param)) }
func cast(_ param: FeatureFlags) -> UInt32 { cast(param.rawValue) }


/// Flags for `cogl_framebuffer_read_pixels_into_bitmap()`
public struct ReadPixelsFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglReadPixelsFlags` enum value
    public var value: CoglReadPixelsFlags { get { CoglReadPixelsFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglReadPixelsFlags` enum value
    public init(_ enumValue: CoglReadPixelsFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Read from the color buffer
    public static let colorBuffer = ReadPixelsFlags(1) /* COGL_READ_PIXELS_COLOR_BUFFER */

    /// Read from the color buffer
    @available(*, deprecated) public static let color_buffer = ReadPixelsFlags(1) /* COGL_READ_PIXELS_COLOR_BUFFER */
}
func cast<I: BinaryInteger>(_ param: I) -> ReadPixelsFlags { ReadPixelsFlags(rawValue: cast(param)) }
func cast(_ param: ReadPixelsFlags) -> UInt32 { cast(param.rawValue) }


/// Flags to pass to the cogl_texture_new_* family of functions.
public struct TextureFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglTextureFlags` enum value
    public var value: CoglTextureFlags { get { CoglTextureFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglTextureFlags` enum value
    public init(_ enumValue: CoglTextureFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags specified
    public static let `none` = TextureFlags(0) /* COGL_TEXTURE_NONE */
    /// Disables the automatic generation of
    ///   the mipmap pyramid from the base level image whenever it is
    ///   updated. The mipmaps are only generated when the texture is
    ///   rendered with a mipmap filter so it should be free to leave out
    ///   this flag when using other filtering modes
    public static let noAutoMipmap = TextureFlags(1) /* COGL_TEXTURE_NO_AUTO_MIPMAP */
    /// Disables the slicing of the texture
    public static let noSlicing = TextureFlags(2) /* COGL_TEXTURE_NO_SLICING */
    /// Disables the insertion of the texture inside
    ///   the texture atlas used by Cogl
    public static let noAtlas = TextureFlags(4) /* COGL_TEXTURE_NO_ATLAS */

    /// No flags specified
    @available(*, deprecated) public static let none_ = TextureFlags(0) /* COGL_TEXTURE_NONE */
    /// Disables the automatic generation of
    ///   the mipmap pyramid from the base level image whenever it is
    ///   updated. The mipmaps are only generated when the texture is
    ///   rendered with a mipmap filter so it should be free to leave out
    ///   this flag when using other filtering modes
    @available(*, deprecated) public static let no_auto_mipmap = TextureFlags(1) /* COGL_TEXTURE_NO_AUTO_MIPMAP */
    /// Disables the slicing of the texture
    @available(*, deprecated) public static let no_slicing = TextureFlags(2) /* COGL_TEXTURE_NO_SLICING */
    /// Disables the insertion of the texture inside
    ///   the texture atlas used by Cogl
    @available(*, deprecated) public static let no_atlas = TextureFlags(4) /* COGL_TEXTURE_NO_ATLAS */
}
func cast<I: BinaryInteger>(_ param: I) -> TextureFlags { TextureFlags(rawValue: cast(param)) }
func cast(_ param: TextureFlags) -> UInt32 { cast(param.rawValue) }

// MARK: - Bitmap Class

/// The `BitmapProtocol` protocol exposes the methods and properties of an underlying `CoglBitmap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Bitmap`.
/// Alternatively, use `BitmapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BitmapProtocol {
        /// Untyped pointer to the underlying `CoglBitmap` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglBitmap` instance.
    var bitmap_ptr: UnsafeMutablePointer<CoglBitmap> { get }
}

/// The `BitmapRef` type acts as a lightweight Swift reference to an underlying `CoglBitmap` instance.
/// It exposes methods that can operate on this data type through `BitmapProtocol` conformance.
/// Use `BitmapRef` only as an `unowned` reference to an existing `CoglBitmap` instance.
///

public struct BitmapRef: BitmapProtocol {
        /// Untyped pointer to the underlying `CoglBitmap` instance.
    /// For type-safe access, use the generated, typed pointer `bitmap_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BitmapRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BitmapProtocol`
    init<T: BitmapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    init(file String_: UnsafePointer<CChar>) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<CoglBitmap>! = cast(cogl_bitmap_new_from_file(String_, &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    static func newFrom(file String_: UnsafePointer<CChar>) throws -> BitmapRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<CoglBitmap>! = cast(cogl_bitmap_new_from_file(String_, &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { BitmapRef(cast($0)) }
    }
}

/// The `Bitmap` type acts as an owner of an underlying `CoglBitmap` instance.
/// It provides the methods that can operate on this data type through `BitmapProtocol` conformance.
/// Use `Bitmap` as a strong reference or owner of a `CoglBitmap` instance.
///

open class Bitmap: BitmapProtocol {
        /// Untyped pointer to the underlying `CoglBitmap` instance.
    /// For type-safe access, use the generated, typed pointer `bitmap_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglBitmap` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglBitmap, cannot ref(cast(bitmap_ptr))
    }

    /// Reference intialiser for a related type that implements `BitmapProtocol`
    /// `CoglBitmap` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BitmapProtocol`
    public init<T: BitmapProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.bitmap_ptr)
        // no reference counting for CoglBitmap, cannot ref(cast(bitmap_ptr))
    }

    /// Do-nothing destructor for `CoglBitmap`.
    deinit {
        // no reference counting for CoglBitmap, cannot unref(cast(bitmap_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglBitmap, cannot ref(cast(bitmap_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglBitmap, cannot ref(cast(bitmap_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglBitmap, cannot ref(cast(bitmap_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglBitmap, cannot ref(cast(bitmap_ptr))
    }

    /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    public init(file String_: UnsafePointer<CChar>) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<CoglBitmap>! = cast(cogl_bitmap_new_from_file(String_, &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    public static func newFrom(file String_: UnsafePointer<CChar>) throws -> Bitmap! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<CoglBitmap>! = cast(cogl_bitmap_new_from_file(String_, &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { Bitmap(cast($0)) }
    }

}

// MARK: no Bitmap properties

// MARK: no Bitmap signals


// MARK: Bitmap Class: BitmapProtocol extension (methods and fields)
public extension BitmapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglBitmap` instance.
    var bitmap_ptr: UnsafeMutablePointer<CoglBitmap> { return ptr.assumingMemoryBound(to: CoglBitmap.self) }



}



// MARK: - Offscreen Class

/// The `OffscreenProtocol` protocol exposes the methods and properties of an underlying `CoglOffscreen` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Offscreen`.
/// Alternatively, use `OffscreenRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OffscreenProtocol {
        /// Untyped pointer to the underlying `CoglOffscreen` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglOffscreen` instance.
    var offscreen_ptr: UnsafeMutablePointer<CoglOffscreen> { get }
}

/// The `OffscreenRef` type acts as a lightweight Swift reference to an underlying `CoglOffscreen` instance.
/// It exposes methods that can operate on this data type through `OffscreenProtocol` conformance.
/// Use `OffscreenRef` only as an `unowned` reference to an existing `CoglOffscreen` instance.
///

public struct OffscreenRef: OffscreenProtocol {
        /// Untyped pointer to the underlying `CoglOffscreen` instance.
    /// For type-safe access, use the generated, typed pointer `offscreen_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OffscreenRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OffscreenProtocol`
    init<T: OffscreenProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// <note>This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) init(to_texture texture: TextureProtocol) {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_to_texture(cast(texture.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// <note>This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    /// 
    /// The storage for the framebuffer is actually allocated lazily
    /// so this function will never return `nil` to indicate a runtime
    /// error. This means it is still possible to configure the framebuffer
    /// before it is really allocated.
    /// 
    /// Simple applications without full error handling can simply rely on
    /// Cogl to lazily allocate the storage of framebuffers but you should
    /// be aware that if Cogl encounters an error (such as running out of
    /// GPU memory) then your application will simply abort with an error
    /// message. If you need to be able to catch such exceptions at runtime
    /// then you can explicitly allocate your framebuffer when you have
    /// finished configuring it by calling `cogl_framebuffer_allocate()` and
    /// passing in a `CoglError` argument to catch any exceptions.
    init(texture: TextureProtocol) {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_with_texture(cast(texture.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// <note>This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) static func newTo(to_texture texture: TextureProtocol) -> OffscreenRef! {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_to_texture(cast(texture.ptr)))
        return rv.map { OffscreenRef(cast($0)) }
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// <note>This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    /// 
    /// The storage for the framebuffer is actually allocated lazily
    /// so this function will never return `nil` to indicate a runtime
    /// error. This means it is still possible to configure the framebuffer
    /// before it is really allocated.
    /// 
    /// Simple applications without full error handling can simply rely on
    /// Cogl to lazily allocate the storage of framebuffers but you should
    /// be aware that if Cogl encounters an error (such as running out of
    /// GPU memory) then your application will simply abort with an error
    /// message. If you need to be able to catch such exceptions at runtime
    /// then you can explicitly allocate your framebuffer when you have
    /// finished configuring it by calling `cogl_framebuffer_allocate()` and
    /// passing in a `CoglError` argument to catch any exceptions.
    static func newWith(texture: TextureProtocol) -> OffscreenRef! {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_with_texture(cast(texture.ptr)))
        return rv.map { OffscreenRef(cast($0)) }
    }
}

/// The `Offscreen` type acts as an owner of an underlying `CoglOffscreen` instance.
/// It provides the methods that can operate on this data type through `OffscreenProtocol` conformance.
/// Use `Offscreen` as a strong reference or owner of a `CoglOffscreen` instance.
///

open class Offscreen: OffscreenProtocol {
        /// Untyped pointer to the underlying `CoglOffscreen` instance.
    /// For type-safe access, use the generated, typed pointer `offscreen_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglOffscreen` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglOffscreen, cannot ref(cast(offscreen_ptr))
    }

    /// Reference intialiser for a related type that implements `OffscreenProtocol`
    /// `CoglOffscreen` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OffscreenProtocol`
    public init<T: OffscreenProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.offscreen_ptr)
        // no reference counting for CoglOffscreen, cannot ref(cast(offscreen_ptr))
    }

    /// Do-nothing destructor for `CoglOffscreen`.
    deinit {
        // no reference counting for CoglOffscreen, cannot unref(cast(offscreen_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglOffscreen, cannot ref(cast(offscreen_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglOffscreen, cannot ref(cast(offscreen_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglOffscreen, cannot ref(cast(offscreen_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglOffscreen, cannot ref(cast(offscreen_ptr))
    }

    /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// <note>This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) public init(to_texture texture: TextureProtocol) {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_to_texture(cast(texture.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// <note>This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    /// 
    /// The storage for the framebuffer is actually allocated lazily
    /// so this function will never return `nil` to indicate a runtime
    /// error. This means it is still possible to configure the framebuffer
    /// before it is really allocated.
    /// 
    /// Simple applications without full error handling can simply rely on
    /// Cogl to lazily allocate the storage of framebuffers but you should
    /// be aware that if Cogl encounters an error (such as running out of
    /// GPU memory) then your application will simply abort with an error
    /// message. If you need to be able to catch such exceptions at runtime
    /// then you can explicitly allocate your framebuffer when you have
    /// finished configuring it by calling `cogl_framebuffer_allocate()` and
    /// passing in a `CoglError` argument to catch any exceptions.
    public init(texture: TextureProtocol) {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_with_texture(cast(texture.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// <note>This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) public static func newTo(to_texture texture: TextureProtocol) -> Offscreen! {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_to_texture(cast(texture.ptr)))
        return rv.map { Offscreen(cast($0)) }
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// <note>This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.</note>
    /// 
    /// The storage for the framebuffer is actually allocated lazily
    /// so this function will never return `nil` to indicate a runtime
    /// error. This means it is still possible to configure the framebuffer
    /// before it is really allocated.
    /// 
    /// Simple applications without full error handling can simply rely on
    /// Cogl to lazily allocate the storage of framebuffers but you should
    /// be aware that if Cogl encounters an error (such as running out of
    /// GPU memory) then your application will simply abort with an error
    /// message. If you need to be able to catch such exceptions at runtime
    /// then you can explicitly allocate your framebuffer when you have
    /// finished configuring it by calling `cogl_framebuffer_allocate()` and
    /// passing in a `CoglError` argument to catch any exceptions.
    public static func newWith(texture: TextureProtocol) -> Offscreen! {
        let rv: UnsafeMutablePointer<CoglOffscreen>! = cast(cogl_offscreen_new_with_texture(cast(texture.ptr)))
        return rv.map { Offscreen(cast($0)) }
    }

}

// MARK: no Offscreen properties

// MARK: no Offscreen signals


// MARK: Offscreen Class: OffscreenProtocol extension (methods and fields)
public extension OffscreenProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglOffscreen` instance.
    var offscreen_ptr: UnsafeMutablePointer<CoglOffscreen> { return ptr.assumingMemoryBound(to: CoglOffscreen.self) }



}


// MARK: - Texture Interface

/// The `TextureProtocol` protocol exposes the methods and properties of an underlying `CoglTexture` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Texture`.
/// Alternatively, use `TextureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextureProtocol {
        /// Untyped pointer to the underlying `CoglTexture` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglTexture` instance.
    var texture_ptr: UnsafeMutablePointer<CoglTexture> { get }
}

/// The `TextureRef` type acts as a lightweight Swift reference to an underlying `CoglTexture` instance.
/// It exposes methods that can operate on this data type through `TextureProtocol` conformance.
/// Use `TextureRef` only as an `unowned` reference to an existing `CoglTexture` instance.
///

public struct TextureRef: TextureProtocol {
        /// Untyped pointer to the underlying `CoglTexture` instance.
    /// For type-safe access, use the generated, typed pointer `texture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextureRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextureProtocol`
    init<T: TextureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Texture` type acts as an owner of an underlying `CoglTexture` instance.
/// It provides the methods that can operate on this data type through `TextureProtocol` conformance.
/// Use `Texture` as a strong reference or owner of a `CoglTexture` instance.
///

open class Texture: TextureProtocol {
        /// Untyped pointer to the underlying `CoglTexture` instance.
    /// For type-safe access, use the generated, typed pointer `texture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for , cannot ref(cast(texture_ptr))
    }

    /// Reference intialiser for a related type that implements `TextureProtocol`
    /// `` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextureProtocol`
    public init<T: TextureProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.texture_ptr)
        // no reference counting for , cannot ref(cast(texture_ptr))
    }

    /// Do-nothing destructor for ``.
    deinit {
        // no reference counting for , cannot unref(cast(texture_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for , cannot ref(cast(texture_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for , cannot ref(cast(texture_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for , cannot ref(cast(texture_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for , cannot ref(cast(texture_ptr))
    }



}

// MARK: no Texture properties

// MARK: no Texture signals


// MARK: Texture Interface: TextureProtocol extension (methods and fields)
public extension TextureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglTexture` instance.
    var texture_ptr: UnsafeMutablePointer<CoglTexture> { return ptr.assumingMemoryBound(to: CoglTexture.self) }

    /// Explicitly allocates the storage for the given `texture` which
    /// allows you to be sure that there is enough memory for the
    /// texture and if not then the error can be handled gracefully.
    /// 
    /// <note>Normally applications don't need to use this api directly
    /// since the texture will be implicitly allocated when data is set on
    /// the texture, or if the texture is attached to a `CoglOffscreen`
    /// framebuffer and rendered too.</note>
    func allocate() throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let rv = cogl_texture_allocate(cast(texture_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Queries what components the given `texture` stores internally as set
    /// via `cogl_texture_set_components()`.
    /// 
    /// For textures created by the ‘_with_size’ constructors the default
    /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
    /// a `CoglBitmap` or a data pointer default to the same components as
    /// the pixel format of the data.
    func getComponents() -> CoglTextureComponents {
        let rv = cogl_texture_get_components(cast(texture_ptr))
        return cast(rv)
    }

    /// Copies the pixel data from a cogl texture to system memory.
    /// 
    /// <note>Don't pass the value of `cogl_texture_get_rowstride()` as the
    /// `rowstride` argument, the rowstride should be the rowstride you
    /// want for the destination `data` buffer not the rowstride of the
    /// source texture</note>
    func getData(format: PixelFormat, rowstride: CUnsignedInt, data: UnsafeMutablePointer<UInt8>) -> Int {
        let rv: Int = cast(cogl_texture_get_data(cast(texture_ptr), format, rowstride, cast(data)))
        return cast(rv)
    }

    /// Queries the GL handles for a GPU side texture through its `CoglTexture`.
    /// 
    /// If the texture is spliced the data for the first sub texture will be
    /// queried.
    func getGlTexture(outGlHandle out_gl_handle: UnsafeMutablePointer<CUnsignedInt>, outGlTarget out_gl_target: UnsafeMutablePointer<CUnsignedInt>) -> CoglBool {
        let rv = cogl_texture_get_gl_texture(cast(texture_ptr), cast(out_gl_handle), cast(out_gl_target))
        return cast(rv)
    }

    /// Queries the height of a cogl texture.
    func getHeight() -> Int {
        let rv: Int = cast(cogl_texture_get_height(cast(texture_ptr)))
        return cast(rv)
    }

    /// Queries the maximum wasted (unused) pixels in one dimension of a GPU side
    /// texture.
    func getMaxWaste() -> Int {
        let rv: Int = cast(cogl_texture_get_max_waste(cast(texture_ptr)))
        return cast(rv)
    }

    /// Queries the pre-multiplied alpha status for internally stored red,
    /// green and blue components for the given `texture` as set by
    /// `cogl_texture_set_premultiplied()`.
    /// 
    /// By default the pre-multipled state is `TRUE`.
    func getPremultiplied() -> CoglBool {
        let rv = cogl_texture_get_premultiplied(cast(texture_ptr))
        return cast(rv)
    }

    /// Queries the width of a cogl texture.
    func getWidth() -> Int {
        let rv: Int = cast(cogl_texture_get_width(cast(texture_ptr)))
        return cast(rv)
    }

    /// Affects the internal storage format for this texture by specifying
    /// what components will be required for sampling later.
    /// 
    /// This api affects how data is uploaded to the GPU since unused
    /// components can potentially be discarded from source data.
    /// 
    /// For textures created by the ‘_with_size’ constructors the default
    /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
    /// a `CoglBitmap` or a data pointer default to the same components as
    /// the pixel format of the data.
    /// 
    /// Note that the `COGL_TEXTURE_COMPONENTS_RG` format is not available
    /// on all drivers. The availability can be determined by checking for
    /// the `COGL_FEATURE_ID_TEXTURE_RG` feature. If this format is used on
    /// a driver where it is not available then `COGL_TEXTURE_ERROR_FORMAT`
    /// will be raised when the texture is allocated. Even if the feature
    /// is not available then `COGL_PIXEL_FORMAT_RG_88` can still be used as
    /// an image format as long as `COGL_TEXTURE_COMPONENTS_RG` isn't used
    /// as the texture's components.
    func set(components: TextureComponents) {
        cogl_texture_set_components(cast(texture_ptr), components)
    
    }

    /// Affects the internal storage format for this texture by specifying
    /// whether red, green and blue color components should be stored as
    /// pre-multiplied alpha values.
    /// 
    /// This api affects how data is uploaded to the GPU since Cogl will
    /// convert source data to have premultiplied or unpremultiplied
    /// components according to this state.
    /// 
    /// For example if you create a texture via
    /// `cogl_texture_2d_new_with_size()` and then upload data via
    /// `cogl_texture_set_data()` passing a source format of
    /// `COGL_PIXEL_FORMAT_RGBA_8888` then Cogl will internally multiply the
    /// red, green and blue components of the source data by the alpha
    /// component, for each pixel so that the internally stored data has
    /// pre-multiplied alpha components. If you instead upload data that
    /// already has pre-multiplied components by passing
    /// `COGL_PIXEL_FORMAT_RGBA_8888_PRE` as the source format to
    /// `cogl_texture_set_data()` then the data can be uploaded without being
    /// converted.
    /// 
    /// By default the `premultipled` state is `TRUE`.
    func set(premultiplied: Bool_) {
        cogl_texture_set_premultiplied(cast(texture_ptr), premultiplied)
    
    }

    /// Sets the pixels in a rectangular subregion of `texture` from an in-memory
    /// buffer containing pixel data.
    /// 
    /// <note>The region set can't be larger than the source `data`</note>
    func setRegion(srcX src_x: CInt, srcY src_y: CInt, dstX dst_x: CInt, dstY dst_y: CInt, dstWidth dst_width: CUnsignedInt, dstHeight dst_height: CUnsignedInt, width: CInt, height: CInt, format: PixelFormat, rowstride: CUnsignedInt, data: UnsafePointer<UInt8>) -> CoglBool {
        let rv = cogl_texture_set_region(cast(texture_ptr), src_x, src_y, dst_x, dst_y, dst_width, dst_height, width, height, format, rowstride, cast(data))
        return cast(rv)
    }

    /// This is a convenience function for creating a material with the first
    /// layer set to `texture` and setting that material as the source with
    /// cogl_set_source.
    /// 
    /// Note: There is no interaction between calls to cogl_set_source_color
    /// and cogl_set_source_texture. If you need to blend a texture with a color then
    /// you can create a simple material like this:
    /// <programlisting>
    /// material = cogl_material_new ();
    /// cogl_material_set_color4ub (material, 0xff, 0x00, 0x00, 0x80);
    /// cogl_material_set_layer (material, 0, tex_handle);
    /// cogl_set_source (material);
    /// </programlisting>
    ///
    /// **set_source_texture is deprecated:**
    /// Latest drawing apis all take an explicit
    ///                   #CoglPipeline argument so this stack of
    ///                   #CoglMaterial<!-- -->s shouldn't be used.
    @available(*, deprecated) func setSourceTexture() {
        cogl_set_source_texture(cast(texture_ptr))
    
    }
    /// Queries what components the given `texture` stores internally as set
    /// via `cogl_texture_set_components()`.
    /// 
    /// For textures created by the ‘_with_size’ constructors the default
    /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
    /// a `CoglBitmap` or a data pointer default to the same components as
    /// the pixel format of the data.
    var components: CoglTextureComponents {
        /// Queries what components the given `texture` stores internally as set
        /// via `cogl_texture_set_components()`.
        /// 
        /// For textures created by the ‘_with_size’ constructors the default
        /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
        /// a `CoglBitmap` or a data pointer default to the same components as
        /// the pixel format of the data.
        get {
            let rv = cogl_texture_get_components(cast(texture_ptr))
            return cast(rv)
        }
        /// Affects the internal storage format for this texture by specifying
        /// what components will be required for sampling later.
        /// 
        /// This api affects how data is uploaded to the GPU since unused
        /// components can potentially be discarded from source data.
        /// 
        /// For textures created by the ‘_with_size’ constructors the default
        /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
        /// a `CoglBitmap` or a data pointer default to the same components as
        /// the pixel format of the data.
        /// 
        /// Note that the `COGL_TEXTURE_COMPONENTS_RG` format is not available
        /// on all drivers. The availability can be determined by checking for
        /// the `COGL_FEATURE_ID_TEXTURE_RG` feature. If this format is used on
        /// a driver where it is not available then `COGL_TEXTURE_ERROR_FORMAT`
        /// will be raised when the texture is allocated. Even if the feature
        /// is not available then `COGL_PIXEL_FORMAT_RG_88` can still be used as
        /// an image format as long as `COGL_TEXTURE_COMPONENTS_RG` isn't used
        /// as the texture's components.
        nonmutating set {
            cogl_texture_set_components(cast(texture_ptr), cast(newValue))
        }
    }

    /// Queries the height of a cogl texture.
    var height: Int {
        /// Queries the height of a cogl texture.
        get {
            let rv: Int = cast(cogl_texture_get_height(cast(texture_ptr)))
            return cast(rv)
        }
    }

    /// Queries if a texture is sliced (stored as multiple GPU side tecture
    /// objects).
    var isSliced: CoglBool {
        /// Queries if a texture is sliced (stored as multiple GPU side tecture
        /// objects).
        get {
            let rv = cogl_texture_is_sliced(cast(texture_ptr))
            return cast(rv)
        }
    }

    /// Queries the maximum wasted (unused) pixels in one dimension of a GPU side
    /// texture.
    var maxWaste: Int {
        /// Queries the maximum wasted (unused) pixels in one dimension of a GPU side
        /// texture.
        get {
            let rv: Int = cast(cogl_texture_get_max_waste(cast(texture_ptr)))
            return cast(rv)
        }
    }

    /// Queries the pre-multiplied alpha status for internally stored red,
    /// green and blue components for the given `texture` as set by
    /// `cogl_texture_set_premultiplied()`.
    /// 
    /// By default the pre-multipled state is `TRUE`.
    var premultiplied: CoglBool {
        /// Queries the pre-multiplied alpha status for internally stored red,
        /// green and blue components for the given `texture` as set by
        /// `cogl_texture_set_premultiplied()`.
        /// 
        /// By default the pre-multipled state is `TRUE`.
        get {
            let rv = cogl_texture_get_premultiplied(cast(texture_ptr))
            return cast(rv)
        }
        /// Affects the internal storage format for this texture by specifying
        /// whether red, green and blue color components should be stored as
        /// pre-multiplied alpha values.
        /// 
        /// This api affects how data is uploaded to the GPU since Cogl will
        /// convert source data to have premultiplied or unpremultiplied
        /// components according to this state.
        /// 
        /// For example if you create a texture via
        /// `cogl_texture_2d_new_with_size()` and then upload data via
        /// `cogl_texture_set_data()` passing a source format of
        /// `COGL_PIXEL_FORMAT_RGBA_8888` then Cogl will internally multiply the
        /// red, green and blue components of the source data by the alpha
        /// component, for each pixel so that the internally stored data has
        /// pre-multiplied alpha components. If you instead upload data that
        /// already has pre-multiplied components by passing
        /// `COGL_PIXEL_FORMAT_RGBA_8888_PRE` as the source format to
        /// `cogl_texture_set_data()` then the data can be uploaded without being
        /// converted.
        /// 
        /// By default the `premultipled` state is `TRUE`.
        nonmutating set {
            cogl_texture_set_premultiplied(cast(texture_ptr), cast(newValue))
        }
    }

    /// Queries the width of a cogl texture.
    var width: Int {
        /// Queries the width of a cogl texture.
        get {
            let rv: Int = cast(cogl_texture_get_width(cast(texture_ptr)))
            return cast(rv)
        }
    }


}


/// Data types for the components of a vertex attribute.
public typealias AttributeType = CoglAttributeType

public extension AttributeType {
    /// Data is the same size of a byte
    static let byte = COGL_ATTRIBUTE_TYPE_BYTE /* 5120 */
    /// Data is the same size of an
    ///   unsigned byte
    static let unsignedByte = COGL_ATTRIBUTE_TYPE_UNSIGNED_BYTE /* 5121 */
    /// Data is the same size of a short integer
    static let short = COGL_ATTRIBUTE_TYPE_SHORT /* 5122 */
    /// Data is the same size of
    ///   an unsigned short integer
    static let unsignedShort = COGL_ATTRIBUTE_TYPE_UNSIGNED_SHORT /* 5123 */
    /// Data is the same size of a float
    static let float = COGL_ATTRIBUTE_TYPE_FLOAT /* 5126 */
    /// Data is the same size of an
    ///   unsigned byte
    @available(*, deprecated) static let unsigned_byte = AttributeType.unsignedByte /* COGL_ATTRIBUTE_TYPE_UNSIGNED_BYTE */
    /// Data is the same size of
    ///   an unsigned short integer
    @available(*, deprecated) static let unsigned_short = AttributeType.unsignedShort /* COGL_ATTRIBUTE_TYPE_UNSIGNED_SHORT */
}
func cast<I: BinaryInteger>(_ param: I) -> AttributeType { AttributeType(rawValue: cast(param)) }
func cast(_ param: AttributeType) -> UInt32 { cast(param.rawValue) }


/// Error codes that can be thrown when performing bitmap
/// operations. Note that `gdk_pixbuf_new_from_file()` can also throw
/// errors directly from the underlying image loading library. For
/// example, if GdkPixbuf is used then errors `GdkPixbufError`<!-- -->s
/// will be used directly.
public typealias BitmapError = CoglBitmapError

public extension BitmapError {
    /// Generic failure code, something went
    ///   wrong.
    static let failed = COGL_BITMAP_ERROR_FAILED /* 0 */
    /// Unknown image type.
    static let unknownType = COGL_BITMAP_ERROR_UNKNOWN_TYPE /* 1 */
    /// An image file was broken somehow.
    static let corruptImage = COGL_BITMAP_ERROR_CORRUPT_IMAGE /* 2 */
    /// Unknown image type.
    @available(*, deprecated) static let unknown_type = BitmapError.unknownType /* COGL_BITMAP_ERROR_UNKNOWN_TYPE */
    /// An image file was broken somehow.
    @available(*, deprecated) static let corrupt_image = BitmapError.corruptImage /* COGL_BITMAP_ERROR_CORRUPT_IMAGE */
}
func cast<I: BinaryInteger>(_ param: I) -> BitmapError { BitmapError(rawValue: cast(param)) }
func cast(_ param: BitmapError) -> UInt32 { cast(param.rawValue) }


/// Error enumeration for the blend strings parser
public typealias BlendStringError = CoglBlendStringError

public extension BlendStringError {
    /// Generic parse error
    static let parseError = COGL_BLEND_STRING_ERROR_PARSE_ERROR /* 0 */
    /// Argument parse error
    static let argumentParseError = COGL_BLEND_STRING_ERROR_ARGUMENT_PARSE_ERROR /* 1 */
    /// Internal parser error
    static let invalidError = COGL_BLEND_STRING_ERROR_INVALID_ERROR /* 2 */
    /// Blend string not
    ///   supported by the GPU
    static let gpuUnsupportedError = COGL_BLEND_STRING_ERROR_GPU_UNSUPPORTED_ERROR /* 3 */
    /// Generic parse error
    @available(*, deprecated) static let parse_error = BlendStringError.parseError /* COGL_BLEND_STRING_ERROR_PARSE_ERROR */
    /// Argument parse error
    @available(*, deprecated) static let argument_parse_error = BlendStringError.argumentParseError /* COGL_BLEND_STRING_ERROR_ARGUMENT_PARSE_ERROR */
    /// Internal parser error
    @available(*, deprecated) static let invalid_error = BlendStringError.invalidError /* COGL_BLEND_STRING_ERROR_INVALID_ERROR */
    /// Blend string not
    ///   supported by the GPU
    @available(*, deprecated) static let gpu_unsupported_error = BlendStringError.gpuUnsupportedError /* COGL_BLEND_STRING_ERROR_GPU_UNSUPPORTED_ERROR */
}
func cast<I: BinaryInteger>(_ param: I) -> BlendStringError { BlendStringError(rawValue: cast(param)) }
func cast(_ param: BlendStringError) -> UInt32 { cast(param.rawValue) }


/// When using depth testing one of these functions is used to compare
/// the depth of an incoming fragment against the depth value currently
/// stored in the depth buffer. The function is changed using
/// `cogl_depth_state_set_test_function()`.
/// 
/// The test is only done when depth testing is explicitly enabled. (See
/// `cogl_depth_state_set_test_enabled()`)
public typealias DepthTestFunction = CoglDepthTestFunction

public extension DepthTestFunction {
    /// Never passes.
    static let never = COGL_DEPTH_TEST_FUNCTION_NEVER /* 512 */
    /// Passes if the fragment's depth
    /// value is less than the value currently in the depth buffer.
    static let less = COGL_DEPTH_TEST_FUNCTION_LESS /* 513 */
    /// Passes if the fragment's depth
    /// value is equal to the value currently in the depth buffer.
    static let equal = COGL_DEPTH_TEST_FUNCTION_EQUAL /* 514 */
    /// Passes if the fragment's depth
    /// value is less or equal to the value currently in the depth buffer.
    static let lequal = COGL_DEPTH_TEST_FUNCTION_LEQUAL /* 515 */
    /// Passes if the fragment's depth
    /// value is greater than the value currently in the depth buffer.
    static let greater = COGL_DEPTH_TEST_FUNCTION_GREATER /* 516 */
    /// Passes if the fragment's depth
    /// value is not equal to the value currently in the depth buffer.
    static let notequal = COGL_DEPTH_TEST_FUNCTION_NOTEQUAL /* 517 */
    /// Passes if the fragment's depth
    /// value greater than or equal to the value currently in the depth buffer.
    static let gequal = COGL_DEPTH_TEST_FUNCTION_GEQUAL /* 518 */
    /// Always passes.
    static let always = COGL_DEPTH_TEST_FUNCTION_ALWAYS /* 519 */

}
func cast<I: BinaryInteger>(_ param: I) -> DepthTestFunction { DepthTestFunction(rawValue: cast(param)) }
func cast(_ param: DepthTestFunction) -> UInt32 { cast(param.rawValue) }


/// Return values for the `CoglXlibFilterFunc` and `CoglWin32FilterFunc` functions.
public typealias FilterReturn = CoglFilterReturn

public extension FilterReturn {
    /// The event was not handled, continues the
    ///                        processing
    static let `continue` = COGL_FILTER_CONTINUE /* 0 */
    /// Remove the event, stops the processing
    static let remove = COGL_FILTER_REMOVE /* 1 */
    /// The event was not handled, continues the
    ///                        processing
    @available(*, deprecated) static let continue_ = FilterReturn.`continue` /* COGL_FILTER_CONTINUE */
}
func cast<I: BinaryInteger>(_ param: I) -> FilterReturn { FilterReturn(rawValue: cast(param)) }
func cast(_ param: FilterReturn) -> UInt32 { cast(param.rawValue) }


/// The fog mode determines the equation used to calculate the fogging blend
/// factor while fogging is enabled. The simplest `COGL_FOG_MODE_LINEAR` mode
/// determines f as:
/// 
/// ```
///   f = end - eye_distance / end - start
/// ```
/// 
/// Where eye_distance is the distance of the current fragment in eye
/// coordinates from the origin.
public typealias FogMode = CoglFogMode

public extension FogMode {
    /// Calculates the fog blend factor as:
    /// ```
    ///   f = end - eye_distance / end - start
    /// ```
    /// 
    static let linear = COGL_FOG_MODE_LINEAR /* 0 */
    /// Calculates the fog blend factor as:
    /// ```
    ///   f = e ^ -(density * eye_distance)
    /// ```
    /// 
    static let exponential = COGL_FOG_MODE_EXPONENTIAL /* 1 */
    /// Calculates the fog blend factor as:
    /// ```
    ///   f = e ^ -(density * eye_distance)^2
    /// ```
    /// 
    static let exponentialSquared = COGL_FOG_MODE_EXPONENTIAL_SQUARED /* 2 */
    /// Calculates the fog blend factor as:
    /// ```
    ///   f = e ^ -(density * eye_distance)^2
    /// ```
    /// 
    @available(*, deprecated) static let exponential_squared = FogMode.exponentialSquared /* COGL_FOG_MODE_EXPONENTIAL_SQUARED */
}
func cast<I: BinaryInteger>(_ param: I) -> FogMode { FogMode(rawValue: cast(param)) }
func cast(_ param: FogMode) -> UInt32 { cast(param.rawValue) }


/// You should aim to use the smallest data type that gives you enough
/// range, since it reduces the size of your index array and can help
/// reduce the demand on memory bandwidth.
/// 
/// Note that `COGL_INDICES_TYPE_UNSIGNED_INT` is only supported if the
/// `COGL_FEATURE_ID_UNSIGNED_INT_INDICES` feature is available. This
/// should always be available on OpenGL but on OpenGL ES it will only
/// be available if the GL_OES_element_index_uint extension is
/// advertized.
public typealias IndicesType = CoglIndicesType

public extension IndicesType {
    /// Your indices are unsigned bytes
    static let byte = COGL_INDICES_TYPE_UNSIGNED_BYTE /* 0 */
    /// Your indices are unsigned shorts
    static let short = COGL_INDICES_TYPE_UNSIGNED_SHORT /* 1 */
    /// Your indices are unsigned ints
    static let int = COGL_INDICES_TYPE_UNSIGNED_INT /* 2 */

}
func cast<I: BinaryInteger>(_ param: I) -> IndicesType { IndicesType(rawValue: cast(param)) }
func cast(_ param: IndicesType) -> UInt32 { cast(param.rawValue) }


/// Alpha testing happens before blending primitives with the framebuffer and
/// gives an opportunity to discard fragments based on a comparison with the
/// incoming alpha value and a reference alpha value. The `CoglMaterialAlphaFunc`
/// determines how the comparison is done.
public typealias MaterialAlphaFunc = CoglMaterialAlphaFunc

public extension MaterialAlphaFunc {
    /// Never let the fragment through.
    static let never = COGL_MATERIAL_ALPHA_FUNC_NEVER /* 512 */
    /// Let the fragment through if the incoming
    ///   alpha value is less than the reference alpha value
    static let less = COGL_MATERIAL_ALPHA_FUNC_LESS /* 513 */
    /// Let the fragment through if the incoming
    ///   alpha value equals the reference alpha value
    static let equal = COGL_MATERIAL_ALPHA_FUNC_EQUAL /* 514 */
    /// Let the fragment through if the incoming
    ///   alpha value is less than or equal to the reference alpha value
    static let lequal = COGL_MATERIAL_ALPHA_FUNC_LEQUAL /* 515 */
    /// Let the fragment through if the incoming
    ///   alpha value is greater than the reference alpha value
    static let greater = COGL_MATERIAL_ALPHA_FUNC_GREATER /* 516 */
    /// Let the fragment through if the incoming
    ///   alpha value does not equal the reference alpha value
    static let notequal = COGL_MATERIAL_ALPHA_FUNC_NOTEQUAL /* 517 */
    /// Let the fragment through if the incoming
    ///   alpha value is greater than or equal to the reference alpha value.
    static let gequal = COGL_MATERIAL_ALPHA_FUNC_GEQUAL /* 518 */
    /// Always let the fragment through.
    static let always = COGL_MATERIAL_ALPHA_FUNC_ALWAYS /* 519 */

}
func cast<I: BinaryInteger>(_ param: I) -> MaterialAlphaFunc { MaterialAlphaFunc(rawValue: cast(param)) }
func cast(_ param: MaterialAlphaFunc) -> UInt32 { cast(param.rawValue) }


/// Texture filtering is used whenever the current pixel maps either to more
/// than one texture element (texel) or less than one. These filter enums
/// correspond to different strategies used to come up with a pixel color, by
/// possibly referring to multiple neighbouring texels and taking a weighted
/// average or simply using the nearest texel.
public typealias MaterialFilter = CoglMaterialFilter

public extension MaterialFilter {
    /// Measuring in manhatten distance from the,
    ///   current pixel center, use the nearest texture texel
    static let nearest = COGL_MATERIAL_FILTER_NEAREST /* 9728 */
    /// Use the weighted average of the 4 texels
    ///   nearest the current pixel center
    static let linear = COGL_MATERIAL_FILTER_LINEAR /* 9729 */
    /// Select the mimap level whose
    ///   texel size most closely matches the current pixel, and use the
    ///   `COGL_MATERIAL_FILTER_NEAREST` criterion
    static let nearestMipmapNearest = COGL_MATERIAL_FILTER_NEAREST_MIPMAP_NEAREST /* 9984 */
    /// Select the mimap level whose
    ///   texel size most closely matches the current pixel, and use the
    ///   `COGL_MATERIAL_FILTER_LINEAR` criterion
    static let linearMipmapNearest = COGL_MATERIAL_FILTER_LINEAR_MIPMAP_NEAREST /* 9985 */
    /// Select the two mimap levels
    ///   whose texel size most closely matches the current pixel, use
    ///   the `COGL_MATERIAL_FILTER_NEAREST` criterion on each one and take
    ///   their weighted average
    static let nearestMipmapLinear = COGL_MATERIAL_FILTER_NEAREST_MIPMAP_LINEAR /* 9986 */
    /// Select the two mimap levels
    ///   whose texel size most closely matches the current pixel, use
    ///   the `COGL_MATERIAL_FILTER_LINEAR` criterion on each one and take
    ///   their weighted average
    static let linearMipmapLinear = COGL_MATERIAL_FILTER_LINEAR_MIPMAP_LINEAR /* 9987 */
    /// Select the mimap level whose
    ///   texel size most closely matches the current pixel, and use the
    ///   `COGL_MATERIAL_FILTER_NEAREST` criterion
    @available(*, deprecated) static let nearest_mipmap_nearest = MaterialFilter.nearestMipmapNearest /* COGL_MATERIAL_FILTER_NEAREST_MIPMAP_NEAREST */
    /// Select the mimap level whose
    ///   texel size most closely matches the current pixel, and use the
    ///   `COGL_MATERIAL_FILTER_LINEAR` criterion
    @available(*, deprecated) static let linear_mipmap_nearest = MaterialFilter.linearMipmapNearest /* COGL_MATERIAL_FILTER_LINEAR_MIPMAP_NEAREST */
    /// Select the two mimap levels
    ///   whose texel size most closely matches the current pixel, use
    ///   the `COGL_MATERIAL_FILTER_NEAREST` criterion on each one and take
    ///   their weighted average
    @available(*, deprecated) static let nearest_mipmap_linear = MaterialFilter.nearestMipmapLinear /* COGL_MATERIAL_FILTER_NEAREST_MIPMAP_LINEAR */
    /// Select the two mimap levels
    ///   whose texel size most closely matches the current pixel, use
    ///   the `COGL_MATERIAL_FILTER_LINEAR` criterion on each one and take
    ///   their weighted average
    @available(*, deprecated) static let linear_mipmap_linear = MaterialFilter.linearMipmapLinear /* COGL_MATERIAL_FILTER_LINEAR_MIPMAP_LINEAR */
}
func cast<I: BinaryInteger>(_ param: I) -> MaterialFilter { MaterialFilter(rawValue: cast(param)) }
func cast(_ param: MaterialFilter) -> UInt32 { cast(param.rawValue) }


/// Available types of layers for a `CoglMaterial`. This enumeration
/// might be expanded in later versions.
public typealias MaterialLayerType = CoglMaterialLayerType

public extension MaterialLayerType {
    /// The layer represents a
    ///   <link linkend="cogl-Textures">texture</link>
    static let texture = COGL_MATERIAL_LAYER_TYPE_TEXTURE /* 0 */

}
func cast<I: BinaryInteger>(_ param: I) -> MaterialLayerType { MaterialLayerType(rawValue: cast(param)) }
func cast(_ param: MaterialLayerType) -> UInt32 { cast(param.rawValue) }


/// The wrap mode specifies what happens when texture coordinates
/// outside the range 0→1 are used. Note that if the filter mode is
/// anything but `COGL_MATERIAL_FILTER_NEAREST` then texels outside the
/// range 0→1 might be used even when the coordinate is exactly 0 or 1
/// because OpenGL will try to sample neighbouring pixels. For example
/// if you are trying to render the full texture then you may get
/// artifacts around the edges when the pixels from the other side are
/// merged in if the wrap mode is set to repeat.
public typealias MaterialWrapMode = CoglMaterialWrapMode

public extension MaterialWrapMode {
    /// The texture will be repeated. This
    ///   is useful for example to draw a tiled background.
    static let `repeat` = COGL_MATERIAL_WRAP_MODE_REPEAT /* 10497 */
    /// The coordinates outside the
    ///   range 0→1 will sample copies of the edge pixels of the
    ///   texture. This is useful to avoid artifacts if only one copy of
    ///   the texture is being rendered.
    static let clampToEdge = COGL_MATERIAL_WRAP_MODE_CLAMP_TO_EDGE /* 33071 */
    /// Cogl will try to automatically
    ///   decide which of the above two to use. For `cogl_rectangle()`, it
    ///   will use repeat mode if any of the texture coordinates are
    ///   outside the range 0→1, otherwise it will use clamp to edge. For
    ///   `cogl_polygon()` it will always use repeat mode. For
    ///   `cogl_vertex_buffer_draw()` it will use repeat mode except for
    ///   layers that have point sprite coordinate generation enabled. This
    ///   is the default value.
    static let automatic = COGL_MATERIAL_WRAP_MODE_AUTOMATIC /* 519 */
    /// The texture will be repeated. This
    ///   is useful for example to draw a tiled background.
    @available(*, deprecated) static let repeat_ = MaterialWrapMode.`repeat` /* COGL_MATERIAL_WRAP_MODE_REPEAT */
    /// The coordinates outside the
    ///   range 0→1 will sample copies of the edge pixels of the
    ///   texture. This is useful to avoid artifacts if only one copy of
    ///   the texture is being rendered.
    @available(*, deprecated) static let clamp_to_edge = MaterialWrapMode.clampToEdge /* COGL_MATERIAL_WRAP_MODE_CLAMP_TO_EDGE */
}
func cast<I: BinaryInteger>(_ param: I) -> MaterialWrapMode { MaterialWrapMode(rawValue: cast(param)) }
func cast(_ param: MaterialWrapMode) -> UInt32 { cast(param.rawValue) }


/// Pixel formats used by Cogl. For the formats with a byte per
/// component, the order of the components specify the order in
/// increasing memory addresses. So for example
/// `COGL_PIXEL_FORMAT_RGB_888` would have the red component in the
/// lowest address, green in the next address and blue after that
/// regardless of the endianness of the system.
/// 
/// For the formats with non byte aligned components the component
/// order specifies the order within a 16-bit or 32-bit number from
/// most significant bit to least significant. So for
/// `COGL_PIXEL_FORMAT_RGB_565`, the red component would be in bits
/// 11-15, the green component would be in 6-11 and the blue component
/// would be in 1-5. Therefore the order in memory depends on the
/// endianness of the system.
/// 
/// When uploading a texture `COGL_PIXEL_FORMAT_ANY` can be used as the
/// internal format. Cogl will try to pick the best format to use
/// internally and convert the texture data if necessary.
public typealias PixelFormat = CoglPixelFormat

public extension PixelFormat {
    /// Any format
    static let any = COGL_PIXEL_FORMAT_ANY /* 0 */
    /// 8 bits alpha mask
    static let a8 = COGL_PIXEL_FORMAT_A_8 /* 17 */
    /// RGB, 16 bits
    static let rgb565 = COGL_PIXEL_FORMAT_RGB_565 /* 4 */
    /// RGBA, 16 bits
    static let rgba4444 = COGL_PIXEL_FORMAT_RGBA_4444 /* 21 */
    /// RGBA, 16 bits
    static let rgba5551 = COGL_PIXEL_FORMAT_RGBA_5551 /* 22 */
    /// Not currently supported
    static let yuv = COGL_PIXEL_FORMAT_YUV /* 7 */
    /// Single luminance component
    static let g8 = COGL_PIXEL_FORMAT_G_8 /* 8 */
    /// RG, 16 bits. Note that red-green textures
    ///   are only available if `COGL_FEATURE_ID_TEXTURE_RG` is advertised.
    ///   See `cogl_texture_set_components()` for details.
    static let rg88 = COGL_PIXEL_FORMAT_RG_88 /* 9 */
    /// RGB, 24 bits
    static let rgb888 = COGL_PIXEL_FORMAT_RGB_888 /* 2 */
    /// BGR, 24 bits
    static let bgr888 = COGL_PIXEL_FORMAT_BGR_888 /* 34 */
    /// RGBA, 32 bits
    static let rgba8888 = COGL_PIXEL_FORMAT_RGBA_8888 /* 19 */
    /// BGRA, 32 bits
    static let bgra8888 = COGL_PIXEL_FORMAT_BGRA_8888 /* 51 */
    /// ARGB, 32 bits
    static let argb8888 = COGL_PIXEL_FORMAT_ARGB_8888 /* 83 */
    /// ABGR, 32 bits
    static let abgr8888 = COGL_PIXEL_FORMAT_ABGR_8888 /* 115 */
    /// RGBA, 32 bits, 10 bpc
    static let rgba1010102 = COGL_PIXEL_FORMAT_RGBA_1010102 /* 29 */
    /// BGRA, 32 bits, 10 bpc
    static let bgra1010102 = COGL_PIXEL_FORMAT_BGRA_1010102 /* 61 */
    /// ARGB, 32 bits, 10 bpc
    static let argb2101010 = COGL_PIXEL_FORMAT_ARGB_2101010 /* 93 */
    /// ABGR, 32 bits, 10 bpc
    static let abgr2101010 = COGL_PIXEL_FORMAT_ABGR_2101010 /* 125 */
    /// Premultiplied RGBA, 32 bits
    static let rgba8888Pre = COGL_PIXEL_FORMAT_RGBA_8888_PRE /* 147 */
    /// Premultiplied BGRA, 32 bits
    static let bgra8888Pre = COGL_PIXEL_FORMAT_BGRA_8888_PRE /* 179 */
    /// Premultiplied ARGB, 32 bits
    static let argb8888Pre = COGL_PIXEL_FORMAT_ARGB_8888_PRE /* 211 */
    /// Premultiplied ABGR, 32 bits
    static let abgr8888Pre = COGL_PIXEL_FORMAT_ABGR_8888_PRE /* 243 */
    /// Premultiplied RGBA, 16 bits
    static let rgba4444Pre = COGL_PIXEL_FORMAT_RGBA_4444_PRE /* 149 */
    /// Premultiplied RGBA, 16 bits
    static let rgba5551Pre = COGL_PIXEL_FORMAT_RGBA_5551_PRE /* 150 */
    /// Premultiplied RGBA, 32 bits, 10 bpc
    static let rgba1010102Pre = COGL_PIXEL_FORMAT_RGBA_1010102_PRE /* 157 */
    /// Premultiplied BGRA, 32 bits, 10 bpc
    static let bgra1010102Pre = COGL_PIXEL_FORMAT_BGRA_1010102_PRE /* 189 */
    /// Premultiplied ARGB, 32 bits, 10 bpc
    static let argb2101010Pre = COGL_PIXEL_FORMAT_ARGB_2101010_PRE /* 221 */
    /// Premultiplied ABGR, 32 bits, 10 bpc
    static let abgr2101010Pre = COGL_PIXEL_FORMAT_ABGR_2101010_PRE /* 253 */
    static let depth16 = COGL_PIXEL_FORMAT_DEPTH_16 /* 265 */
    static let depth32 = COGL_PIXEL_FORMAT_DEPTH_32 /* 259 */
    static let depth24Stencil8 = COGL_PIXEL_FORMAT_DEPTH_24_STENCIL_8 /* 771 */
    /// 8 bits alpha mask
    @available(*, deprecated) static let a_8 = PixelFormat.a8 /* COGL_PIXEL_FORMAT_A_8 */
    /// RGB, 16 bits
    @available(*, deprecated) static let rgb_565 = PixelFormat.rgb565 /* COGL_PIXEL_FORMAT_RGB_565 */
    /// RGBA, 16 bits
    @available(*, deprecated) static let rgba_4444 = PixelFormat.rgba4444 /* COGL_PIXEL_FORMAT_RGBA_4444 */
    /// RGBA, 16 bits
    @available(*, deprecated) static let rgba_5551 = PixelFormat.rgba5551 /* COGL_PIXEL_FORMAT_RGBA_5551 */
    /// Single luminance component
    @available(*, deprecated) static let g_8 = PixelFormat.g8 /* COGL_PIXEL_FORMAT_G_8 */
    /// RG, 16 bits. Note that red-green textures
    ///   are only available if `COGL_FEATURE_ID_TEXTURE_RG` is advertised.
    ///   See `cogl_texture_set_components()` for details.
    @available(*, deprecated) static let rg_88 = PixelFormat.rg88 /* COGL_PIXEL_FORMAT_RG_88 */
    /// RGB, 24 bits
    @available(*, deprecated) static let rgb_888 = PixelFormat.rgb888 /* COGL_PIXEL_FORMAT_RGB_888 */
    /// BGR, 24 bits
    @available(*, deprecated) static let bgr_888 = PixelFormat.bgr888 /* COGL_PIXEL_FORMAT_BGR_888 */
    /// RGBA, 32 bits
    @available(*, deprecated) static let rgba_8888 = PixelFormat.rgba8888 /* COGL_PIXEL_FORMAT_RGBA_8888 */
    /// BGRA, 32 bits
    @available(*, deprecated) static let bgra_8888 = PixelFormat.bgra8888 /* COGL_PIXEL_FORMAT_BGRA_8888 */
    /// ARGB, 32 bits
    @available(*, deprecated) static let argb_8888 = PixelFormat.argb8888 /* COGL_PIXEL_FORMAT_ARGB_8888 */
    /// ABGR, 32 bits
    @available(*, deprecated) static let abgr_8888 = PixelFormat.abgr8888 /* COGL_PIXEL_FORMAT_ABGR_8888 */
    /// RGBA, 32 bits, 10 bpc
    @available(*, deprecated) static let rgba_1010102 = PixelFormat.rgba1010102 /* COGL_PIXEL_FORMAT_RGBA_1010102 */
    /// BGRA, 32 bits, 10 bpc
    @available(*, deprecated) static let bgra_1010102 = PixelFormat.bgra1010102 /* COGL_PIXEL_FORMAT_BGRA_1010102 */
    /// ARGB, 32 bits, 10 bpc
    @available(*, deprecated) static let argb_2101010 = PixelFormat.argb2101010 /* COGL_PIXEL_FORMAT_ARGB_2101010 */
    /// ABGR, 32 bits, 10 bpc
    @available(*, deprecated) static let abgr_2101010 = PixelFormat.abgr2101010 /* COGL_PIXEL_FORMAT_ABGR_2101010 */
    /// Premultiplied RGBA, 32 bits
    @available(*, deprecated) static let rgba_8888_pre = PixelFormat.rgba8888Pre /* COGL_PIXEL_FORMAT_RGBA_8888_PRE */
    /// Premultiplied BGRA, 32 bits
    @available(*, deprecated) static let bgra_8888_pre = PixelFormat.bgra8888Pre /* COGL_PIXEL_FORMAT_BGRA_8888_PRE */
    /// Premultiplied ARGB, 32 bits
    @available(*, deprecated) static let argb_8888_pre = PixelFormat.argb8888Pre /* COGL_PIXEL_FORMAT_ARGB_8888_PRE */
    /// Premultiplied ABGR, 32 bits
    @available(*, deprecated) static let abgr_8888_pre = PixelFormat.abgr8888Pre /* COGL_PIXEL_FORMAT_ABGR_8888_PRE */
    /// Premultiplied RGBA, 16 bits
    @available(*, deprecated) static let rgba_4444_pre = PixelFormat.rgba4444Pre /* COGL_PIXEL_FORMAT_RGBA_4444_PRE */
    /// Premultiplied RGBA, 16 bits
    @available(*, deprecated) static let rgba_5551_pre = PixelFormat.rgba5551Pre /* COGL_PIXEL_FORMAT_RGBA_5551_PRE */
    /// Premultiplied RGBA, 32 bits, 10 bpc
    @available(*, deprecated) static let rgba_1010102_pre = PixelFormat.rgba1010102Pre /* COGL_PIXEL_FORMAT_RGBA_1010102_PRE */
    /// Premultiplied BGRA, 32 bits, 10 bpc
    @available(*, deprecated) static let bgra_1010102_pre = PixelFormat.bgra1010102Pre /* COGL_PIXEL_FORMAT_BGRA_1010102_PRE */
    /// Premultiplied ARGB, 32 bits, 10 bpc
    @available(*, deprecated) static let argb_2101010_pre = PixelFormat.argb2101010Pre /* COGL_PIXEL_FORMAT_ARGB_2101010_PRE */
    /// Premultiplied ABGR, 32 bits, 10 bpc
    @available(*, deprecated) static let abgr_2101010_pre = PixelFormat.abgr2101010Pre /* COGL_PIXEL_FORMAT_ABGR_2101010_PRE */
    @available(*, deprecated) static let depth_16 = PixelFormat.depth16 /* COGL_PIXEL_FORMAT_DEPTH_16 */
    @available(*, deprecated) static let depth_32 = PixelFormat.depth32 /* COGL_PIXEL_FORMAT_DEPTH_32 */
    @available(*, deprecated) static let depth_24_stencil_8 = PixelFormat.depth24Stencil8 /* COGL_PIXEL_FORMAT_DEPTH_24_STENCIL_8 */
}
func cast<I: BinaryInteger>(_ param: I) -> PixelFormat { PixelFormat(rawValue: cast(param)) }
func cast(_ param: PixelFormat) -> UInt32 { cast(param.rawValue) }


public typealias RendererError = CoglRendererError

public extension RendererError {
    static let xlibDisplayOpen = COGL_RENDERER_ERROR_XLIB_DISPLAY_OPEN /* 0 */
    static let badConstraint = COGL_RENDERER_ERROR_BAD_CONSTRAINT /* 1 */
    @available(*, deprecated) static let xlib_display_open = RendererError.xlibDisplayOpen /* COGL_RENDERER_ERROR_XLIB_DISPLAY_OPEN */
    @available(*, deprecated) static let bad_constraint = RendererError.badConstraint /* COGL_RENDERER_ERROR_BAD_CONSTRAINT */
}
func cast<I: BinaryInteger>(_ param: I) -> RendererError { RendererError(rawValue: cast(param)) }
func cast(_ param: RendererError) -> UInt32 { cast(param.rawValue) }


/// Types of shaders
public typealias ShaderType = CoglShaderType

public extension ShaderType {
    /// A program for proccessing vertices
    static let vertex = COGL_SHADER_TYPE_VERTEX /* 0 */
    /// A program for processing fragments
    static let fragment = COGL_SHADER_TYPE_FRAGMENT /* 1 */

}
func cast<I: BinaryInteger>(_ param: I) -> ShaderType { ShaderType(rawValue: cast(param)) }
func cast(_ param: ShaderType) -> UInt32 { cast(param.rawValue) }


/// Represents how draw should affect the two buffers
/// of a stereo framebuffer. See `cogl_framebuffer_set_stereo_mode()`.
public typealias StereoMode = CoglStereoMode

public extension StereoMode {
    /// draw to both stereo buffers
    static let both = COGL_STEREO_BOTH /* 0 */
    /// draw only to the left stereo buffer
    static let `left` = COGL_STEREO_LEFT /* 1 */
    /// draw only to the left stereo buffer
    static let `right` = COGL_STEREO_RIGHT /* 2 */
    /// draw only to the left stereo buffer
    @available(*, deprecated) static let left_ = StereoMode.`left` /* COGL_STEREO_LEFT */
    /// draw only to the left stereo buffer
    @available(*, deprecated) static let right_ = StereoMode.`right` /* COGL_STEREO_RIGHT */
}
func cast<I: BinaryInteger>(_ param: I) -> StereoMode { StereoMode(rawValue: cast(param)) }
func cast(_ param: StereoMode) -> UInt32 { cast(param.rawValue) }


/// Error enumeration for Cogl
/// 
/// The `COGL_SYSTEM_ERROR_UNSUPPORTED` error can be thrown for a
/// variety of reasons. For example:
/// 
/// <itemizedlist>
///  <listitem><para>You've tried to use a feature that is not
///   advertised by `cogl_has_feature()`. This could happen if you create
///   a 2d texture with a non-power-of-two size when
///   `COGL_FEATURE_ID_TEXTURE_NPOT` is not advertised.</para></listitem>
///  <listitem><para>The GPU can not handle the configuration you have
///   requested. An example might be if you try to use too many texture
///   layers in a single `CoglPipeline`</para></listitem>
///  <listitem><para>The driver does not support some
///   configuration.</para></listiem>
/// </itemizedlist>
/// 
/// Currently this is only used by Cogl API marked as experimental so
/// this enum should also be considered experimental.
public typealias SystemError = CoglSystemError

public extension SystemError {
    /// You tried to use a feature or
    ///    configuration not currently available.
    static let coglSystemErrorUnsupported = COGL_SYSTEM_ERROR_UNSUPPORTED /* 0 */
    /// You tried to allocate a resource
    ///    such as a texture and there wasn't enough memory.
    static let coglSystemErrorNoMemory = COGL_SYSTEM_ERROR_NO_MEMORY /* 1 */
    /// You tried to use a feature or
    ///    configuration not currently available.
    @available(*, deprecated) static let cogl_system_error_unsupported = SystemError.coglSystemErrorUnsupported /* COGL_SYSTEM_ERROR_UNSUPPORTED */
    /// You tried to allocate a resource
    ///    such as a texture and there wasn't enough memory.
    @available(*, deprecated) static let cogl_system_error_no_memory = SystemError.coglSystemErrorNoMemory /* COGL_SYSTEM_ERROR_NO_MEMORY */
}
func cast<I: BinaryInteger>(_ param: I) -> SystemError { SystemError(rawValue: cast(param)) }
func cast(_ param: SystemError) -> UInt32 { cast(param.rawValue) }


/// See `cogl_texture_set_components()`.
public typealias TextureComponents = CoglTextureComponents

public extension TextureComponents {
    /// Only the alpha component
    static let a = COGL_TEXTURE_COMPONENTS_A /* 1 */
    /// Red and green components. Note that
    ///   this can only be used if the `COGL_FEATURE_ID_TEXTURE_RG` feature
    ///   is advertised.
    static let rg = COGL_TEXTURE_COMPONENTS_RG /* 2 */
    /// Red, green and blue components
    static let rgb = COGL_TEXTURE_COMPONENTS_RGB /* 3 */
    /// Red, green, blue and alpha components
    static let rgba = COGL_TEXTURE_COMPONENTS_RGBA /* 4 */
    /// Only a depth component
    static let depth = COGL_TEXTURE_COMPONENTS_DEPTH /* 5 */

}
func cast<I: BinaryInteger>(_ param: I) -> TextureComponents { TextureComponents(rawValue: cast(param)) }
func cast(_ param: TextureComponents) -> UInt32 { cast(param.rawValue) }


/// Error codes that can be thrown when allocating textures.
public typealias TextureError = CoglTextureError

public extension TextureError {
    /// Unsupported size
    static let size = COGL_TEXTURE_ERROR_SIZE /* 0 */
    /// Unsupported format
    static let format = COGL_TEXTURE_ERROR_FORMAT /* 1 */
    static let badParameter = COGL_TEXTURE_ERROR_BAD_PARAMETER /* 2 */
    /// A primitive texture type that is
    ///   unsupported by the driver was used
    static let type = COGL_TEXTURE_ERROR_TYPE /* 3 */
    @available(*, deprecated) static let bad_parameter = TextureError.badParameter /* COGL_TEXTURE_ERROR_BAD_PARAMETER */
}
func cast<I: BinaryInteger>(_ param: I) -> TextureError { TextureError(rawValue: cast(param)) }
func cast(_ param: TextureError) -> UInt32 { cast(param.rawValue) }


/// Constants representing the underlying hardware texture type of a
/// `CoglTexture`.
public typealias TextureType = CoglTextureType

public extension TextureType {
    /// A `CoglTexture2D`
    static let _2d = COGL_TEXTURE_TYPE_2D /* 0 */
    /// A `CoglTexture3D`
    static let _3d = COGL_TEXTURE_TYPE_3D /* 1 */
    /// A `CoglTextureRectangle`
    static let rectangle = COGL_TEXTURE_TYPE_RECTANGLE /* 2 */

}
func cast<I: BinaryInteger>(_ param: I) -> TextureType { TextureType(rawValue: cast(param)) }
func cast(_ param: TextureType) -> UInt32 { cast(param.rawValue) }


/// Different ways of interpreting vertices when drawing.
public typealias VerticesMode = CoglVerticesMode

public extension VerticesMode {
    /// FIXME, equivalent to
    /// <constant>GL_POINTS</constant>
    static let points = COGL_VERTICES_MODE_POINTS /* 0 */
    /// FIXME, equivalent to <constant>GL_LINES</constant>
    static let lines = COGL_VERTICES_MODE_LINES /* 1 */
    /// FIXME, equivalent to
    /// <constant>GL_LINE_LOOP</constant>
    static let lineLoop = COGL_VERTICES_MODE_LINE_LOOP /* 2 */
    /// FIXME, equivalent to
    /// <constant>GL_LINE_STRIP</constant>
    static let lineStrip = COGL_VERTICES_MODE_LINE_STRIP /* 3 */
    /// FIXME, equivalent to
    /// <constant>GL_TRIANGLES</constant>
    static let triangles = COGL_VERTICES_MODE_TRIANGLES /* 4 */
    /// FIXME, equivalent to
    /// <constant>GL_TRIANGLE_STRIP</constant>
    static let triangleStrip = COGL_VERTICES_MODE_TRIANGLE_STRIP /* 5 */
    /// FIXME, equivalent to <constant>GL_TRIANGLE_FAN</constant>
    static let triangleFan = COGL_VERTICES_MODE_TRIANGLE_FAN /* 6 */
    /// FIXME, equivalent to
    /// <constant>GL_LINE_LOOP</constant>
    @available(*, deprecated) static let line_loop = VerticesMode.lineLoop /* COGL_VERTICES_MODE_LINE_LOOP */
    /// FIXME, equivalent to
    /// <constant>GL_LINE_STRIP</constant>
    @available(*, deprecated) static let line_strip = VerticesMode.lineStrip /* COGL_VERTICES_MODE_LINE_STRIP */
    /// FIXME, equivalent to
    /// <constant>GL_TRIANGLE_STRIP</constant>
    @available(*, deprecated) static let triangle_strip = VerticesMode.triangleStrip /* COGL_VERTICES_MODE_TRIANGLE_STRIP */
    /// FIXME, equivalent to <constant>GL_TRIANGLE_FAN</constant>
    @available(*, deprecated) static let triangle_fan = VerticesMode.triangleFan /* COGL_VERTICES_MODE_TRIANGLE_FAN */
}
func cast<I: BinaryInteger>(_ param: I) -> VerticesMode { VerticesMode(rawValue: cast(param)) }
func cast(_ param: VerticesMode) -> UInt32 { cast(param.rawValue) }


/// Enum used to represent the two directions of rotation. This can be
/// used to set the front face for culling by calling
/// `cogl_pipeline_set_front_face_winding()`.
public typealias Winding = CoglWinding

public extension Winding {
    /// Vertices are in a clockwise order
    static let clockwise = COGL_WINDING_CLOCKWISE /* 0 */
    /// Vertices are in a counter-clockwise order
    static let counterClockwise = COGL_WINDING_COUNTER_CLOCKWISE /* 1 */
    /// Vertices are in a counter-clockwise order
    @available(*, deprecated) static let counter_clockwise = Winding.counterClockwise /* COGL_WINDING_COUNTER_CLOCKWISE */
}
func cast<I: BinaryInteger>(_ param: I) -> Winding { Winding(rawValue: cast(param)) }
func cast(_ param: Winding) -> UInt32 { cast(param.rawValue) }


public typealias WinsysFeature = CoglWinsysFeature

public extension WinsysFeature {
    static let multipleOnscreen = COGL_WINSYS_FEATURE_MULTIPLE_ONSCREEN /* 0 */
    static let swapThrottle = COGL_WINSYS_FEATURE_SWAP_THROTTLE /* 1 */
    static let vblankCounter = COGL_WINSYS_FEATURE_VBLANK_COUNTER /* 2 */
    static let vblankWait = COGL_WINSYS_FEATURE_VBLANK_WAIT /* 3 */
    static let textureFromPixmap = COGL_WINSYS_FEATURE_TEXTURE_FROM_PIXMAP /* 4 */
    static let swapBuffersEvent = COGL_WINSYS_FEATURE_SWAP_BUFFERS_EVENT /* 5 */
    static let swapRegion = COGL_WINSYS_FEATURE_SWAP_REGION /* 6 */
    static let swapRegionThrottle = COGL_WINSYS_FEATURE_SWAP_REGION_THROTTLE /* 7 */
    static let swapRegionSynchronized = COGL_WINSYS_FEATURE_SWAP_REGION_SYNCHRONIZED /* 8 */
    static let bufferAge = COGL_WINSYS_FEATURE_BUFFER_AGE /* 9 */
    static let syncAndCompleteEvent = COGL_WINSYS_FEATURE_SYNC_AND_COMPLETE_EVENT /* 10 */
    static let nFeatures = COGL_WINSYS_FEATURE_N_FEATURES /* 11 */
    @available(*, deprecated) static let multiple_onscreen = WinsysFeature.multipleOnscreen /* COGL_WINSYS_FEATURE_MULTIPLE_ONSCREEN */
    @available(*, deprecated) static let swap_throttle = WinsysFeature.swapThrottle /* COGL_WINSYS_FEATURE_SWAP_THROTTLE */
    @available(*, deprecated) static let vblank_counter = WinsysFeature.vblankCounter /* COGL_WINSYS_FEATURE_VBLANK_COUNTER */
    @available(*, deprecated) static let vblank_wait = WinsysFeature.vblankWait /* COGL_WINSYS_FEATURE_VBLANK_WAIT */
    @available(*, deprecated) static let texture_from_pixmap = WinsysFeature.textureFromPixmap /* COGL_WINSYS_FEATURE_TEXTURE_FROM_PIXMAP */
    @available(*, deprecated) static let swap_buffers_event = WinsysFeature.swapBuffersEvent /* COGL_WINSYS_FEATURE_SWAP_BUFFERS_EVENT */
    @available(*, deprecated) static let swap_region = WinsysFeature.swapRegion /* COGL_WINSYS_FEATURE_SWAP_REGION */
    @available(*, deprecated) static let swap_region_throttle = WinsysFeature.swapRegionThrottle /* COGL_WINSYS_FEATURE_SWAP_REGION_THROTTLE */
    @available(*, deprecated) static let swap_region_synchronized = WinsysFeature.swapRegionSynchronized /* COGL_WINSYS_FEATURE_SWAP_REGION_SYNCHRONIZED */
    @available(*, deprecated) static let buffer_age = WinsysFeature.bufferAge /* COGL_WINSYS_FEATURE_BUFFER_AGE */
    @available(*, deprecated) static let sync_and_complete_event = WinsysFeature.syncAndCompleteEvent /* COGL_WINSYS_FEATURE_SYNC_AND_COMPLETE_EVENT */
    @available(*, deprecated) static let n_features = WinsysFeature.nFeatures /* COGL_WINSYS_FEATURE_N_FEATURES */
}
func cast<I: BinaryInteger>(_ param: I) -> WinsysFeature { WinsysFeature(rawValue: cast(param)) }
func cast(_ param: WinsysFeature) -> UInt32 { cast(param.rawValue) }

/// Computes the cosine of `angle`
public func angleCos(angle: Angle) -> CoglFixed {
    let rv = cogl_angle_cos(angle)
    return cast(rv)
}




/// Computes the sine of `angle`
public func angleSin(angle: Angle) -> CoglFixed {
    let rv = cogl_angle_sin(angle)
    return cast(rv)
}




/// Computes the tangent of `angle`
public func angleTan(angle: Angle) -> CoglFixed {
    let rv = cogl_angle_tan(angle)
    return cast(rv)
}




/// We do not advise nor reliably support the interleaving of raw GL drawing and
/// Cogl drawing functions, but if you insist, `cogl_begin_gl()` and `cogl_end_gl()`
/// provide a simple mechanism that may at least give you a fighting chance of
/// succeeding.
/// 
/// Note: this doesn't help you modify the behaviour of Cogl drawing functions
/// through the modification of GL state; that will never be reliably supported,
/// but if you are trying to do something like:
/// 
/// ```
/// {
///    - setup some OpenGL state.
///    - draw using OpenGL (e.g. glDrawArrays() )
///    - reset modified OpenGL state.
///    - continue using Cogl to draw
/// }
/// ```
/// 
/// You should surround blocks of drawing using raw GL with `cogl_begin_gl()`
/// and `cogl_end_gl()`:
/// 
/// ```
/// {
///    cogl_begin_gl ();
///    - setup some OpenGL state.
///    - draw using OpenGL (e.g. glDrawArrays() )
///    - reset modified OpenGL state.
///    cogl_end_gl ();
///    - continue using Cogl to draw
/// }
/// ```
/// 
/// Don't ever try and do:
/// 
/// ```
/// {
///    - setup some OpenGL state.
///    - use Cogl to draw
///    - reset modified OpenGL state.
/// }
/// ```
/// 
/// When the internals of Cogl evolves, this is very liable to break.
/// 
/// This function will flush all batched primitives, and subsequently flush
/// all internal Cogl state to OpenGL as if it were going to draw something
/// itself.
/// 
/// The result is that the OpenGL modelview matrix will be setup; the state
/// corresponding to the current source material will be set up and other world
/// state such as backface culling, depth and fogging enabledness will be sent
/// to OpenGL.
/// 
/// <note>No special material state is flushed, so if you want Cogl to setup a
/// simplified material state it is your responsibility to set a simple source
/// material before calling `cogl_begin_gl()`. E.g. by calling
/// `cogl_set_source_color4ub()`.</note>
/// 
/// <note>It is your responsibility to restore any OpenGL state that you modify
/// to how it was after calling `cogl_begin_gl()` if you don't do this then the
/// result of further Cogl calls is undefined.</note>
/// 
/// <note>You can not nest begin/end blocks.</note>
/// 
/// Again we would like to stress, we do not advise the use of this API and if
/// possible we would prefer to improve Cogl than have developers require raw
/// OpenGL.
///
/// **begin_gl is deprecated:**
/// Use the #CoglGLES2Context api instead
@available(*, deprecated) public func beginGl() {
    cogl_begin_gl()

}




public func bitmapErrorQuark() -> UInt32 {
    let rv = cogl_bitmap_error_quark()
    return cast(rv)
}




public func blendStringErrorQuark() -> UInt32 {
    let rv = cogl_blend_string_error_quark()
    return cast(rv)
}




/// Check whether `name` occurs in list of extensions in `ext`.
///
/// **check_extension is deprecated:**
/// OpenGL is an implementation detail for Cogl and so it's
///   not appropriate to expose OpenGL extensions through the Cogl API. This
///   function can be replaced by the following equivalent code:
/// |[
///   CoglBool retval = (strstr (ext, name) != NULL) ? TRUE : FALSE;
/// ]|
@available(*, deprecated) public func checkExtension(name: UnsafePointer<CChar>, ext: UnsafePointer<CChar>) -> CoglBool {
    let rv = cogl_check_extension(name, ext)
    return cast(rv)
}




/// Clears all the auxiliary buffers identified in the `buffers` mask, and if
/// that includes the color buffer then the specified `color` is used.
///
/// **clear is deprecated:**
/// Use cogl_framebuffer_clear() api instead
@available(*, deprecated) public func clear(color: ColorProtocol, buffers: CUnsignedLong) {
    cogl_clear(cast(color.ptr), buffers)

}




/// Ensures that the current clipping region has been set in GL. This
/// will automatically be called before any Cogl primitives but it
/// maybe be neccessary to call if you are using raw GL calls with
/// clipping.
///
/// **clip_ensure is deprecated:**
/// Calling this function has no effect
@available(*, deprecated) public func clipEnsure() {
    cogl_clip_ensure()

}




/// Reverts the clipping region to the state before the last call to
/// `cogl_clip_push()`.
///
/// **clip_pop is deprecated:**
/// Use cogl_framebuffer_pop_clip() instead
@available(*, deprecated) public func clipPop() {
    cogl_clip_pop()

}




/// Specifies a rectangular clipping area for all subsequent drawing
/// operations. Any drawing commands that extend outside the rectangle
/// will be clipped so that only the portion inside the rectangle will
/// be displayed. The rectangle dimensions are transformed by the
/// current model-view matrix.
/// 
/// The rectangle is intersected with the current clip region. To undo
/// the effect of this function, call `cogl_clip_pop()`.
///
/// **clip_push is deprecated:**
/// The x, y, width, height arguments are inconsistent
///   with other API that specify rectangles in model space, and when used
///   with a coordinate space that puts the origin at the center and y+
///   extending up, it's awkward to use. Please use
///   cogl_framebuffer_push_rectangle_clip()
@available(*, deprecated) public func clipPush(xOffset x_offset: gfloat, yOffset y_offset: gfloat, width: gfloat, height: gfloat) {
    cogl_clip_push(x_offset, y_offset, width, height)

}




/// Sets a new clipping area using a 2D shaped described with a
/// `CoglPrimitive`. The shape must not contain self overlapping
/// geometry and must lie on a single 2D plane. A bounding box of the
/// 2D shape in local coordinates (the same coordinates used to
/// describe the shape) must be given. It is acceptable for the bounds
/// to be larger than the true bounds but behaviour is undefined if the
/// bounds are smaller than the true bounds.
/// 
/// The primitive is transformed by the current model-view matrix and
/// the silhouette is intersected with the previous clipping area.  To
/// restore the previous clipping area, call
/// `cogl_clip_pop()`.
///
/// **clip_push_primitive is deprecated:**
/// Use cogl_framebuffer_push_primitive_clip()
///                   instead
@available(*, deprecated) public func clipPush(primitive: UnsafeMutablePointer<CoglPrimitive>, boundsX1 bounds_x1: gfloat, boundsY1 bounds_y1: gfloat, boundsX2 bounds_x2: gfloat, boundsY2 bounds_y2: gfloat) {
    cogl_clip_push_primitive(cast(primitive), bounds_x1, bounds_y1, bounds_x2, bounds_y2)

}




/// Specifies a rectangular clipping area for all subsequent drawing
/// operations. Any drawing commands that extend outside the rectangle
/// will be clipped so that only the portion inside the rectangle will
/// be displayed. The rectangle dimensions are transformed by the
/// current model-view matrix.
/// 
/// The rectangle is intersected with the current clip region. To undo
/// the effect of this function, call `cogl_clip_pop()`.
///
/// **clip_push_rectangle is deprecated:**
/// Use cogl_framebuffer_push_rectangle_clip()
///                   instead
@available(*, deprecated) public func clipPushRectangle(x0: gfloat, y0: gfloat, x1: gfloat, y1: gfloat) {
    cogl_clip_push_rectangle(x0, y0, x1, y1)

}




/// Specifies a rectangular clipping area for all subsequent drawing
/// operations. Any drawing commands that extend outside the rectangle
/// will be clipped so that only the portion inside the rectangle will
/// be displayed. The rectangle dimensions are not transformed by the
/// current model-view matrix.
/// 
/// The rectangle is intersected with the current clip region. To undo
/// the effect of this function, call `cogl_clip_pop()`.
///
/// **clip_push_window_rect is deprecated:**
/// Use cogl_framebuffer_push_scissor_clip() instead
@available(*, deprecated) public func clipPushWindowRect(xOffset x_offset: gfloat, yOffset y_offset: gfloat, width: gfloat, height: gfloat) {
    cogl_clip_push_window_rect(x_offset, y_offset, width, height)

}




/// Specifies a rectangular clipping area for all subsequent drawing
/// operations. Any drawing commands that extend outside the rectangle
/// will be clipped so that only the portion inside the rectangle will
/// be displayed. The rectangle dimensions are not transformed by the
/// current model-view matrix.
/// 
/// The rectangle is intersected with the current clip region. To undo
/// the effect of this function, call `cogl_clip_pop()`.
///
/// **clip_push_window_rectangle is deprecated:**
/// Use cogl_framebuffer_push_scissor_clip() instead
@available(*, deprecated) public func clipPushWindowRectangle(xOffset x_offset: CInt, yOffset y_offset: CInt, width: CInt, height: CInt) {
    cogl_clip_push_window_rectangle(x_offset, y_offset, width, height)

}




/// Restore the state of the clipping stack that was previously saved
/// by `cogl_clip_stack_save()`.
///
/// **clip_stack_restore is deprecated:**
/// This was originally added to allow us to restore
///   the clip stack when switching back from an offscreen framebuffer,
///   but it's not necessary anymore given that framebuffers now own
///   separate clip stacks which will be automatically switched between
///   when a new buffer is set. Calling this function has no effect
@available(*, deprecated) public func clipStackRestore() {
    cogl_clip_stack_restore()

}




/// Save the entire state of the clipping stack and then clear all
/// clipping. The previous state can be returned to with
/// `cogl_clip_stack_restore()`. Each call to `cogl_clip_push()` after this
/// must be matched by a call to `cogl_clip_pop()` before calling
/// `cogl_clip_stack_restore()`.
///
/// **clip_stack_save is deprecated:**
/// This was originally added to allow us to save the
///   clip stack when switching to an offscreen framebuffer, but it's
///   not necessary anymore given that framebuffers now own separate
///   clip stacks which will be automatically switched between when a
///   new buffer is set. Calling this function has no effect
@available(*, deprecated) public func clipStackSave() {
    cogl_clip_stack_save()

}




@available(*, deprecated) public func clutterCheckExtensionCLUTTER(name: UnsafePointer<CChar>, ext: UnsafePointer<CChar>) -> CoglBool {
    let rv = cogl_clutter_check_extension_CLUTTER(name, ext)
    return cast(rv)
}




@available(*, deprecated) public func clutterWinsysHasFeatureCLUTTER(feature: WinsysFeature) -> CoglBool {
    let rv = cogl_clutter_winsys_has_feature_CLUTTER(feature)
    return cast(rv)
}




/// Compares two `CoglColor`<!-- -->s and checks if they are the same.
/// 
/// This function can be passed to `g_hash_table_new()` as the `key_equal_func`
/// parameter, when using `CoglColor`<!-- -->s as keys in a `GHashTable`.
public func colorEqual(v1: UnsafeMutableRawPointer, v2: UnsafeMutableRawPointer) -> CoglBool {
    let rv = cogl_color_equal(cast(v1), cast(v2))
    return cast(rv)
}




/// Converts a color expressed in HLS (hue, luminance and saturation)
/// values into a `CoglColor`.
public func colorInitFromHsl(color: ColorProtocol, hue: gfloat, saturation: gfloat, luminance: gfloat) {
    cogl_color_init_from_hsl(cast(color.ptr), hue, saturation, luminance)

}




/// Create a new cogl program object that can be used to replace parts of the GL
/// rendering pipeline with custom code.
///
/// **create_program is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func createProgram() -> CoglHandle! {
    let rv = cogl_create_program()
    return cast(rv)
}




/// Create a new shader handle, use `cogl_shader_source()` to set the
/// source code to be used on it.
///
/// **create_shader is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func createShader(shaderType shader_type: ShaderType) -> CoglHandle! {
    let rv = cogl_create_shader(shader_type)
    return cast(rv)
}




/// Prints the contents of a `CoglMatrix` to stdout.
public func debugMatrixPrint(matrix: MatrixProtocol) {
    cogl_debug_matrix_print(cast(matrix.ptr))

}




/// This function disables fogging, so primitives drawn afterwards will not be
/// blended with any previously set fog color.
///
/// **disable_fog is deprecated:**
/// Use #CoglSnippet shader api for fog
@available(*, deprecated) public func disableFog() {
    cogl_disable_fog()

}




public func doubleToFixed(value: gdouble) -> CoglFixed {
    let rv = cogl_double_to_fixed(value)
    return cast(rv)
}




public func doubleToInt(value: gdouble) -> Int {
    let rv: Int = cast(cogl_double_to_int(value))
    return cast(rv)
}




public func doubleToUint(value: gdouble) -> Int {
    let rv: Int = cast(cogl_double_to_uint(value))
    return cast(rv)
}




/// This is the counterpart to `cogl_begin_gl()` used to delimit blocks of drawing
/// code using raw OpenGL. Please refer to `cogl_begin_gl()` for full details.
///
/// **end_gl is deprecated:**
/// Use the #CoglGLES2Context api instead
@available(*, deprecated) public func endGl() {
    cogl_end_gl()

}




/// Checks whether the given COGL features are available. Multiple
/// features can be checked for by or-ing them together with the '|'
/// operator. `true` is only returned if all of the requested features
/// are available.
///
/// **features_available is deprecated:**
/// Use cogl_has_feature() instead
@available(*, deprecated) public func featuresAvailable(features: FeatureFlags) -> CoglBool {
    let rv = cogl_features_available(features.value)
    return cast(rv)
}




/// This function should only need to be called in exceptional circumstances.
/// 
/// As an optimization Cogl drawing functions may batch up primitives
/// internally, so if you are trying to use raw GL outside of Cogl you stand a
/// better chance of being successful if you ask Cogl to flush any batched
/// geometry before making your state changes.
/// 
/// It only ensure that the underlying driver is issued all the commands
/// necessary to draw the batched primitives. It provides no guarantees about
/// when the driver will complete the rendering.
/// 
/// This provides no guarantees about the GL state upon returning and to avoid
/// confusing Cogl you should aim to restore any changes you make before
/// resuming use of Cogl.
/// 
/// If you are making state changes with the intention of affecting Cogl drawing
/// primitives you are 100% on your own since you stand a good chance of
/// conflicting with Cogl internals. For example clutter-gst which currently
/// uses direct GL calls to bind ARBfp programs will very likely break when Cogl
/// starts to use ARBfb programs itself for the material API.
public func flush() {
    cogl_flush()

}




/// Queries the common `CoglPixelFormat` of all color buffers attached
/// to this framebuffer. For an offscreen framebuffer created with
/// `cogl_offscreen_new_with_texture()` this will correspond to the format
/// of the texture.
/// 
/// This API is deprecated because it is missleading to report a
/// `CoglPixelFormat` for the internal format of the `framebuffer` since
/// `CoglPixelFormat` is such a precise format description and it's
/// only the set of components and the premultiplied alpha status
/// that is really known.
@available(*, deprecated) public func framebufferGetColorFormat(framebuffer: UnsafeMutablePointer<CoglFramebuffer>) -> CoglPixelFormat {
    let rv = cogl_framebuffer_get_color_format(cast(framebuffer))
    return cast(rv)
}




/// Replaces the current projection matrix with a perspective matrix
/// for a given viewing frustum defined by 4 side clip planes that
/// all cross through the origin and 2 near and far clip planes.
///
/// **frustum is deprecated:**
/// Use cogl_framebuffer_frustum() instead
@available(*, deprecated) public func frustum(left_: gfloat, right_: gfloat, bottom: gfloat, top: gfloat, zNear z_near: gfloat, zFar z_far: gfloat) {
    cogl_frustum(left_, right_, bottom, top, z_near, z_far)

}




/// Queries if backface culling has been enabled via
/// `cogl_set_backface_culling_enabled()`
///
/// **get_backface_culling_enabled is deprecated:**
/// Use cogl_pipeline_get_cull_face_mode() instead
@available(*, deprecated) public func getBackfaceCullingEnabled() -> CoglBool {
    let rv = cogl_get_backface_culling_enabled()
    return cast(rv)
}




/// Gets the number of bitplanes used for each of the color components
/// in the color buffer. Pass `nil` for any of the arguments if the
/// value is not required.
///
/// **get_bitmasks is deprecated:**
/// Use cogl_framebuffer_get_red/green/blue/alpha_bits()
///                  instead
@available(*, deprecated) public func getBitmasks(red: UnsafeMutablePointer<CInt>, green: UnsafeMutablePointer<CInt>, blue: UnsafeMutablePointer<CInt>, alpha: UnsafeMutablePointer<CInt>) {
    cogl_get_bitmasks(cast(red), cast(green), cast(blue), cast(alpha))

}




/// Queries if depth testing has been enabled via `cogl_set_depth_test_enable()`
///
/// **get_depth_test_enabled is deprecated:**
/// Use cogl_pipeline_set_depth_state() instead
@available(*, deprecated) public func getDepthTestEnabled() -> CoglBool {
    let rv = cogl_get_depth_test_enabled()
    return cast(rv)
}




/// Returns all of the features supported by COGL.
///
/// **get_features is deprecated:**
/// Use cogl_foreach_feature() instead
@available(*, deprecated) public func getFeatures() -> CoglFeatureFlags {
    let rv = cogl_get_features()
    return cast(rv)
}




/// Stores the current model-view matrix in `matrix`.
///
/// **get_modelview_matrix is deprecated:**
/// Use cogl_framebuffer_get_modelview_matrix()
///                   instead
@available(*, deprecated) public func getModelview(matrix: MatrixProtocol) {
    cogl_get_modelview_matrix(cast(matrix.ptr))

}




/// Retrieves the `GOptionGroup` used by Cogl to parse the command
/// line options. Clutter uses this to handle the Cogl command line
/// options during its initialization process.
///
/// **get_option_group is deprecated:**
/// Not replaced
@available(*, deprecated) public func getOptionGroup() -> UnsafeMutablePointer<GOptionGroup>! {
    let rv: UnsafeMutablePointer<GOptionGroup>! = cast(cogl_get_option_group())
    return cast(rv)
}




/// Gets a pointer to a given GL or GL ES extension function. This acts
/// as a wrapper around `glXGetProcAddress()` or whatever is the
/// appropriate function for the current backend.
/// 
/// <note>This function should not be used to query core opengl API
/// symbols since eglGetProcAddress for example doesn't allow this and
/// and may return a junk pointer if you do.</note>
public func getProcAddress(name: UnsafePointer<CChar>) -> CoglFuncPtr! {
    let rv = cogl_get_proc_address(name)
    return cast(rv)
}




/// Stores the current projection matrix in `matrix`.
///
/// **get_projection_matrix is deprecated:**
/// Use cogl_framebuffer_get_projection_matrix()
///                   instead
@available(*, deprecated) public func getProjection(matrix: MatrixProtocol) {
    cogl_get_projection_matrix(cast(matrix.ptr))

}




/// Returns the current source material as previously set using
/// `cogl_set_source()`.
/// 
/// <note>You should typically consider the returned material immutable
/// and not try to change any of its properties unless you own a
/// reference to that material. At times you may be able to get a
/// reference to an internally managed materials and the result of
/// modifying such materials is undefined.</note>
///
/// **get_source is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func getSource() -> UnsafeMutableRawPointer! {
    let rv: UnsafeMutableRawPointer! = cast(cogl_get_source())
    return cast(rv)
}




/// Stores the current viewport in `v`. `v`[0] and `v`[1] get the x and y
/// position of the viewport and `v`[2] and `v`[3] get the width and
/// height.
///
/// **get_viewport is deprecated:**
/// Use cogl_framebuffer_get_viewport4fv()
///                   instead
@available(*, deprecated) public func getViewport(v: UnsafeMutablePointer<CFloat>) {
    cogl_get_viewport(cast(v))

}





///
/// **gtype_matrix_get_type is deprecated:**
/// Use cogl_matrix_get_gtype() instead.
@available(*, deprecated) public func gtypeMatrixGetType() -> GType {
    let rv = cogl_gtype_matrix_get_type()
    return cast(rv)
}




public func handleGetType() -> GType {
    let rv = cogl_handle_get_type()
    return cast(rv)
}




/// Increases the reference count of `handle` by 1
public func handleRef(handle: Handle) -> CoglHandle! {
    let rv = cogl_handle_ref(handle)
    return cast(rv)
}




/// Drecreases the reference count of `handle` by 1; if the reference
/// count reaches 0, the resources allocated by `handle` will be freed
public func handleUnref(handle: Handle) {
    cogl_handle_unref(handle)

}




/// Checks whether `object` is a `CoglBitmap`
public func isBitmap(object: UnsafeMutableRawPointer) -> CoglBool {
    let rv = cogl_is_bitmap(cast(object))
    return cast(rv)
}




/// Gets whether the given handle references an existing material object.
///
/// **is_material is deprecated:**
/// Use cogl_is_pipeline() instead
@available(*, deprecated) public func isMaterial(handle: Handle) -> CoglBool {
    let rv = cogl_is_material(handle)
    return cast(rv)
}




/// Determines whether the given `CoglObject` references an offscreen
/// framebuffer object.
public func isOffscreen(object: UnsafeMutableRawPointer) -> CoglBool {
    let rv = cogl_is_offscreen(cast(object))
    return cast(rv)
}




/// Gets whether the given handle references an existing program object.
///
/// **is_program is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func isProgram(handle: Handle) -> CoglBool {
    let rv = cogl_is_program(handle)
    return cast(rv)
}




/// Gets whether the given handle references an existing shader object.
///
/// **is_shader is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func isShader(handle: Handle) -> CoglBool {
    let rv = cogl_is_shader(handle)
    return cast(rv)
}




/// Gets whether the given object references a texture object.
public func isTexture(object: UnsafeMutableRawPointer) -> CoglBool {
    let rv = cogl_is_texture(cast(object))
    return cast(rv)
}




/// Checks whether `handle` is a Vertex Buffer Object
///
/// **is_vertex_buffer is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func isVertexBuffer(handle: Handle) -> CoglBool {
    let rv = cogl_is_vertex_buffer(handle)
    return cast(rv)
}




/// Checks whether `handle` is a handle to the indices for a vertex
/// buffer object
///
/// **is_vertex_buffer_indices is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func isVertexBufferIndices(handle: Handle) -> CoglBool {
    let rv = cogl_is_vertex_buffer_indices(handle)
    return cast(rv)
}




/// Increment the reference count for a `CoglMaterial`.
///
/// **material_ref is deprecated:**
/// Use cogl_object_ref() instead
@available(*, deprecated) public func materialRef(material: Handle) -> CoglHandle! {
    let rv = cogl_material_ref(material)
    return cast(rv)
}




/// Decrement the reference count for a `CoglMaterial`.
///
/// **material_unref is deprecated:**
/// Use cogl_object_unref() instead
@available(*, deprecated) public func materialUnref(material: Handle) {
    cogl_material_unref(material)

}




/// Compares two matrices to see if they represent the same
/// transformation. Although internally the matrices may have different
/// annotations associated with them and may potentially have a cached
/// inverse matrix these are not considered in the comparison.
public func matrixEqual(v1: UnsafeMutableRawPointer, v2: UnsafeMutableRawPointer) -> CoglBool {
    let rv = cogl_matrix_equal(cast(v1), cast(v2))
    return cast(rv)
}




public func onscreenClutterBackendSetSizeCLUTTER(width: CInt, height: CInt) {
    cogl_onscreen_clutter_backend_set_size_CLUTTER(width, height)

}




/// Replaces the current projection matrix with an orthographic projection
/// matrix. See <xref linkend="cogl-ortho-matrix"/> to see how the matrix is
/// calculated.
/// 
/// <figure id="cogl-ortho-matrix">
///   <title></title>
///   <graphic fileref="cogl_ortho.png" format="PNG"/>
/// </figure>
/// 
/// <note>This function copies the arguments from OpenGL's `glOrtho()` even
/// though they are unnecessarily confusing due to the z near and z far
/// arguments actually being a "distance" from the origin, where
/// negative values are behind the viewer, instead of coordinates for
/// the z clipping planes which would have been consistent with the
/// left, right bottom and top arguments.</note>
///
/// **ortho is deprecated:**
/// Use cogl_framebuffer_orthographic() instead
@available(*, deprecated) public func ortho(left_: gfloat, right_: gfloat, bottom: gfloat, top: gfloat, near: gfloat, far: gfloat) {
    cogl_ortho(left_, right_, bottom, top, near, far)

}




/// Replaces the current projection matrix with a perspective matrix
/// based on the provided values.
/// 
/// <note>You should be careful not to have to great a `z_far` / `z_near`
/// ratio since that will reduce the effectiveness of depth testing
/// since there wont be enough precision to identify the depth of
/// objects near to each other.</note>
///
/// **perspective is deprecated:**
/// Use cogl_framebuffer_perspective() instead
@available(*, deprecated) public func perspective(fovy: gfloat, aspect: gfloat, zNear z_near: gfloat, zFar z_far: gfloat) {
    cogl_perspective(fovy, aspect, z_near, z_far)

}




/// Draws a convex polygon using the current source material to fill / texture
/// with according to the texture coordinates passed.
/// 
/// If `use_color` is `true` then the color will be changed for each vertex using
/// the value specified in the color member of `CoglTextureVertex`. This can be
/// used for example to make the texture fade out by setting the alpha value of
/// the color.
/// 
/// All of the texture coordinates must be in the range [0,1] and repeating the
/// texture is not supported.
/// 
/// Because of the way this function is implemented it will currently
/// only work if either the texture is not sliced or the backend is not
/// OpenGL ES and the minifying and magnifying functions are both set
/// to COGL_MATERIAL_FILTER_NEAREST.
public func polygon(vertices: TextureVertexProtocol, nVertices n_vertices: CUnsignedInt, useColor use_color: Bool_) {
    cogl_polygon(cast(vertices.ptr), n_vertices, use_color)

}




/// Restore `cogl_set_draw_buffer()` state.
///
/// **pop_draw_buffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) public func popDrawBuffer() {
    cogl_pop_draw_buffer()

}




/// Restores the framebuffer that was previously at the top of the stack.
/// All subsequent drawing will be redirected to this framebuffer.
///
/// **pop_framebuffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) public func popFramebuffer() {
    cogl_pop_framebuffer()

}




/// Restores the current model-view matrix from the matrix stack.
///
/// **pop_matrix is deprecated:**
/// Use cogl_framebuffer_pop_matrix() instead
@available(*, deprecated) public func popMatrix() {
    cogl_pop_matrix()

}




/// Removes the material at the top of the source stack. The material
/// at the top of this stack defines the GPU state used to process
/// later primitives as defined by `cogl_set_source()`.
///
/// **pop_source is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func popSource() {
    cogl_pop_source()

}




/// Attaches a shader to a program object. A program can have multiple
/// vertex or fragment shaders but only one of them may provide a
/// `main()` function. It is allowed to use a program with only a vertex
/// shader or only a fragment shader.
///
/// **program_attach_shader is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programAttachShader(programHandle program_handle: Handle, shaderHandle shader_handle: Handle) {
    cogl_program_attach_shader(program_handle, shader_handle)

}




/// Retrieve the location (offset) of a uniform variable in a shader program,
/// a uniform is a variable that is constant for all vertices/fragments for a
/// shader object and is possible to modify as an external parameter.
///
/// **program_get_uniform_location is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) public func programGetUniformLocation(handle: Handle, uniformName uniform_name: UnsafePointer<CChar>) -> Int {
    let rv: Int = cast(cogl_program_get_uniform_location(handle, uniform_name))
    return cast(rv)
}




/// Links a program making it ready for use. Note that calling this
/// function is optional. If it is not called the program will
/// automatically be linked the first time it is used.
///
/// **program_link is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programLink(handle: Handle) {
    cogl_program_link(handle)

}




/// Add an extra reference to a program.
///
/// **program_ref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programRef(handle: Handle) -> CoglHandle! {
    let rv = cogl_program_ref(handle)
    return cast(rv)
}




/// Changes the value of a floating point uniform for the given linked
/// `program`.
///
/// **program_set_uniform_1f is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) public func programSetUniform1f(program: Handle, uniformLocation uniform_location: CInt, value: gfloat) {
    cogl_program_set_uniform_1f(program, uniform_location, value)

}




/// Changes the value of an integer uniform for the given linked
/// `program`.
///
/// **program_set_uniform_1i is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) public func programSetUniform1i(program: Handle, uniformLocation uniform_location: CInt, value: CInt) {
    cogl_program_set_uniform_1i(program, uniform_location, value)

}




/// Changes the value of a float vector uniform, or uniform array for
/// the given linked `program`.
///
/// **program_set_uniform_float is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) public func programSetUniformFloat(program: Handle, uniformLocation uniform_location: CInt, nComponents n_components: CInt, count: CInt, value: UnsafePointer<CFloat>) {
    cogl_program_set_uniform_float(program, uniform_location, n_components, count, cast(value))

}




/// Changes the value of a int vector uniform, or uniform array for
/// the given linked `program`.
///
/// **program_set_uniform_int is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) public func programSetUniformInt(program: Handle, uniformLocation uniform_location: CInt, nComponents n_components: CInt, count: CInt, value: UnsafePointer<CInt>) {
    cogl_program_set_uniform_int(program, uniform_location, n_components, count, cast(value))

}




/// Changes the value of a matrix uniform, or uniform array in the
/// given linked `program`.
///
/// **program_set_uniform_matrix is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) public func programSetUniformMatrix(program: Handle, uniformLocation uniform_location: CInt, dimensions: CInt, count: CInt, transpose: Bool_, value: UnsafePointer<CFloat>) {
    cogl_program_set_uniform_matrix(program, uniform_location, dimensions, count, transpose, cast(value))

}




/// Changes the value of a floating point uniform in the currently
/// used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_1f is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programUniform1f(uniformNo uniform_no: CInt, value: gfloat) {
    cogl_program_uniform_1f(uniform_no, value)

}




/// Changes the value of an integer uniform in the currently
/// used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_1i is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programUniform1i(uniformNo uniform_no: CInt, value: CInt) {
    cogl_program_uniform_1i(uniform_no, value)

}




/// Changes the value of a float vector uniform, or uniform array in the
/// currently used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_float is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programUniformFloat(uniformNo uniform_no: CInt, size: CInt, count: CInt, value: UnsafePointer<CFloat>) {
    cogl_program_uniform_float(uniform_no, size, count, cast(value))

}




/// Changes the value of a int vector uniform, or uniform array in the
/// currently used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_int is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programUniformInt(uniformNo uniform_no: CInt, size: CInt, count: CInt, value: UnsafePointer<CInt>) {
    cogl_program_uniform_int(uniform_no, size, count, cast(value))

}




/// Changes the value of a matrix uniform, or uniform array in the
/// currently used (see `cogl_program_use()`) shader program. The `size`
/// parameter is used to determine the square size of the matrix.
///
/// **program_uniform_matrix is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programUniformMatrix(uniformNo uniform_no: CInt, size: CInt, count: CInt, transpose: Bool_, value: UnsafePointer<CFloat>) {
    cogl_program_uniform_matrix(uniform_no, size, count, transpose, cast(value))

}




/// Removes a reference to a program. If it was the last reference the
/// program object will be destroyed.
///
/// **program_unref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programUnref(handle: Handle) {
    cogl_program_unref(handle)

}




/// Activate a specific shader program replacing that part of the GL
/// rendering pipeline, if passed in `COGL_INVALID_HANDLE` the default
/// behavior of GL is reinstated.
/// 
/// This function affects the global state of the current Cogl
/// context. It is much more efficient to attach the shader to a
/// specific material used for rendering instead by calling
/// `cogl_material_set_user_program()`.
///
/// **program_use is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func programUse(handle: Handle) {
    cogl_program_use(handle)

}




/// Save `cogl_set_draw_buffer()` state.
///
/// **push_draw_buffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) public func pushDrawBuffer() {
    cogl_push_draw_buffer()

}




/// Redirects all subsequent drawing to the specified framebuffer. This can
/// either be an offscreen buffer created with cogl_offscreen_new_to_texture ()
/// or in the future it may be an onscreen framebuffer too.
/// 
/// You should understand that a framebuffer owns the following state:
/// <itemizedlist>
///  <listitem><simpara>The projection matrix</simpara></listitem>
///  <listitem><simpara>The modelview matrix stack</simpara></listitem>
///  <listitem><simpara>The viewport</simpara></listitem>
///  <listitem><simpara>The clip stack</simpara></listitem>
/// </itemizedlist>
/// So these items will automatically be saved and restored when you
/// push and pop between different framebuffers.
/// 
/// Also remember a newly allocated framebuffer will have an identity matrix for
/// the projection and modelview matrices which gives you a coordinate space
/// like OpenGL with (-1, -1) corresponding to the top left of the viewport,
/// (1, 1) corresponding to the bottom right and +z coming out towards the
/// viewer.
/// 
/// If you want to set up a coordinate space like Clutter does with (0, 0)
/// corresponding to the top left and (framebuffer_width, framebuffer_height)
/// corresponding to the bottom right you can do so like this:
/// 
/// ```
/// static void
/// setup_viewport (unsigned int width,
///                 unsigned int height,
///                 float fovy,
///                 float aspect,
///                 float z_near,
///                 float z_far)
/// {
///   float z_camera;
///   CoglMatrix projection_matrix;
///   CoglMatrix mv_matrix;
/// 
///   cogl_set_viewport (0, 0, width, height);
///   cogl_perspective (fovy, aspect, z_near, z_far);
/// 
///   cogl_get_projection_matrix (&amp;projection_matrix);
///   z_camera = 0.5 * projection_matrix.xx;
/// 
///   cogl_matrix_init_identity (&amp;mv_matrix);
///   cogl_matrix_translate (&amp;mv_matrix, -0.5f, -0.5f, -z_camera);
///   cogl_matrix_scale (&amp;mv_matrix, 1.0f / width, -1.0f / height, 1.0f / width);
///   cogl_matrix_translate (&amp;mv_matrix, 0.0f, -1.0 * height, 0.0f);
///   cogl_set_modelview_matrix (&amp;mv_matrix);
/// }
/// 
/// static void
/// my_init_framebuffer (ClutterStage *stage,
///                      CoglFramebuffer *framebuffer,
///                      unsigned int framebuffer_width,
///                      unsigned int framebuffer_height)
/// {
///   ClutterPerspective perspective;
/// 
///   clutter_stage_get_perspective (stage, &perspective);
/// 
///   cogl_push_framebuffer (framebuffer);
///   setup_viewport (framebuffer_width,
///                   framebuffer_height,
///                   perspective.fovy,
///                   perspective.aspect,
///                   perspective.z_near,
///                   perspective.z_far);
/// }
/// ```
/// 
/// The previous framebuffer can be restored by calling `cogl_pop_framebuffer()`
///
/// **push_framebuffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) public func pushFramebuffer(buffer: UnsafeMutablePointer<CoglFramebuffer>) {
    cogl_push_framebuffer(cast(buffer))

}




/// Stores the current model-view matrix on the matrix stack. The matrix
/// can later be restored with `cogl_pop_matrix()`.
///
/// **push_matrix is deprecated:**
/// Use cogl_framebuffer_push_matrix() instead
@available(*, deprecated) public func pushMatrix() {
    cogl_push_matrix()

}




/// Pushes the given `material` to the top of the source stack. The
/// material at the top of this stack defines the GPU state used to
/// process later primitives as defined by `cogl_set_source()`.
///
/// **push_source is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func pushSource(material: UnsafeMutableRawPointer) {
    cogl_push_source(cast(material))

}




/// This reads a rectangle of pixels from the current framebuffer where
/// position (0, 0) is the top left. The pixel at (x, y) is the first
/// read, and the data is returned with a rowstride of (width * 4).
/// 
/// Currently Cogl assumes that the framebuffer is in a premultiplied
/// format so if `format` is non-premultiplied it will convert it. To
/// read the pixel values without any conversion you should either
/// specify a format that doesn't use an alpha channel or use one of
/// the formats ending in PRE.
///
/// **read_pixels is deprecated:**
/// Use cogl_framebuffer_read_pixels() instead
@available(*, deprecated) public func readPixels(x: CInt, y: CInt, width: CInt, height: CInt, source: ReadPixelsFlags, format: PixelFormat, pixels: UnsafeMutablePointer<UInt8>) {
    cogl_read_pixels(x, y, width, height, source.value, format, cast(pixels))

}




/// Fills a rectangle at the given coordinates with the current source material
public func rectangle(x1 x_1: gfloat, y1 y_1: gfloat, x2 x_2: gfloat, y2 y_2: gfloat) {
    cogl_rectangle(x_1, y_1, x_2, y_2)

}




/// This function draws a rectangle using the current source material to
/// texture or fill with. As a material may contain multiple texture layers
/// this interface lets you supply texture coordinates for each layer of the
/// material.
/// 
/// The first pair of coordinates are for the first layer (with the smallest
/// layer index) and if you supply less texture coordinates than there are
/// layers in the current source material then default texture coordinates
/// (0.0, 0.0, 1.0, 1.0) are generated.
public func rectangleWithMultitextureCoords(x1: gfloat, y1: gfloat, x2: gfloat, y2: gfloat, texCoords tex_coords: UnsafePointer<CFloat>, texCoordsLen tex_coords_len: CInt) {
    cogl_rectangle_with_multitexture_coords(x1, y1, x2, y2, cast(tex_coords), tex_coords_len)

}




/// Draw a rectangle using the current material and supply texture coordinates
/// to be used for the first texture layer of the material. To draw the entire
/// texture pass in `tx1`=0.0 `ty1`=0.0 `tx2`=1.0 `ty2`=1.0.
public func rectangleWithTextureCoords(x1: gfloat, y1: gfloat, x2: gfloat, y2: gfloat, tx1: gfloat, ty1: gfloat, tx2: gfloat, ty2: gfloat) {
    cogl_rectangle_with_texture_coords(x1, y1, x2, y2, tx1, ty1, tx2, ty2)

}




/// Draws a series of rectangles in the same way that
/// `cogl_rectangle()` does. In some situations it can give a
/// significant performance boost to use this function rather than
/// calling `cogl_rectangle()` separately for each rectangle.
/// 
/// `verts` should point to an array of `float`<!-- -->s with
/// `n_rects` * 4 elements. Each group of 4 values corresponds to the
/// parameters x1, y1, x2, and y2, and have the same
/// meaning as in `cogl_rectangle()`.
public func rectangles(verts: UnsafePointer<CFloat>, nRects n_rects: CUnsignedInt) {
    cogl_rectangles(cast(verts), n_rects)

}




/// Draws a series of rectangles in the same way that
/// `cogl_rectangle_with_texture_coords()` does. In some situations it can give a
/// significant performance boost to use this function rather than
/// calling `cogl_rectangle_with_texture_coords()` separately for each rectangle.
/// 
/// `verts` should point to an array of `float`<!-- -->s with
/// `n_rects` * 8 elements. Each group of 8 values corresponds to the
/// parameters x1, y1, x2, y2, tx1, ty1, tx2 and ty2 and have the same
/// meaning as in `cogl_rectangle_with_texture_coords()`.
public func rectanglesWithTextureCoords(verts: UnsafePointer<CFloat>, nRects n_rects: CUnsignedInt) {
    cogl_rectangles_with_texture_coords(cast(verts), n_rects)

}




/// Multiplies the current model-view matrix by one that rotates the
/// model around the vertex specified by `x`, `y` and `z`. The rotation
/// follows the right-hand thumb rule so for example rotating by 10
/// degrees about the vertex (0, 0, 1) causes a small counter-clockwise
/// rotation.
///
/// **rotate is deprecated:**
/// Use cogl_framebuffer_rotate() instead
@available(*, deprecated) public func rotate(angle: gfloat, x: gfloat, y: gfloat, z: gfloat) {
    cogl_rotate(angle, x, y, z)

}




/// Multiplies the current model-view matrix by one that scales the x,
/// y and z axes by the given values.
///
/// **scale is deprecated:**
/// Use cogl_framebuffer_pop_matrix() instead
@available(*, deprecated) public func scale(x: gfloat, y: gfloat, z: gfloat) {
    cogl_scale(x, y, z)

}




/// Sets whether textures positioned so that their backface is showing
/// should be hidden. This can be used to efficiently draw two-sided
/// textures or fully closed cubes without enabling depth testing. This
/// only affects calls to the cogl_rectangle* family of functions and
/// cogl_vertex_buffer_draw*. Backface culling is disabled by default.
///
/// **set_backface_culling_enabled is deprecated:**
/// Use cogl_pipeline_set_cull_face_mode() instead
@available(*, deprecated) public func setBackfaceCullingEnabled(setting: Bool_) {
    cogl_set_backface_culling_enabled(setting)

}




/// Sets whether depth testing is enabled. If it is disabled then the
/// order that actors are layered on the screen depends solely on the
/// order specified using `clutter_actor_raise()` and
/// `clutter_actor_lower()`, otherwise it will also take into account the
/// actor's depth. Depth testing is disabled by default.
///
/// **set_depth_test_enabled is deprecated:**
/// Use cogl_pipeline_set_depth_state() instead
@available(*, deprecated) public func setDepthTestEnabled(setting: Bool_) {
    cogl_set_depth_test_enabled(setting)

}




/// Redirects all subsequent drawing to the specified framebuffer. This
/// can either be an offscreen buffer created with
/// cogl_offscreen_new_to_texture () or you can revert to your original
/// on screen window buffer.
///
/// **set_draw_buffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) public func setDrawBuffer(target: BufferTarget, offscreen: Handle) {
    cogl_set_draw_buffer(target.value, offscreen)

}




/// Enables fogging. Fogging causes vertices that are further away from the eye
/// to be rendered with a different color. The color is determined according to
/// the chosen fog mode; at it's simplest the color is linearly interpolated so
/// that vertices at `z_near` are drawn fully with their original color and
/// vertices at `z_far` are drawn fully with `fog_color`. Fogging will remain
/// enabled until you call `cogl_disable_fog()`.
/// 
/// <note>The fogging functions only work correctly when primitives use
/// unmultiplied alpha colors. By default Cogl will premultiply textures
/// and `cogl_set_source_color()` will premultiply colors, so unless you
/// explicitly load your textures requesting an unmultiplied internal format
/// and use `cogl_material_set_color()` you can only use fogging with fully
/// opaque primitives. This might improve in the future when we can depend
/// on fragment shaders.</note>
///
/// **set_fog is deprecated:**
/// Use #CoglSnippet shader api for fog
@available(*, deprecated) public func setFog(fogColor fog_color: ColorProtocol, mode: FogMode, density: gfloat, zNear z_near: gfloat, zFar z_far: gfloat) {
    cogl_set_fog(cast(fog_color.ptr), mode, density, z_near, z_far)

}




/// This redirects all subsequent drawing to the specified framebuffer. This can
/// either be an offscreen buffer created with cogl_offscreen_new_to_texture ()
/// or in the future it may be an onscreen framebuffers too.
///
/// **set_framebuffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) public func setFramebuffer(buffer: UnsafeMutablePointer<CoglFramebuffer>) {
    cogl_set_framebuffer(cast(buffer))

}




/// Loads `matrix` as the new model-view matrix.
///
/// **set_modelview_matrix is deprecated:**
/// Use cogl_framebuffer_set_modelview_matrix()
///                   instead
@available(*, deprecated) public func setModelview(matrix: MatrixProtocol) {
    cogl_set_modelview_matrix(cast(matrix.ptr))

}




/// Loads matrix as the new projection matrix.
///
/// **set_projection_matrix is deprecated:**
/// Use cogl_framebuffer_set_projection_matrix()
///                   instead
@available(*, deprecated) public func setProjection(matrix: MatrixProtocol) {
    cogl_set_projection_matrix(cast(matrix.ptr))

}




/// This function changes the material at the top of the source stack.
/// The material at the top of this stack defines the GPU state used to
/// process subsequent primitives, such as rectangles drawn with
/// `cogl_rectangle()` or vertices drawn using `cogl_vertex_buffer_draw()`.
///
/// **set_source is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func setSource(material: UnsafeMutableRawPointer) {
    cogl_set_source(cast(material))

}




/// This is a convenience function for creating a solid fill source material
/// from the given color. This color will be used for any subsequent drawing
/// operation.
/// 
/// The color will be premultiplied by Cogl, so the color should be
/// non-premultiplied. For example: use (1.0, 0.0, 0.0, 0.5) for
/// semi-transparent red.
/// 
/// See also `cogl_set_source_color4ub()` and `cogl_set_source_color4f()`
/// if you already have the color components.
///
/// **set_source_color is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func setSource(color: ColorProtocol) {
    cogl_set_source_color(cast(color.ptr))

}




/// This is a convenience function for creating a solid fill source material
/// from the given color using normalized values for each component. This color
/// will be used for any subsequent drawing operation.
/// 
/// The value for each component is a fixed point number in the range
/// between 0 and `1.0`. If the values passed in are outside that
/// range, they will be clamped.
///
/// **set_source_color4f is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func setSourceColor4f(red: gfloat, green: gfloat, blue: gfloat, alpha: gfloat) {
    cogl_set_source_color4f(red, green, blue, alpha)

}




/// This is a convenience function for creating a solid fill source material
/// from the given color using unsigned bytes for each component. This
/// color will be used for any subsequent drawing operation.
/// 
/// The value for each component is an unsigned byte in the range
/// between 0 and 255.
///
/// **set_source_color4ub is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func setSourceColor4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
    cogl_set_source_color4ub(red, green, blue, alpha)

}




/// This is a convenience function for creating a material with the first
/// layer set to `texture` and setting that material as the source with
/// cogl_set_source.
/// 
/// Note: There is no interaction between calls to cogl_set_source_color
/// and cogl_set_source_texture. If you need to blend a texture with a color then
/// you can create a simple material like this:
/// <programlisting>
/// material = cogl_material_new ();
/// cogl_material_set_color4ub (material, 0xff, 0x00, 0x00, 0x80);
/// cogl_material_set_layer (material, 0, tex_handle);
/// cogl_set_source (material);
/// </programlisting>
///
/// **set_source_texture is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) public func setSource(texture: TextureProtocol) {
    cogl_set_source_texture(cast(texture.ptr))

}




/// Replaces the current viewport with the given values.
///
/// **set_viewport is deprecated:**
/// Use cogl_framebuffer_set_viewport() instead
@available(*, deprecated) public func setViewport(x: CInt, y: CInt, width: CInt, height: CInt) {
    cogl_set_viewport(x, y, width, height)

}




/// Compiles the shader, no return value, but the shader is now ready
/// for linking into a program. Note that calling this function is
/// optional. If it is not called then the shader will be automatically
/// compiled when it is linked.
///
/// **shader_compile is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func shaderCompile(handle: Handle) {
    cogl_shader_compile(handle)

}




/// Retrieves the information log for a coglobject, can be used in conjunction
/// with `cogl_shader_get_parameteriv()` to retrieve the compiler warnings/error
/// messages that caused a shader to not compile correctly, mainly useful for
/// debugging purposes.
///
/// **shader_get_info_log is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func shaderGetInfoLog(handle: Handle) -> String! {
    let rv: String! = cast(cogl_shader_get_info_log(handle))
    return cast(rv)
}




/// Retrieves the type of a shader `CoglHandle`
///
/// **shader_get_type is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func shaderGetType(handle: Handle) -> CoglShaderType {
    let rv = cogl_shader_get_type(handle)
    return cast(rv)
}




/// Retrieves whether a shader `CoglHandle` has been compiled
///
/// **shader_is_compiled is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func shaderIsCompiled(handle: Handle) -> CoglBool {
    let rv = cogl_shader_is_compiled(handle)
    return cast(rv)
}




/// Add an extra reference to a shader.
///
/// **shader_ref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func shaderRef(handle: Handle) -> CoglHandle! {
    let rv = cogl_shader_ref(handle)
    return cast(rv)
}




/// Replaces the current source associated with a shader with a new
/// one.
/// 
/// Please see <link
/// linkend="cogl-Shaders-and-Programmable-Pipeline.description">above</link>
/// for a description of the recommended format for the shader code.
///
/// **shader_source is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func shaderSource(shader: Handle, source: UnsafePointer<CChar>) {
    cogl_shader_source(shader, source)

}




/// Removes a reference to a shader. If it was the last reference the
/// shader object will be destroyed.
///
/// **shader_unref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) public func shaderUnref(handle: Handle) {
    cogl_shader_unref(handle)

}




/// Very fast fixed point implementation of square root for integers.
/// 
/// This function is at least 6x faster than clib `sqrt()` on x86, and (this is
/// not a typo!) about 500x faster on ARM without FPU. It's error is less than
/// 5% for arguments smaller than `COGL_SQRTI_ARG_5_PERCENT` and less than 10%
/// for narguments smaller than `COGL_SQRTI_ARG_10_PERCENT`. The maximum
/// argument that can be passed to this function is `COGL_SQRTI_ARG_MAX`.
public func sqrti(x: CInt) -> Int {
    let rv: Int = cast(cogl_sqrti(x))
    return cast(rv)
}




public func textureErrorQuark() -> UInt32 {
    let rv = cogl_texture_error_quark()
    return cast(rv)
}




/// Increment the reference count for a cogl texture.
///
/// **texture_ref is deprecated:**
/// Use cogl_object_ref() instead
@available(*, deprecated) public func textureRef(texture: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer! {
    let rv: UnsafeMutableRawPointer! = cast(cogl_texture_ref(cast(texture)))
    return cast(rv)
}




/// Decrement the reference count for a cogl texture.
///
/// **texture_unref is deprecated:**
/// Use cogl_object_unref() instead
@available(*, deprecated) public func textureUnref(texture: UnsafeMutableRawPointer) {
    cogl_texture_unref(cast(texture))

}




/// Multiplies the current model-view matrix by the given matrix.
///
/// **transform is deprecated:**
/// Use cogl_framebuffer_transform() instead
@available(*, deprecated) public func transform(matrix: MatrixProtocol) {
    cogl_transform(cast(matrix.ptr))

}




/// Multiplies the current model-view matrix by one that translates the
/// model along all three axes according to the given values.
///
/// **translate is deprecated:**
/// Use cogl_framebuffer_translate() instead
@available(*, deprecated) public func translate(x: gfloat, y: gfloat, z: gfloat) {
    cogl_translate(x, y, z)

}




/// Adds an attribute to a buffer, or replaces a previously added
/// attribute with the same name.
/// 
/// You either can use one of the built-in names such as "gl_Vertex", or
/// "gl_MultiTexCoord0" to add standard attributes, like positions, colors
/// and normals, or you can add custom attributes for use in shaders.
/// 
/// The number of vertices declared when calling `cogl_vertex_buffer_new()`
/// determines how many attribute values will be read from the supplied
/// `pointer`.
/// 
/// The data for your attribute isn't copied anywhere until you call
/// `cogl_vertex_buffer_submit()`, or issue a draw call which automatically
/// submits pending attribute changes. so the supplied pointer must remain
/// valid until then. If you are updating an existing attribute (done by
/// re-adding it) then you still need to re-call `cogl_vertex_buffer_submit()`
/// to commit the changes to the GPU. Be carefull to minimize the number
/// of calls to `cogl_vertex_buffer_submit()`, though.
/// 
/// <note>If you are interleving attributes it is assumed that each interleaved
/// attribute starts no farther than +- stride bytes from the other attributes
/// it is interleved with. I.e. this is ok:
/// <programlisting>
/// |-0-0-0-0-0-0-0-0-0-0|
/// </programlisting>
/// This is not ok:
/// <programlisting>
/// |- - - - -0-0-0-0-0-0 0 0 0 0|
/// </programlisting>
/// (Though you can have multiple groups of interleved attributes)</note>
///
/// **vertex_buffer_add is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferAdd(handle: Handle, attributeName attribute_name: UnsafePointer<CChar>, nComponents n_components: UInt8, type: AttributeType, normalized: Bool_, stride: UInt16, pointer: UnsafeMutableRawPointer) {
    cogl_vertex_buffer_add(handle, attribute_name, n_components, type, normalized, stride, cast(pointer))

}




/// Deletes an attribute from a buffer. You will need to call
/// `cogl_vertex_buffer_submit()` or issue a draw call to commit this
/// change to the GPU.
///
/// **vertex_buffer_delete is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferDelete(handle: Handle, attributeName attribute_name: UnsafePointer<CChar>) {
    cogl_vertex_buffer_delete(handle, attribute_name)

}




/// Disables a previosuly added attribute.
/// 
/// Since it can be costly to add and remove new attributes to buffers; to make
/// individual buffers more reuseable it is possible to enable and disable
/// attributes before using a buffer for drawing.
/// 
/// You don't need to call `cogl_vertex_buffer_submit()` after using this
/// function.
///
/// **vertex_buffer_disable is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferDisable(handle: Handle, attributeName attribute_name: UnsafePointer<CChar>) {
    cogl_vertex_buffer_disable(handle, attribute_name)

}




/// Allows you to draw geometry using all or a subset of the
/// vertices in a vertex buffer.
/// 
/// Any un-submitted attribute changes are automatically submitted before
/// drawing.
///
/// **vertex_buffer_draw is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferDraw(handle: Handle, mode: VerticesMode, first: CInt, count: CInt) {
    cogl_vertex_buffer_draw(handle, mode, first, count)

}




/// This function lets you use an array of indices to specify the vertices
/// within your vertex buffer that you want to draw. The indices themselves
/// are created by calling cogl_vertex_buffer_indices_new ()
/// 
/// Any un-submitted attribute changes are automatically submitted before
/// drawing.
///
/// **vertex_buffer_draw_elements is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferDrawElements(handle: Handle, mode: VerticesMode, indices: Handle, minIndex min_index: CInt, maxIndex max_index: CInt, indicesOffset indices_offset: CInt, count: CInt) {
    cogl_vertex_buffer_draw_elements(handle, mode, indices, min_index, max_index, indices_offset, count)

}




/// Enables a previosuly disabled attribute.
/// 
/// Since it can be costly to add and remove new attributes to buffers; to make
/// individual buffers more reuseable it is possible to enable and disable
/// attributes before using a buffer for drawing.
/// 
/// You don't need to call `cogl_vertex_buffer_submit()` after using this function
///
/// **vertex_buffer_enable is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferEnable(handle: Handle, attributeName attribute_name: UnsafePointer<CChar>) {
    cogl_vertex_buffer_enable(handle, attribute_name)

}




/// Retrieves the number of vertices that `handle` represents
///
/// **vertex_buffer_get_n_vertices is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferGetNVertices(handle: Handle) -> Int {
    let rv: Int = cast(cogl_vertex_buffer_get_n_vertices(handle))
    return cast(rv)
}




/// Creates a vertex buffer containing the indices needed to draw pairs
/// of triangles from a list of vertices grouped as quads. There will
/// be at least `n_indices` entries in the buffer (but there may be
/// more).
/// 
/// The indices will follow this pattern:
/// 
/// 0, 1, 2, 0, 2, 3, 4, 5, 6, 4, 6, 7 ... etc
/// 
/// For example, if you submit vertices for a quad like like that shown
/// in <xref linkend="quad-indices-order"/> then you can request 6
/// indices to render two triangles like those shown in <xref
/// linkend="quad-indices-triangles"/>.
/// 
/// <figure id="quad-indices-order">
///   <title>Example of vertices submitted to form a quad</title>
///   <graphic fileref="quad-indices-order.png" format="PNG"/>
/// </figure>
/// 
/// <figure id="quad-indices-triangles">
///   <title>Illustration of the triangle indices that will be generated</title>
///   <graphic fileref="quad-indices-triangles.png" format="PNG"/>
/// </figure>
///
/// **vertex_buffer_indices_get_for_quads is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferIndicesGetForQuads(nIndices n_indices: CUnsignedInt) -> CoglHandle! {
    let rv = cogl_vertex_buffer_indices_get_for_quads(n_indices)
    return cast(rv)
}




/// Queries back the data type used for the given indices
///
/// **vertex_buffer_indices_get_type is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferIndicesGetType(indices: Handle) -> CoglIndicesType {
    let rv = cogl_vertex_buffer_indices_get_type(indices)
    return cast(rv)
}




/// Depending on how much geometry you are submitting it can be worthwhile
/// optimizing the number of redundant vertices you submit. Using an index
/// array allows you to reference vertices multiple times, for example
/// during triangle strips.
///
/// **vertex_buffer_indices_new is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferIndicesNew(indicesType indices_type: IndicesType, indicesArray indices_array: UnsafeMutableRawPointer, indicesLen indices_len: CInt) -> CoglHandle! {
    let rv = cogl_vertex_buffer_indices_new(indices_type, cast(indices_array), indices_len)
    return cast(rv)
}




/// Creates a new vertex buffer that you can use to add attributes.
///
/// **vertex_buffer_new is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferNew(nVertices n_vertices: CUnsignedInt) -> CoglHandle! {
    let rv = cogl_vertex_buffer_new(n_vertices)
    return cast(rv)
}




/// Increment the reference count for a vertex buffer
///
/// **vertex_buffer_ref is deprecated:**
/// Use cogl_object_ref() instead
@available(*, deprecated) public func vertexBufferRef(handle: Handle) -> CoglHandle! {
    let rv = cogl_vertex_buffer_ref(handle)
    return cast(rv)
}




/// Submits all the user added attributes to the GPU; once submitted, the
/// attributes can be used for drawing.
/// 
/// You should aim to minimize calls to this function since it implies
/// validating your data; it potentially incurs a transport cost (especially if
/// you are using GLX indirect rendering) and potentially a format conversion
/// cost if the GPU doesn't natively support any of the given attribute formats.
///
/// **vertex_buffer_submit is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) public func vertexBufferSubmit(handle: Handle) {
    cogl_vertex_buffer_submit(handle)

}




/// Decrement the reference count for a vertex buffer
///
/// **vertex_buffer_unref is deprecated:**
/// Use cogl_object_unref() instead
@available(*, deprecated) public func vertexBufferUnref(handle: Handle) {
    cogl_vertex_buffer_unref(handle)

}




/// Replace the current viewport with the given values.
///
/// **viewport is deprecated:**
/// Use cogl_framebuffer_set_viewport instead
@available(*, deprecated) public func viewport(width: CUnsignedInt, height: CUnsignedInt) {
    cogl_viewport(width, height)

}



// MARK: - Color Record

/// The `ColorProtocol` protocol exposes the methods and properties of an underlying `CoglColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Color`.
/// Alternatively, use `ColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure for holding a color definition. The contents of
/// the CoglColor structure are private and should never by accessed
/// directly.
public protocol ColorProtocol {
        /// Untyped pointer to the underlying `CoglColor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglColor` instance.
    var color_ptr: UnsafeMutablePointer<CoglColor> { get }
}

/// The `ColorRef` type acts as a lightweight Swift reference to an underlying `CoglColor` instance.
/// It exposes methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `ColorRef` only as an `unowned` reference to an existing `CoglColor` instance.
///
/// A structure for holding a color definition. The contents of
/// the CoglColor structure are private and should never by accessed
/// directly.
public struct ColorRef: ColorProtocol {
        /// Untyped pointer to the underlying `CoglColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new (empty) color
    init() {
        let rv: UnsafeMutablePointer<CoglColor>! = cast(cogl_color_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `Color` type acts as an owner of an underlying `CoglColor` instance.
/// It provides the methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `Color` as a strong reference or owner of a `CoglColor` instance.
///
/// A structure for holding a color definition. The contents of
/// the CoglColor structure are private and should never by accessed
/// directly.
open class Color: ColorProtocol {
        /// Untyped pointer to the underlying `CoglColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglColor, cannot ref(cast(color_ptr))
    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    /// `CoglColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ColorProtocol`
    public init<T: ColorProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.color_ptr)
        // no reference counting for CoglColor, cannot ref(cast(color_ptr))
    }

    /// Do-nothing destructor for `CoglColor`.
    deinit {
        // no reference counting for CoglColor, cannot unref(cast(color_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglColor, cannot ref(cast(color_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglColor, cannot ref(cast(color_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglColor, cannot ref(cast(color_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglColor, cannot ref(cast(color_ptr))
    }

    /// Creates a new (empty) color
    public init() {
        let rv: UnsafeMutablePointer<CoglColor>! = cast(cogl_color_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: no Color properties

// MARK: no Color signals


// MARK: Color Record: ColorProtocol extension (methods and fields)
public extension ColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglColor` instance.
    var color_ptr: UnsafeMutablePointer<CoglColor> { return ptr.assumingMemoryBound(to: CoglColor.self) }

    /// Creates a copy of `color`
    func copy() -> UnsafeMutablePointer<CoglColor>! {
        let rv: UnsafeMutablePointer<CoglColor>! = cast(cogl_color_copy(cast(color_ptr)))
        return cast(rv)
    }

    /// Frees the resources allocated by `cogl_color_new()` and `cogl_color_copy()`
    func free() {
        cogl_color_free(cast(color_ptr))
    
    }

    /// Retrieves the alpha channel of `color` as a fixed point
    /// value between 0 and 1.0.
    func getAlpha() -> Double {
        let rv: Float = cast(cogl_color_get_alpha(cast(color_ptr)))
        return cast(rv)
    }

    /// Retrieves the alpha channel of `color` as a byte value
    /// between 0 and 255
    func getAlphaByte() -> CUnsignedChar {
        let rv = cogl_color_get_alpha_byte(cast(color_ptr))
        return cast(rv)
    }

    /// Retrieves the alpha channel of `color` as a floating point
    /// value between 0.0 and 1.0
    func getAlphaFloat() -> Double {
        let rv: Float = cast(cogl_color_get_alpha_float(cast(color_ptr)))
        return cast(rv)
    }

    /// Retrieves the blue channel of `color` as a fixed point
    /// value between 0 and 1.0.
    func getBlue() -> Double {
        let rv: Float = cast(cogl_color_get_blue(cast(color_ptr)))
        return cast(rv)
    }

    /// Retrieves the blue channel of `color` as a byte value
    /// between 0 and 255
    func getBlueByte() -> CUnsignedChar {
        let rv = cogl_color_get_blue_byte(cast(color_ptr))
        return cast(rv)
    }

    /// Retrieves the blue channel of `color` as a floating point
    /// value between 0.0 and 1.0
    func getBlueFloat() -> Double {
        let rv: Float = cast(cogl_color_get_blue_float(cast(color_ptr)))
        return cast(rv)
    }

    /// Retrieves the green channel of `color` as a fixed point
    /// value between 0 and 1.0.
    func getGreen() -> Double {
        let rv: Float = cast(cogl_color_get_green(cast(color_ptr)))
        return cast(rv)
    }

    /// Retrieves the green channel of `color` as a byte value
    /// between 0 and 255
    func getGreenByte() -> CUnsignedChar {
        let rv = cogl_color_get_green_byte(cast(color_ptr))
        return cast(rv)
    }

    /// Retrieves the green channel of `color` as a floating point
    /// value between 0.0 and 1.0
    func getGreenFloat() -> Double {
        let rv: Float = cast(cogl_color_get_green_float(cast(color_ptr)))
        return cast(rv)
    }

    /// Retrieves the red channel of `color` as a fixed point
    /// value between 0 and 1.0.
    func getRed() -> Double {
        let rv: Float = cast(cogl_color_get_red(cast(color_ptr)))
        return cast(rv)
    }

    /// Retrieves the red channel of `color` as a byte value
    /// between 0 and 255
    func getRedByte() -> CUnsignedChar {
        let rv = cogl_color_get_red_byte(cast(color_ptr))
        return cast(rv)
    }

    /// Retrieves the red channel of `color` as a floating point
    /// value between 0.0 and 1.0
    func getRedFloat() -> Double {
        let rv: Float = cast(cogl_color_get_red_float(cast(color_ptr)))
        return cast(rv)
    }

    /// Sets the values of the passed channels into a `CoglColor`
    func initFrom4f(red: gfloat, green: gfloat, blue: gfloat, alpha: gfloat) {
        cogl_color_init_from_4f(cast(color_ptr), red, green, blue, alpha)
    
    }

    /// Sets the values of the passed channels into a `CoglColor`
    func initFrom4fv(colorArray color_array: UnsafePointer<CFloat>) {
        cogl_color_init_from_4fv(cast(color_ptr), cast(color_array))
    
    }

    /// Sets the values of the passed channels into a `CoglColor`.
    func initFrom4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        cogl_color_init_from_4ub(cast(color_ptr), red, green, blue, alpha)
    
    }

    /// Converts a non-premultiplied color to a pre-multiplied color. For
    /// example, semi-transparent red is (1.0, 0, 0, 0.5) when non-premultiplied
    /// and (0.5, 0, 0, 0.5) when premultiplied.
    func premultiply() {
        cogl_color_premultiply(cast(color_ptr))
    
    }

    /// Sets the alpha channel of `color` to `alpha`.
    func set(alpha: gfloat) {
        cogl_color_set_alpha(cast(color_ptr), alpha)
    
    }

    /// Sets the alpha channel of `color` to `alpha`.
    func setAlphaByte(alpha: UInt8) {
        cogl_color_set_alpha_byte(cast(color_ptr), alpha)
    
    }

    /// Sets the alpha channel of `color` to `alpha`.
    func setAlphaFloat(alpha: gfloat) {
        cogl_color_set_alpha_float(cast(color_ptr), alpha)
    
    }

    /// Sets the blue channel of `color` to `blue`.
    func set(blue: gfloat) {
        cogl_color_set_blue(cast(color_ptr), blue)
    
    }

    /// Sets the blue channel of `color` to `blue`.
    func setBlueByte(blue: UInt8) {
        cogl_color_set_blue_byte(cast(color_ptr), blue)
    
    }

    /// Sets the blue channel of `color` to `blue`.
    func setBlueFloat(blue: gfloat) {
        cogl_color_set_blue_float(cast(color_ptr), blue)
    
    }

    /// Sets the values of the passed channels into a `CoglColor`
    ///
    /// **set_from_4f is deprecated:**
    /// Use cogl_color_init_from_4f instead.
    @available(*, deprecated) func setFrom4f(red: gfloat, green: gfloat, blue: gfloat, alpha: gfloat) {
        cogl_color_set_from_4f(cast(color_ptr), red, green, blue, alpha)
    
    }

    /// Sets the values of the passed channels into a `CoglColor`.
    ///
    /// **set_from_4ub is deprecated:**
    /// Use cogl_color_init_from_4ub instead.
    @available(*, deprecated) func setFrom4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        cogl_color_set_from_4ub(cast(color_ptr), red, green, blue, alpha)
    
    }

    /// Sets the green channel of `color` to `green`.
    func set(green: gfloat) {
        cogl_color_set_green(cast(color_ptr), green)
    
    }

    /// Sets the green channel of `color` to `green`.
    func setGreenByte(green: UInt8) {
        cogl_color_set_green_byte(cast(color_ptr), green)
    
    }

    /// Sets the green channel of `color` to `green`.
    func setGreenFloat(green: gfloat) {
        cogl_color_set_green_float(cast(color_ptr), green)
    
    }

    /// Sets the red channel of `color` to `red`.
    func set(red: gfloat) {
        cogl_color_set_red(cast(color_ptr), red)
    
    }

    /// Sets the red channel of `color` to `red`.
    func setRedByte(red: UInt8) {
        cogl_color_set_red_byte(cast(color_ptr), red)
    
    }

    /// Sets the red channel of `color` to `red`.
    func setRedFloat(red: gfloat) {
        cogl_color_set_red_float(cast(color_ptr), red)
    
    }

    /// Converts `color` to the HLS format.
    /// 
    /// The `hue` value is in the 0 .. 360 range. The `luminance` and
    /// `saturation` values are in the 0 .. 1 range.
    func toHsl(hue: UnsafeMutablePointer<CFloat>, saturation: UnsafeMutablePointer<CFloat>, luminance: UnsafeMutablePointer<CFloat>) {
        cogl_color_to_hsl(cast(color_ptr), cast(hue), cast(saturation), cast(luminance))
    
    }

    /// Converts a pre-multiplied color to a non-premultiplied color. For
    /// example, semi-transparent red is (0.5, 0, 0, 0.5) when premultiplied
    /// and (1.0, 0, 0, 0.5) when non-premultiplied.
    func unpremultiply() {
        cogl_color_unpremultiply(cast(color_ptr))
    
    }

    /// Converts a color expressed in HLS (hue, luminance and saturation)
    /// values into a `CoglColor`.
    func initFromHsl(hue: gfloat, saturation: gfloat, luminance: gfloat) {
        cogl_color_init_from_hsl(cast(color_ptr), hue, saturation, luminance)
    
    }

    /// Clears all the auxiliary buffers identified in the `buffers` mask, and if
    /// that includes the color buffer then the specified `color` is used.
    ///
    /// **clear is deprecated:**
    /// Use cogl_framebuffer_clear() api instead
    @available(*, deprecated) func clear(buffers: CUnsignedLong) {
        cogl_clear(cast(color_ptr), buffers)
    
    }

    /// Converts a color expressed in HLS (hue, luminance and saturation)
    /// values into a `CoglColor`.
    func colorInitFromHsl(hue: gfloat, saturation: gfloat, luminance: gfloat) {
        cogl_color_init_from_hsl(cast(color_ptr), hue, saturation, luminance)
    
    }

    /// Enables fogging. Fogging causes vertices that are further away from the eye
    /// to be rendered with a different color. The color is determined according to
    /// the chosen fog mode; at it's simplest the color is linearly interpolated so
    /// that vertices at `z_near` are drawn fully with their original color and
    /// vertices at `z_far` are drawn fully with `fog_color`. Fogging will remain
    /// enabled until you call `cogl_disable_fog()`.
    /// 
    /// <note>The fogging functions only work correctly when primitives use
    /// unmultiplied alpha colors. By default Cogl will premultiply textures
    /// and `cogl_set_source_color()` will premultiply colors, so unless you
    /// explicitly load your textures requesting an unmultiplied internal format
    /// and use `cogl_material_set_color()` you can only use fogging with fully
    /// opaque primitives. This might improve in the future when we can depend
    /// on fragment shaders.</note>
    ///
    /// **set_fog is deprecated:**
    /// Use #CoglSnippet shader api for fog
    @available(*, deprecated) func setFog(mode: FogMode, density: gfloat, zNear z_near: gfloat, zFar z_far: gfloat) {
        cogl_set_fog(cast(color_ptr), mode, density, z_near, z_far)
    
    }

    /// This is a convenience function for creating a solid fill source material
    /// from the given color. This color will be used for any subsequent drawing
    /// operation.
    /// 
    /// The color will be premultiplied by Cogl, so the color should be
    /// non-premultiplied. For example: use (1.0, 0.0, 0.0, 0.5) for
    /// semi-transparent red.
    /// 
    /// See also `cogl_set_source_color4ub()` and `cogl_set_source_color4f()`
    /// if you already have the color components.
    ///
    /// **set_source_color is deprecated:**
    /// Latest drawing apis all take an explicit
    ///                   #CoglPipeline argument so this stack of
    ///                   #CoglMaterial<!-- -->s shouldn't be used.
    @available(*, deprecated) func setSourceColor() {
        cogl_set_source_color(cast(color_ptr))
    
    }
    /// Retrieves the alpha channel of `color` as a fixed point
    /// value between 0 and 1.0.
    var alpha: Double {
        /// Retrieves the alpha channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let rv: Float = cast(cogl_color_get_alpha(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the alpha channel of `color` to `alpha`.
        nonmutating set {
            cogl_color_set_alpha(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the alpha channel of `color` as a byte value
    /// between 0 and 255
    var alphaByte: CUnsignedChar {
        /// Retrieves the alpha channel of `color` as a byte value
        /// between 0 and 255
        get {
            let rv = cogl_color_get_alpha_byte(cast(color_ptr))
            return cast(rv)
        }
        /// Sets the alpha channel of `color` to `alpha`.
        nonmutating set {
            cogl_color_set_alpha_byte(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the alpha channel of `color` as a floating point
    /// value between 0.0 and 1.0
    var alphaFloat: Double {
        /// Retrieves the alpha channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let rv: Float = cast(cogl_color_get_alpha_float(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the alpha channel of `color` to `alpha`.
        nonmutating set {
            cogl_color_set_alpha_float(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the blue channel of `color` as a fixed point
    /// value between 0 and 1.0.
    var blue: Double {
        /// Retrieves the blue channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let rv: Float = cast(cogl_color_get_blue(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the blue channel of `color` to `blue`.
        nonmutating set {
            cogl_color_set_blue(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the blue channel of `color` as a byte value
    /// between 0 and 255
    var blueByte: CUnsignedChar {
        /// Retrieves the blue channel of `color` as a byte value
        /// between 0 and 255
        get {
            let rv = cogl_color_get_blue_byte(cast(color_ptr))
            return cast(rv)
        }
        /// Sets the blue channel of `color` to `blue`.
        nonmutating set {
            cogl_color_set_blue_byte(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the blue channel of `color` as a floating point
    /// value between 0.0 and 1.0
    var blueFloat: Double {
        /// Retrieves the blue channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let rv: Float = cast(cogl_color_get_blue_float(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the blue channel of `color` to `blue`.
        nonmutating set {
            cogl_color_set_blue_float(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the green channel of `color` as a fixed point
    /// value between 0 and 1.0.
    var green: Double {
        /// Retrieves the green channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let rv: Float = cast(cogl_color_get_green(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the green channel of `color` to `green`.
        nonmutating set {
            cogl_color_set_green(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the green channel of `color` as a byte value
    /// between 0 and 255
    var greenByte: CUnsignedChar {
        /// Retrieves the green channel of `color` as a byte value
        /// between 0 and 255
        get {
            let rv = cogl_color_get_green_byte(cast(color_ptr))
            return cast(rv)
        }
        /// Sets the green channel of `color` to `green`.
        nonmutating set {
            cogl_color_set_green_byte(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the green channel of `color` as a floating point
    /// value between 0.0 and 1.0
    var greenFloat: Double {
        /// Retrieves the green channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let rv: Float = cast(cogl_color_get_green_float(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the green channel of `color` to `green`.
        nonmutating set {
            cogl_color_set_green_float(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the red channel of `color` as a fixed point
    /// value between 0 and 1.0.
    var red: Double {
        /// Retrieves the red channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let rv: Float = cast(cogl_color_get_red(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the red channel of `color` to `red`.
        nonmutating set {
            cogl_color_set_red(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the red channel of `color` as a byte value
    /// between 0 and 255
    var redByte: CUnsignedChar {
        /// Retrieves the red channel of `color` as a byte value
        /// between 0 and 255
        get {
            let rv = cogl_color_get_red_byte(cast(color_ptr))
            return cast(rv)
        }
        /// Sets the red channel of `color` to `red`.
        nonmutating set {
            cogl_color_set_red_byte(cast(color_ptr), cast(newValue))
        }
    }

    /// Retrieves the red channel of `color` as a floating point
    /// value between 0.0 and 1.0
    var redFloat: Double {
        /// Retrieves the red channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let rv: Float = cast(cogl_color_get_red_float(cast(color_ptr)))
            return cast(rv)
        }
        /// Sets the red channel of `color` to `red`.
        nonmutating set {
            cogl_color_set_red_float(cast(color_ptr), cast(newValue))
        }
    }

    // var privateMemberRed is unavailable because private_member_red is private

    // var privateMemberGreen is unavailable because private_member_green is private

    // var privateMemberBlue is unavailable because private_member_blue is private

    // var privateMemberAlpha is unavailable because private_member_alpha is private

    // var privateMemberPadding0 is unavailable because private_member_padding0 is private

    // var privateMemberPadding1 is unavailable because private_member_padding1 is private

    // var privateMemberPadding2 is unavailable because private_member_padding2 is private

}



// MARK: - Euler Record

/// The `EulerProtocol` protocol exposes the methods and properties of an underlying `CoglEuler` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Euler`.
/// Alternatively, use `EulerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EulerProtocol {
        /// Untyped pointer to the underlying `CoglEuler` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglEuler` instance.
    var _ptr: UnsafeMutablePointer<CoglEuler> { get }
}

/// The `EulerRef` type acts as a lightweight Swift reference to an underlying `CoglEuler` instance.
/// It exposes methods that can operate on this data type through `EulerProtocol` conformance.
/// Use `EulerRef` only as an `unowned` reference to an existing `CoglEuler` instance.
///

public struct EulerRef: EulerProtocol {
        /// Untyped pointer to the underlying `CoglEuler` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EulerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglEuler>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EulerProtocol`
    init<T: EulerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Euler` type acts as an owner of an underlying `CoglEuler` instance.
/// It provides the methods that can operate on this data type through `EulerProtocol` conformance.
/// Use `Euler` as a strong reference or owner of a `CoglEuler` instance.
///

open class Euler: EulerProtocol {
        /// Untyped pointer to the underlying `CoglEuler` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Euler` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglEuler>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglEuler` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Euler` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglEuler>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglEuler, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EulerProtocol`
    /// `CoglEuler` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EulerProtocol`
    public init<T: EulerProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for CoglEuler, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `CoglEuler`.
    deinit {
        // no reference counting for CoglEuler, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglEuler, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglEuler, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglEuler, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EulerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglEuler, cannot ref(cast(_ptr))
    }



}

// MARK: no Euler properties

// MARK: no Euler signals


// MARK: Euler Record: EulerProtocol extension (methods and fields)
public extension EulerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglEuler` instance.
    var _ptr: UnsafeMutablePointer<CoglEuler> { return ptr.assumingMemoryBound(to: CoglEuler.self) }



}



// MARK: - Material Record

/// The `MaterialProtocol` protocol exposes the methods and properties of an underlying `CoglMaterial` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Material`.
/// Alternatively, use `MaterialRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MaterialProtocol {
        /// Untyped pointer to the underlying `CoglMaterial` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglMaterial` instance.
    var _ptr: UnsafeMutablePointer<CoglMaterial> { get }
}

/// The `MaterialRef` type acts as a lightweight Swift reference to an underlying `CoglMaterial` instance.
/// It exposes methods that can operate on this data type through `MaterialProtocol` conformance.
/// Use `MaterialRef` only as an `unowned` reference to an existing `CoglMaterial` instance.
///

public struct MaterialRef: MaterialProtocol {
        /// Untyped pointer to the underlying `CoglMaterial` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MaterialRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MaterialProtocol`
    init<T: MaterialProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Material` type acts as an owner of an underlying `CoglMaterial` instance.
/// It provides the methods that can operate on this data type through `MaterialProtocol` conformance.
/// Use `Material` as a strong reference or owner of a `CoglMaterial` instance.
///

open class Material: MaterialProtocol {
        /// Untyped pointer to the underlying `CoglMaterial` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglMaterial` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglMaterial, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MaterialProtocol`
    /// `CoglMaterial` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MaterialProtocol`
    public init<T: MaterialProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for CoglMaterial, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `CoglMaterial`.
    deinit {
        // no reference counting for CoglMaterial, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglMaterial, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglMaterial, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglMaterial, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglMaterial, cannot ref(cast(_ptr))
    }



}

// MARK: no Material properties

// MARK: no Material signals


// MARK: Material Record: MaterialProtocol extension (methods and fields)
public extension MaterialProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglMaterial` instance.
    var _ptr: UnsafeMutablePointer<CoglMaterial> { return ptr.assumingMemoryBound(to: CoglMaterial.self) }

    /// Creates a new material with the configuration copied from the
    /// source material.
    /// 
    /// We would strongly advise developers to always aim to use
    /// `cogl_material_copy()` instead of `cogl_material_new()` whenever there will
    /// be any similarity between two materials. Copying a material helps Cogl
    /// keep track of a materials ancestry which we may use to help minimize GPU
    /// state changes.
    ///
    /// **copy is deprecated:**
    /// Use cogl_pipeline_copy() instead
    @available(*, deprecated) func copy() -> UnsafeMutablePointer<CoglMaterial>! {
        let rv: UnsafeMutablePointer<CoglMaterial>! = cast(cogl_material_copy(cast(_ptr)))
        return cast(rv)
    }

    /// Retrieves the current ambient color for `material`
    ///
    /// **get_ambient is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func get(ambient: ColorProtocol) {
        cogl_material_get_ambient(cast(_ptr), cast(ambient.ptr))
    
    }

    /// Retrieves the current material color.
    ///
    /// **get_color is deprecated:**
    /// Use cogl_pipeline_get_color() instead
    @available(*, deprecated) func get(color: ColorProtocol) {
        cogl_material_get_color(cast(_ptr), cast(color.ptr))
    
    }

    /// Retrieves the current diffuse color for `material`
    ///
    /// **get_diffuse is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func get(diffuse: ColorProtocol) {
        cogl_material_get_diffuse(cast(_ptr), cast(diffuse.ptr))
    
    }

    /// Retrieves the materials current emission color.
    ///
    /// **get_emission is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func get(emission: ColorProtocol) {
        cogl_material_get_emission(cast(_ptr), cast(emission.ptr))
    
    }

    /// Gets whether point sprite coordinate generation is enabled for this
    /// texture layer.
    ///
    /// **get_layer_point_sprite_coords_enabled is deprecated:**
    /// Use cogl_pipeline_get_layer_point_sprite_coords_enabled()
    ///                  instead
    @available(*, deprecated) func getLayerPointSpriteCoordsEnabled(layerIndex layer_index: CInt) -> CoglBool {
        let rv = cogl_material_get_layer_point_sprite_coords_enabled(cast(_ptr), layer_index)
        return cast(rv)
    }

    /// Returns the wrap mode for the 'p' coordinate of texture lookups on this
    /// layer.
    ///
    /// **get_layer_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_get_layer_wrap_mode_p() instead
    @available(*, deprecated) func getLayerWrapModeP(layerIndex layer_index: CInt) -> CoglMaterialWrapMode {
        let rv = cogl_material_get_layer_wrap_mode_p(cast(_ptr), layer_index)
        return cast(rv)
    }

    /// Returns the wrap mode for the 's' coordinate of texture lookups on this
    /// layer.
    ///
    /// **get_layer_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_get_layer_wrap_mode_s() instead
    @available(*, deprecated) func getLayerWrapModeS(layerIndex layer_index: CInt) -> CoglMaterialWrapMode {
        let rv = cogl_material_get_layer_wrap_mode_s(cast(_ptr), layer_index)
        return cast(rv)
    }

    /// Returns the wrap mode for the 't' coordinate of texture lookups on this
    /// layer.
    ///
    /// **get_layer_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_get_layer_wrap_mode_t() instead
    @available(*, deprecated) func getLayerWrapModeT(layerIndex layer_index: CInt) -> CoglMaterialWrapMode {
        let rv = cogl_material_get_layer_wrap_mode_t(cast(_ptr), layer_index)
        return cast(rv)
    }

    /// This function lets you access a material's internal list of layers
    /// for iteration.
    /// 
    /// <note>You should avoid using this API if possible since it was only
    /// made public by mistake and will be deprecated when we have
    /// suitable alternative.</note>
    /// 
    /// <note>It's important to understand that the list returned may not
    /// remain valid if you modify the material or any of the layers in any
    /// way and so you would have to re-get the list in that
    /// situation.</note>
    func getLayers() -> UnsafePointer<GList>! {
        let rv: UnsafePointer<GList>! = cast(cogl_material_get_layers(cast(_ptr)))
        return cast(rv)
    }

    /// Retrieves the number of layers defined for the given `material`
    ///
    /// **get_n_layers is deprecated:**
    /// Use cogl_pipeline_get_n_layers() instead
    @available(*, deprecated) func getNLayers() -> Int {
        let rv: Int = cast(cogl_material_get_n_layers(cast(_ptr)))
        return cast(rv)
    }

    /// Get the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
    /// used with the vertex buffer API.
    ///
    /// **get_point_size is deprecated:**
    /// Use cogl_pipeline_get_point_size() instead
    @available(*, deprecated) func getPointSize() -> Double {
        let rv: Float = cast(cogl_material_get_point_size(cast(_ptr)))
        return cast(rv)
    }

    /// Retrieves the materials current emission color.
    ///
    /// **get_shininess is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func getShininess() -> Double {
        let rv: Float = cast(cogl_material_get_shininess(cast(_ptr)))
        return cast(rv)
    }

    /// Retrieves the materials current specular color.
    ///
    /// **get_specular is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func get(specular: ColorProtocol) {
        cogl_material_get_specular(cast(_ptr), cast(specular.ptr))
    
    }

    /// Queries what user program has been associated with the given
    /// `material` using `cogl_material_set_user_program()`.
    ///
    /// **get_user_program is deprecated:**
    /// Use #CoglSnippet api instead instead
    @available(*, deprecated) func getUserProgram() -> CoglHandle! {
        let rv = cogl_material_get_user_program(cast(_ptr))
        return cast(rv)
    }

    /// This function removes a layer from your material
    ///
    /// **remove_layer is deprecated:**
    /// Use cogl_pipeline_remove_layer() instead
    @available(*, deprecated) func removeLayer(layerIndex layer_index: CInt) {
        cogl_material_remove_layer(cast(_ptr), layer_index)
    
    }

    /// Before a primitive is blended with the framebuffer, it goes through an
    /// alpha test stage which lets you discard fragments based on the current
    /// alpha value. This function lets you change the function used to evaluate
    /// the alpha channel, and thus determine which fragments are discarded
    /// and which continue on to the blending stage.
    /// 
    /// The default is `COGL_MATERIAL_ALPHA_FUNC_ALWAYS`
    ///
    /// **set_alpha_test_function is deprecated:**
    /// Use cogl_pipeline_set_alpha_test_function() instead
    @available(*, deprecated) func setAlphaTestFunction(alphaFunc alpha_func: MaterialAlphaFunc, alphaReference alpha_reference: gfloat) {
        cogl_material_set_alpha_test_function(cast(_ptr), alpha_func, alpha_reference)
    
    }

    /// Sets the material's ambient color, in the standard OpenGL lighting
    /// model. The ambient color affects the overall color of the object.
    /// 
    /// Since the diffuse color will be intense when the light hits the surface
    /// directly, the ambient will be most apparent where the light hits at a
    /// slant.
    /// 
    /// The default value is (0.2, 0.2, 0.2, 1.0)
    ///
    /// **set_ambient is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func set(ambient: ColorProtocol) {
        cogl_material_set_ambient(cast(_ptr), cast(ambient.ptr))
    
    }

    /// Conveniently sets the diffuse and ambient color of `material` at the same
    /// time. See `cogl_material_set_ambient()` and `cogl_material_set_diffuse()`.
    /// 
    /// The default ambient color is (0.2, 0.2, 0.2, 1.0)
    /// 
    /// The default diffuse color is (0.8, 0.8, 0.8, 1.0)
    ///
    /// **set_ambient_and_diffuse is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func setAmbientAndDiffuse(color: ColorProtocol) {
        cogl_material_set_ambient_and_diffuse(cast(_ptr), cast(color.ptr))
    
    }

    /// If not already familiar; please refer <link linkend="cogl-Blend-Strings">here</link>
    /// for an overview of what blend strings are, and their syntax.
    /// 
    /// Blending occurs after the alpha test function, and combines fragments with
    /// the framebuffer.
    /// 
    /// Currently the only blend function Cogl exposes is `ADD()`. So any valid
    /// blend statements will be of the form:
    /// 
    /// ```
    ///   &lt;channel-mask&gt;=ADD(SRC_COLOR*(&lt;factor&gt;), DST_COLOR*(&lt;factor&gt;))
    /// ```
    /// 
    /// <warning>The brackets around blend factors are currently not
    /// optional!</warning>
    /// 
    /// This is the list of source-names usable as blend factors:
    /// <itemizedlist>
    ///   <listitem><para>SRC_COLOR: The color of the in comming fragment</para></listitem>
    ///   <listitem><para>DST_COLOR: The color of the framebuffer</para></listitem>
    ///   <listitem><para>CONSTANT: The constant set via `cogl_material_set_blend_constant()`</para></listitem>
    /// </itemizedlist>
    /// 
    /// The source names can be used according to the
    /// <link linkend="cogl-Blend-String-syntax">color-source and factor syntax</link>,
    /// so for example "(1-SRC_COLOR[A])" would be a valid factor, as would
    /// "(CONSTANT[RGB])"
    /// 
    /// These can also be used as factors:
    /// <itemizedlist>
    ///   <listitem>0: (0, 0, 0, 0)</listitem>
    ///   <listitem>1: (1, 1, 1, 1)</listitem>
    ///   <listitem>SRC_ALPHA_SATURATE_FACTOR: (f,f,f,1) where f = `MIN(SRC_COLOR[A],1-DST_COLOR[A])`</listitem>
    /// </itemizedlist>
    /// 
    /// <note>Remember; all color components are normalized to the range [0, 1]
    /// before computing the result of blending.</note>
    /// 
    /// <example id="cogl-Blend-Strings-blend-unpremul">
    ///   <title>Blend Strings/1</title>
    ///   <para>Blend a non-premultiplied source over a destination with
    ///   premultiplied alpha:</para>
    ///   <programlisting>
    /// "RGB = `ADD(SRC_COLOR*(SRC_COLOR[A])`, DST_COLOR*(1-SRC_COLOR[A]))"
    /// "A   = `ADD(SRC_COLOR, DST_COLOR*(1-SRC_COLOR[A])`)"
    ///   </programlisting>
    /// </example>
    /// 
    /// <example id="cogl-Blend-Strings-blend-premul">
    ///   <title>Blend Strings/2</title>
    ///   <para>Blend a premultiplied source over a destination with
    ///   premultiplied alpha</para>
    ///   <programlisting>
    /// "RGBA = `ADD(SRC_COLOR, DST_COLOR*(1-SRC_COLOR[A])`)"
    ///   </programlisting>
    /// </example>
    /// 
    /// The default blend string is:
    /// ```
    ///    RGBA = ADD (SRC_COLOR, DST_COLOR*(1-SRC_COLOR[A]))
    /// ```
    /// 
    /// That gives normal alpha-blending when the calculated color for the material
    /// is in premultiplied form.
    ///
    /// **set_blend is deprecated:**
    /// Use cogl_pipeline_set_blend() instead
    @available(*, deprecated) func setBlend(blendString blend_string: UnsafePointer<CChar>) throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let rv = cogl_material_set_blend(cast(_ptr), blend_string, &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// When blending is setup to reference a CONSTANT blend factor then
    /// blending will depend on the constant set with this function.
    ///
    /// **set_blend_constant is deprecated:**
    /// Use cogl_pipeline_set_blend_constant() instead
    @available(*, deprecated) func setBlendConstant(constantColor constant_color: ColorProtocol) {
        cogl_material_set_blend_constant(cast(_ptr), cast(constant_color.ptr))
    
    }

    /// Sets the basic color of the material, used when no lighting is enabled.
    /// 
    /// Note that if you don't add any layers to the material then the color
    /// will be blended unmodified with the destination; the default blend
    /// expects premultiplied colors: for example, use (0.5, 0.0, 0.0, 0.5) for
    /// semi-transparent red. See `cogl_color_premultiply()`.
    /// 
    /// The default value is (1.0, 1.0, 1.0, 1.0)
    ///
    /// **set_color is deprecated:**
    /// Use cogl_pipeline_set_color() instead
    @available(*, deprecated) func set(color: ColorProtocol) {
        cogl_material_set_color(cast(_ptr), cast(color.ptr))
    
    }

    /// Sets the basic color of the material, used when no lighting is enabled.
    /// 
    /// The default value is (1.0, 1.0, 1.0, 1.0)
    ///
    /// **set_color4f is deprecated:**
    /// Use cogl_pipeline_set_color4f() instead
    @available(*, deprecated) func setColor4f(red: gfloat, green: gfloat, blue: gfloat, alpha: gfloat) {
        cogl_material_set_color4f(cast(_ptr), red, green, blue, alpha)
    
    }

    /// Sets the basic color of the material, used when no lighting is enabled.
    /// 
    /// The default value is (0xff, 0xff, 0xff, 0xff)
    ///
    /// **set_color4ub is deprecated:**
    /// Use cogl_pipeline_set_color4ub() instead
    @available(*, deprecated) func setColor4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        cogl_material_set_color4ub(cast(_ptr), red, green, blue, alpha)
    
    }

    /// Sets the material's diffuse color, in the standard OpenGL lighting
    /// model. The diffuse color is most intense where the light hits the
    /// surface directly - perpendicular to the surface.
    /// 
    /// The default value is (0.8, 0.8, 0.8, 1.0)
    ///
    /// **set_diffuse is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func set(diffuse: ColorProtocol) {
        cogl_material_set_diffuse(cast(_ptr), cast(diffuse.ptr))
    
    }

    /// Sets the material's emissive color, in the standard OpenGL lighting
    /// model. It will look like the surface is a light source emitting this
    /// color.
    /// 
    /// The default value is (0.0, 0.0, 0.0, 1.0)
    ///
    /// **set_emission is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func set(emission: ColorProtocol) {
        cogl_material_set_emission(cast(_ptr), cast(emission.ptr))
    
    }

    /// In addition to the standard OpenGL lighting model a Cogl material may have
    /// one or more layers comprised of textures that can be blended together in
    /// order, with a number of different texture combine modes. This function
    /// defines a new texture layer.
    /// 
    /// The index values of multiple layers do not have to be consecutive; it is
    /// only their relative order that is important.
    /// 
    /// <note>In the future, we may define other types of material layers, such
    /// as purely GLSL based layers.</note>
    ///
    /// **set_layer is deprecated:**
    /// Use cogl_pipeline_set_layer() instead
    @available(*, deprecated) func setLayer(layerIndex layer_index: CInt, texture: Handle) {
        cogl_material_set_layer(cast(_ptr), layer_index, texture)
    
    }

    /// If not already familiar; you can refer
    /// <link linkend="cogl-Blend-Strings">here</link> for an overview of what blend
    /// strings are and there syntax.
    /// 
    /// These are all the functions available for texture combining:
    /// <itemizedlist>
    ///   `<listitem>REPLACE(arg0)` = arg0</listitem>
    ///   `<listitem>MODULATE(arg0, arg1)` = arg0 x arg1</listitem>
    ///   `<listitem>ADD(arg0, arg1)` = arg0 + arg1</listitem>
    ///   `<listitem>ADD_SIGNED(arg0, arg1)` = arg0 + arg1 - 0.5</listitem>
    ///   `<listitem>INTERPOLATE(arg0, arg1, arg2)` = arg0 x arg2 + arg1 x (1 - arg2)</listitem>
    ///   `<listitem>SUBTRACT(arg0, arg1)` = arg0 - arg1</listitem>
    ///   <listitem>
    ///     <programlisting>
    ///  `DOT3_RGB(arg0, arg1)` = 4 x ((arg0[R] - 0.5)) * (arg1[R] - 0.5) +
    ///                              (arg0[G] - 0.5)) * (arg1[G] - 0.5) +
    ///                              (arg0[B] - 0.5)) * (arg1[B] - 0.5))
    ///     </programlisting>
    ///   </listitem>
    ///   <listitem>
    ///     <programlisting>
    ///  `DOT3_RGBA(arg0, arg1)` = 4 x ((arg0[R] - 0.5)) * (arg1[R] - 0.5) +
    ///                               (arg0[G] - 0.5)) * (arg1[G] - 0.5) +
    ///                               (arg0[B] - 0.5)) * (arg1[B] - 0.5))
    ///     </programlisting>
    ///   </listitem>
    /// </itemizedlist>
    /// 
    /// Refer to the
    /// <link linkend="cogl-Blend-String-syntax">color-source syntax</link> for
    /// describing the arguments. The valid source names for texture combining
    /// are:
    /// <variablelist>
    ///   <varlistentry>
    ///     <term>TEXTURE</term>
    ///     <listitem>Use the color from the current texture layer</listitem>
    ///   </varlistentry>
    ///   <varlistentry>
    ///     <term>TEXTURE_0, TEXTURE_1, etc</term>
    ///     <listitem>Use the color from the specified texture layer</listitem>
    ///   </varlistentry>
    ///   <varlistentry>
    ///     <term>CONSTANT</term>
    ///     <listitem>Use the color from the constant given with
    ///     `cogl_material_set_layer_constant()`</listitem>
    ///   </varlistentry>
    ///   <varlistentry>
    ///     <term>PRIMARY</term>
    ///     <listitem>Use the color of the material as set with
    ///     `cogl_material_set_color()`</listitem>
    ///   </varlistentry>
    ///   <varlistentry>
    ///     <term>PREVIOUS</term>
    ///     <listitem>Either use the texture color from the previous layer, or
    ///     if this is layer 0, use the color of the material as set with
    ///     `cogl_material_set_color()`</listitem>
    ///   </varlistentry>
    /// </variablelist>
    /// 
    /// <refsect2 id="cogl-Layer-Combine-Examples">
    ///   <title>Layer Combine Examples</title>
    ///   <para>This is effectively what the default blending is:</para>
    ///   <informalexample><programlisting>
    ///   RGBA = MODULATE (PREVIOUS, TEXTURE)
    ///   </programlisting></informalexample>
    ///   <para>This could be used to cross-fade between two images, using
    ///   the alpha component of a constant as the interpolator. The constant
    ///   color is given by calling cogl_material_set_layer_constant.</para>
    ///   <informalexample><programlisting>
    ///   RGBA = INTERPOLATE (PREVIOUS, TEXTURE, CONSTANT[A])
    ///   </programlisting></informalexample>
    /// </refsect2>
    /// 
    /// <note>You can't give a multiplication factor for arguments as you can
    /// with blending.</note>
    ///
    /// **set_layer_combine is deprecated:**
    /// Use cogl_pipeline_set_layer_combine() instead
    @available(*, deprecated) func setLayerCombine(layerIndex layer_index: CInt, blendString blend_string: UnsafePointer<CChar>) throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let rv = cogl_material_set_layer_combine(cast(_ptr), layer_index, blend_string, &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// When you are using the 'CONSTANT' color source in a layer combine
    /// description then you can use this function to define its value.
    ///
    /// **set_layer_combine_constant is deprecated:**
    /// Use cogl_pipeline_set_layer_combine_constant()
    /// instead
    @available(*, deprecated) func setLayerCombineConstant(layerIndex layer_index: CInt, constant: ColorProtocol) {
        cogl_material_set_layer_combine_constant(cast(_ptr), layer_index, cast(constant.ptr))
    
    }

    /// Changes the decimation and interpolation filters used when a texture is
    /// drawn at other scales than 100%.
    ///
    /// **set_layer_filters is deprecated:**
    /// Use cogl_pipeline_set_layer_filters() instead
    @available(*, deprecated) func setLayerFilters(layerIndex layer_index: CInt, minFilter min_filter: MaterialFilter, magFilter mag_filter: MaterialFilter) {
        cogl_material_set_layer_filters(cast(_ptr), layer_index, min_filter, mag_filter)
    
    }

    /// This function lets you set a matrix that can be used to e.g. translate
    /// and rotate a single layer of a material used to fill your geometry.
    ///
    /// **set_layer_matrix is deprecated:**
    /// Use cogl_pipeline_set_layer_matrix() instead
    @available(*, deprecated) func setLayerMatrix(layerIndex layer_index: CInt, matrix: MatrixProtocol) {
        cogl_material_set_layer_matrix(cast(_ptr), layer_index, cast(matrix.ptr))
    
    }

    /// When rendering points, if `enable` is `true` then the texture
    /// coordinates for this layer will be replaced with coordinates that
    /// vary from 0.0 to 1.0 across the primitive. The top left of the
    /// point will have the coordinates 0.0,0.0 and the bottom right will
    /// have 1.0,1.0. If `enable` is `false` then the coordinates will be
    /// fixed for the entire point.
    /// 
    /// This function will only work if `COGL_FEATURE_POINT_SPRITE` is
    /// available. If the feature is not available then the function will
    /// return `false` and set `error`.
    ///
    /// **set_layer_point_sprite_coords_enabled is deprecated:**
    /// Use cogl_pipeline_set_layer_point_sprite_coords_enabled()
    ///                  instead
    @available(*, deprecated) func setLayerPointSpriteCoordsEnabled(layerIndex layer_index: CInt, enable: Bool_) throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let rv = cogl_material_set_layer_point_sprite_coords_enabled(cast(_ptr), layer_index, enable, &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Sets the wrap mode for all three coordinates of texture lookups on
    /// this layer. This is equivalent to calling
    /// `cogl_material_set_layer_wrap_mode_s()`,
    /// `cogl_material_set_layer_wrap_mode_t()` and
    /// `cogl_material_set_layer_wrap_mode_p()` separately.
    ///
    /// **set_layer_wrap_mode is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode() instead
    @available(*, deprecated) func setLayerWrapMode(layerIndex layer_index: CInt, mode: MaterialWrapMode) {
        cogl_material_set_layer_wrap_mode(cast(_ptr), layer_index, mode)
    
    }

    /// Sets the wrap mode for the 'p' coordinate of texture lookups on
    /// this layer. 'p' is the third coordinate.
    ///
    /// **set_layer_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode_p() instead
    @available(*, deprecated) func setLayerWrapModeP(layerIndex layer_index: CInt, mode: MaterialWrapMode) {
        cogl_material_set_layer_wrap_mode_p(cast(_ptr), layer_index, mode)
    
    }

    /// Sets the wrap mode for the 's' coordinate of texture lookups on this layer.
    ///
    /// **set_layer_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode_s() instead
    @available(*, deprecated) func setLayerWrapModeS(layerIndex layer_index: CInt, mode: MaterialWrapMode) {
        cogl_material_set_layer_wrap_mode_s(cast(_ptr), layer_index, mode)
    
    }

    /// Sets the wrap mode for the 't' coordinate of texture lookups on this layer.
    ///
    /// **set_layer_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode_t() instead
    @available(*, deprecated) func setLayerWrapModeT(layerIndex layer_index: CInt, mode: MaterialWrapMode) {
        cogl_material_set_layer_wrap_mode_t(cast(_ptr), layer_index, mode)
    
    }

    /// Changes the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
    /// used with the vertex buffer API. Note that typically the GPU will
    /// only support a limited minimum and maximum range of point sizes. If
    /// the chosen point size is outside that range then the nearest value
    /// within that range will be used instead. The size of a point is in
    /// screen space so it will be the same regardless of any
    /// transformations. The default point size is 1.0.
    ///
    /// **set_point_size is deprecated:**
    /// Use cogl_pipeline_set_point_size() instead
    @available(*, deprecated) func set(pointSize point_size: gfloat) {
        cogl_material_set_point_size(cast(_ptr), point_size)
    
    }

    /// Sets the shininess of the material, in the standard OpenGL lighting
    /// model, which determines the size of the specular highlights. A
    /// higher `shininess` will produce smaller highlights which makes the
    /// object appear more shiny.
    /// 
    /// The default value is 0.0
    ///
    /// **set_shininess is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func set(shininess: gfloat) {
        cogl_material_set_shininess(cast(_ptr), shininess)
    
    }

    /// Sets the material's specular color, in the standard OpenGL lighting
    /// model. The intensity of the specular color depends on the viewport
    /// position, and is brightest along the lines of reflection.
    /// 
    /// The default value is (0.0, 0.0, 0.0, 1.0)
    ///
    /// **set_specular is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) func set(specular: ColorProtocol) {
        cogl_material_set_specular(cast(_ptr), cast(specular.ptr))
    
    }

    /// Associates a linked CoglProgram with the given material so that the
    /// program can take full control of vertex and/or fragment processing.
    /// 
    /// This is an example of how it can be used to associate an ARBfp
    /// program with a `CoglMaterial:`
    /// ```
    /// CoglHandle shader;
    /// CoglHandle program;
    /// CoglMaterial *material;
    /// 
    /// shader = cogl_create_shader (COGL_SHADER_TYPE_FRAGMENT);
    /// cogl_shader_source (shader,
    ///                     "!!ARBfp1.0\n"
    ///                     "MOV result.color,fragment.color;\n"
    ///                     "END\n");
    /// cogl_shader_compile (shader);
    /// 
    /// program = cogl_create_program ();
    /// cogl_program_attach_shader (program, shader);
    /// cogl_program_link (program);
    /// 
    /// material = cogl_material_new ();
    /// cogl_material_set_user_program (material, program);
    /// 
    /// cogl_set_source_color4ub (0xff, 0x00, 0x00, 0xff);
    /// cogl_rectangle (0, 0, 100, 100);
    /// ```
    /// 
    /// It is possibly worth keeping in mind that this API is not part of
    /// the long term design for how we want to expose shaders to Cogl
    /// developers (We are planning on deprecating the cogl_program and
    /// cogl_shader APIs in favour of a "snippet" framework) but in the
    /// meantime we hope this will handle most practical GLSL and ARBfp
    /// requirements.
    /// 
    /// Also remember you need to check for either the
    /// `COGL_FEATURE_SHADERS_GLSL` or `COGL_FEATURE_SHADERS_ARBFP` before
    /// using the cogl_program or cogl_shader API.
    ///
    /// **set_user_program is deprecated:**
    /// Use #CoglSnippet api instead instead
    @available(*, deprecated) func setUser(program: Handle) {
        cogl_material_set_user_program(cast(_ptr), program)
    
    }
    /// This function lets you access a material's internal list of layers
    /// for iteration.
    /// 
    /// <note>You should avoid using this API if possible since it was only
    /// made public by mistake and will be deprecated when we have
    /// suitable alternative.</note>
    /// 
    /// <note>It's important to understand that the list returned may not
    /// remain valid if you modify the material or any of the layers in any
    /// way and so you would have to re-get the list in that
    /// situation.</note>
    var layers: UnsafePointer<GList>! {
        /// This function lets you access a material's internal list of layers
        /// for iteration.
        /// 
        /// <note>You should avoid using this API if possible since it was only
        /// made public by mistake and will be deprecated when we have
        /// suitable alternative.</note>
        /// 
        /// <note>It's important to understand that the list returned may not
        /// remain valid if you modify the material or any of the layers in any
        /// way and so you would have to re-get the list in that
        /// situation.</note>
        get {
            let rv: UnsafePointer<GList>! = cast(cogl_material_get_layers(cast(_ptr)))
            return cast(rv)
        }
    }

    /// Retrieves the number of layers defined for the given `material`
    ///
    /// **get_n_layers is deprecated:**
    /// Use cogl_pipeline_get_n_layers() instead
    var nLayers: Int {
        /// Retrieves the number of layers defined for the given `material`
        ///
        /// **get_n_layers is deprecated:**
        /// Use cogl_pipeline_get_n_layers() instead
        @available(*, deprecated) get {
            let rv: Int = cast(cogl_material_get_n_layers(cast(_ptr)))
            return cast(rv)
        }
    }

    /// Get the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
    /// used with the vertex buffer API.
    ///
    /// **get_point_size is deprecated:**
    /// Use cogl_pipeline_get_point_size() instead
    var pointSize: Double {
        /// Get the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
        /// used with the vertex buffer API.
        ///
        /// **get_point_size is deprecated:**
        /// Use cogl_pipeline_get_point_size() instead
        @available(*, deprecated) get {
            let rv: Float = cast(cogl_material_get_point_size(cast(_ptr)))
            return cast(rv)
        }
        /// Changes the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
        /// used with the vertex buffer API. Note that typically the GPU will
        /// only support a limited minimum and maximum range of point sizes. If
        /// the chosen point size is outside that range then the nearest value
        /// within that range will be used instead. The size of a point is in
        /// screen space so it will be the same regardless of any
        /// transformations. The default point size is 1.0.
        ///
        /// **set_point_size is deprecated:**
        /// Use cogl_pipeline_set_point_size() instead
        @available(*, deprecated) nonmutating set {
            cogl_material_set_point_size(cast(_ptr), cast(newValue))
        }
    }

    /// Retrieves the materials current emission color.
    ///
    /// **get_shininess is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    var shininess: Double {
        /// Retrieves the materials current emission color.
        ///
        /// **get_shininess is deprecated:**
        /// Use the #CoglSnippet shader api for lighting
        @available(*, deprecated) get {
            let rv: Float = cast(cogl_material_get_shininess(cast(_ptr)))
            return cast(rv)
        }
        /// Sets the shininess of the material, in the standard OpenGL lighting
        /// model, which determines the size of the specular highlights. A
        /// higher `shininess` will produce smaller highlights which makes the
        /// object appear more shiny.
        /// 
        /// The default value is 0.0
        ///
        /// **set_shininess is deprecated:**
        /// Use the #CoglSnippet shader api for lighting
        @available(*, deprecated) nonmutating set {
            cogl_material_set_shininess(cast(_ptr), cast(newValue))
        }
    }

    /// Queries what user program has been associated with the given
    /// `material` using `cogl_material_set_user_program()`.
    ///
    /// **get_user_program is deprecated:**
    /// Use #CoglSnippet api instead instead
    var userProgram: CoglHandle! {
        /// Queries what user program has been associated with the given
        /// `material` using `cogl_material_set_user_program()`.
        ///
        /// **get_user_program is deprecated:**
        /// Use #CoglSnippet api instead instead
        @available(*, deprecated) get {
            let rv = cogl_material_get_user_program(cast(_ptr))
            return cast(rv)
        }
        /// Associates a linked CoglProgram with the given material so that the
        /// program can take full control of vertex and/or fragment processing.
        /// 
        /// This is an example of how it can be used to associate an ARBfp
        /// program with a `CoglMaterial:`
        /// ```
        /// CoglHandle shader;
        /// CoglHandle program;
        /// CoglMaterial *material;
        /// 
        /// shader = cogl_create_shader (COGL_SHADER_TYPE_FRAGMENT);
        /// cogl_shader_source (shader,
        ///                     "!!ARBfp1.0\n"
        ///                     "MOV result.color,fragment.color;\n"
        ///                     "END\n");
        /// cogl_shader_compile (shader);
        /// 
        /// program = cogl_create_program ();
        /// cogl_program_attach_shader (program, shader);
        /// cogl_program_link (program);
        /// 
        /// material = cogl_material_new ();
        /// cogl_material_set_user_program (material, program);
        /// 
        /// cogl_set_source_color4ub (0xff, 0x00, 0x00, 0xff);
        /// cogl_rectangle (0, 0, 100, 100);
        /// ```
        /// 
        /// It is possibly worth keeping in mind that this API is not part of
        /// the long term design for how we want to expose shaders to Cogl
        /// developers (We are planning on deprecating the cogl_program and
        /// cogl_shader APIs in favour of a "snippet" framework) but in the
        /// meantime we hope this will handle most practical GLSL and ARBfp
        /// requirements.
        /// 
        /// Also remember you need to check for either the
        /// `COGL_FEATURE_SHADERS_GLSL` or `COGL_FEATURE_SHADERS_ARBFP` before
        /// using the cogl_program or cogl_shader API.
        ///
        /// **set_user_program is deprecated:**
        /// Use #CoglSnippet api instead instead
        @available(*, deprecated) nonmutating set {
            cogl_material_set_user_program(cast(_ptr), cast(newValue))
        }
    }


}



// MARK: - MaterialLayer Record

/// The `MaterialLayerProtocol` protocol exposes the methods and properties of an underlying `CoglMaterialLayer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MaterialLayer`.
/// Alternatively, use `MaterialLayerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MaterialLayerProtocol {
        /// Untyped pointer to the underlying `CoglMaterialLayer` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglMaterialLayer` instance.
    var _ptr: UnsafeMutablePointer<CoglMaterialLayer> { get }
}

/// The `MaterialLayerRef` type acts as a lightweight Swift reference to an underlying `CoglMaterialLayer` instance.
/// It exposes methods that can operate on this data type through `MaterialLayerProtocol` conformance.
/// Use `MaterialLayerRef` only as an `unowned` reference to an existing `CoglMaterialLayer` instance.
///

public struct MaterialLayerRef: MaterialLayerProtocol {
        /// Untyped pointer to the underlying `CoglMaterialLayer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MaterialLayerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MaterialLayerProtocol`
    init<T: MaterialLayerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MaterialLayer` type acts as an owner of an underlying `CoglMaterialLayer` instance.
/// It provides the methods that can operate on this data type through `MaterialLayerProtocol` conformance.
/// Use `MaterialLayer` as a strong reference or owner of a `CoglMaterialLayer` instance.
///

open class MaterialLayer: MaterialLayerProtocol {
        /// Untyped pointer to the underlying `CoglMaterialLayer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglMaterialLayer` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglMaterialLayer, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MaterialLayerProtocol`
    /// `CoglMaterialLayer` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MaterialLayerProtocol`
    public init<T: MaterialLayerProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for CoglMaterialLayer, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `CoglMaterialLayer`.
    deinit {
        // no reference counting for CoglMaterialLayer, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglMaterialLayer, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglMaterialLayer, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglMaterialLayer, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglMaterialLayer, cannot ref(cast(_ptr))
    }



}

// MARK: no MaterialLayer properties

// MARK: no MaterialLayer signals


// MARK: MaterialLayer Record: MaterialLayerProtocol extension (methods and fields)
public extension MaterialLayerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglMaterialLayer` instance.
    var _ptr: UnsafeMutablePointer<CoglMaterialLayer> { return ptr.assumingMemoryBound(to: CoglMaterialLayer.self) }

    /// Queries the currently set downscaling filter for a material later
    ///
    /// **get_mag_filter is deprecated:**
    /// No replacement
    @available(*, deprecated) func getMagFilter() -> CoglMaterialFilter {
        let rv = cogl_material_layer_get_mag_filter(cast(_ptr))
        return cast(rv)
    }

    /// Queries the currently set downscaling filter for a material layer
    ///
    /// **get_min_filter is deprecated:**
    /// No replacement
    @available(*, deprecated) func getMinFilter() -> CoglMaterialFilter {
        let rv = cogl_material_layer_get_min_filter(cast(_ptr))
        return cast(rv)
    }

    /// Extracts a texture handle for a specific layer.
    /// 
    /// <note>In the future Cogl may support purely GLSL based layers; for those
    /// layers this function which will likely return `COGL_INVALID_HANDLE` if you
    /// try to get the texture handle from them. Considering this scenario, you
    /// should call `cogl_material_layer_get_type()` first in order check it is of
    /// type `COGL_MATERIAL_LAYER_TYPE_TEXTURE` before calling this function.</note>
    ///
    /// **get_texture is deprecated:**
    /// No replacement
    @available(*, deprecated) func getTexture() -> CoglHandle! {
        let rv = cogl_material_layer_get_texture(cast(_ptr))
        return cast(rv)
    }

    /// Retrieves the type of the layer
    /// 
    /// Currently there is only one type of layer defined:
    /// `COGL_MATERIAL_LAYER_TYPE_TEXTURE`, but considering we may add purely GLSL
    /// based layers in the future, you should write code that checks the type
    /// first.
    ///
    /// **get_type is deprecated:**
    /// No replacement
    @available(*, deprecated) func getType() -> CoglMaterialLayerType {
        let rv = cogl_material_layer_get_type(cast(_ptr))
        return cast(rv)
    }

    /// Gets the wrap mode for the 'p' coordinate of texture lookups on
    /// this layer. 'p' is the third coordinate.
    ///
    /// **get_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_p() instead
    @available(*, deprecated) func getWrapModeP() -> CoglMaterialWrapMode {
        let rv = cogl_material_layer_get_wrap_mode_p(cast(_ptr))
        return cast(rv)
    }

    /// Gets the wrap mode for the 's' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_s() instead
    @available(*, deprecated) func getWrapModeS() -> CoglMaterialWrapMode {
        let rv = cogl_material_layer_get_wrap_mode_s(cast(_ptr))
        return cast(rv)
    }

    /// Gets the wrap mode for the 't' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_t() instead
    @available(*, deprecated) func getWrapModeT() -> CoglMaterialWrapMode {
        let rv = cogl_material_layer_get_wrap_mode_t(cast(_ptr))
        return cast(rv)
    }
    /// Queries the currently set downscaling filter for a material later
    ///
    /// **get_mag_filter is deprecated:**
    /// No replacement
    var magFilter: CoglMaterialFilter {
        /// Queries the currently set downscaling filter for a material later
        ///
        /// **get_mag_filter is deprecated:**
        /// No replacement
        @available(*, deprecated) get {
            let rv = cogl_material_layer_get_mag_filter(cast(_ptr))
            return cast(rv)
        }
    }

    /// Queries the currently set downscaling filter for a material layer
    ///
    /// **get_min_filter is deprecated:**
    /// No replacement
    var minFilter: CoglMaterialFilter {
        /// Queries the currently set downscaling filter for a material layer
        ///
        /// **get_min_filter is deprecated:**
        /// No replacement
        @available(*, deprecated) get {
            let rv = cogl_material_layer_get_min_filter(cast(_ptr))
            return cast(rv)
        }
    }

    /// Extracts a texture handle for a specific layer.
    /// 
    /// <note>In the future Cogl may support purely GLSL based layers; for those
    /// layers this function which will likely return `COGL_INVALID_HANDLE` if you
    /// try to get the texture handle from them. Considering this scenario, you
    /// should call `cogl_material_layer_get_type()` first in order check it is of
    /// type `COGL_MATERIAL_LAYER_TYPE_TEXTURE` before calling this function.</note>
    ///
    /// **get_texture is deprecated:**
    /// No replacement
    var texture: CoglHandle! {
        /// Extracts a texture handle for a specific layer.
        /// 
        /// <note>In the future Cogl may support purely GLSL based layers; for those
        /// layers this function which will likely return `COGL_INVALID_HANDLE` if you
        /// try to get the texture handle from them. Considering this scenario, you
        /// should call `cogl_material_layer_get_type()` first in order check it is of
        /// type `COGL_MATERIAL_LAYER_TYPE_TEXTURE` before calling this function.</note>
        ///
        /// **get_texture is deprecated:**
        /// No replacement
        @available(*, deprecated) get {
            let rv = cogl_material_layer_get_texture(cast(_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the type of the layer
    /// 
    /// Currently there is only one type of layer defined:
    /// `COGL_MATERIAL_LAYER_TYPE_TEXTURE`, but considering we may add purely GLSL
    /// based layers in the future, you should write code that checks the type
    /// first.
    ///
    /// **get_type is deprecated:**
    /// No replacement
    var type: CoglMaterialLayerType {
        /// Retrieves the type of the layer
        /// 
        /// Currently there is only one type of layer defined:
        /// `COGL_MATERIAL_LAYER_TYPE_TEXTURE`, but considering we may add purely GLSL
        /// based layers in the future, you should write code that checks the type
        /// first.
        ///
        /// **get_type is deprecated:**
        /// No replacement
        @available(*, deprecated) get {
            let rv = cogl_material_layer_get_type(cast(_ptr))
            return cast(rv)
        }
    }

    /// Gets the wrap mode for the 'p' coordinate of texture lookups on
    /// this layer. 'p' is the third coordinate.
    ///
    /// **get_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_p() instead
    var wrapModeP: CoglMaterialWrapMode {
        /// Gets the wrap mode for the 'p' coordinate of texture lookups on
        /// this layer. 'p' is the third coordinate.
        ///
        /// **get_wrap_mode_p is deprecated:**
        /// Use cogl_pipeline_layer_get_wrap_mode_p() instead
        @available(*, deprecated) get {
            let rv = cogl_material_layer_get_wrap_mode_p(cast(_ptr))
            return cast(rv)
        }
    }

    /// Gets the wrap mode for the 's' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_s() instead
    var wrapModeS: CoglMaterialWrapMode {
        /// Gets the wrap mode for the 's' coordinate of texture lookups on this layer.
        ///
        /// **get_wrap_mode_s is deprecated:**
        /// Use cogl_pipeline_layer_get_wrap_mode_s() instead
        @available(*, deprecated) get {
            let rv = cogl_material_layer_get_wrap_mode_s(cast(_ptr))
            return cast(rv)
        }
    }

    /// Gets the wrap mode for the 't' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_t() instead
    var wrapModeT: CoglMaterialWrapMode {
        /// Gets the wrap mode for the 't' coordinate of texture lookups on this layer.
        ///
        /// **get_wrap_mode_t is deprecated:**
        /// Use cogl_pipeline_layer_get_wrap_mode_t() instead
        @available(*, deprecated) get {
            let rv = cogl_material_layer_get_wrap_mode_t(cast(_ptr))
            return cast(rv)
        }
    }


}



// MARK: - Matrix Record

/// The `MatrixProtocol` protocol exposes the methods and properties of an underlying `CoglMatrix` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Matrix`.
/// Alternatively, use `MatrixRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A CoglMatrix holds a 4x4 transform matrix. This is a single precision,
/// column-major matrix which means it is compatible with what OpenGL expects.
/// 
/// A CoglMatrix can represent transforms such as, rotations, scaling,
/// translation, sheering, and linear projections. You can combine these
/// transforms by multiplying multiple matrices in the order you want them
/// applied.
/// 
/// The transformation of a vertex (x, y, z, w) by a CoglMatrix is given by:
/// 
/// ```
///   x_new = xx * x + xy * y + xz * z + xw * w
///   y_new = yx * x + yy * y + yz * z + yw * w
///   z_new = zx * x + zy * y + zz * z + zw * w
///   w_new = wx * x + wy * y + wz * z + ww * w
/// ```
/// 
/// Where w is normally 1
/// 
/// <note>You must consider the members of the CoglMatrix structure read only,
/// and all matrix modifications must be done via the cogl_matrix API. This
/// allows Cogl to annotate the matrices internally. Violation of this will give
/// undefined results. If you need to initialize a matrix with a constant other
/// than the identity matrix you can use `cogl_matrix_init_from_array()`.</note>
public protocol MatrixProtocol {
        /// Untyped pointer to the underlying `CoglMatrix` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglMatrix` instance.
    var matrix_ptr: UnsafeMutablePointer<CoglMatrix> { get }
}

/// The `MatrixRef` type acts as a lightweight Swift reference to an underlying `CoglMatrix` instance.
/// It exposes methods that can operate on this data type through `MatrixProtocol` conformance.
/// Use `MatrixRef` only as an `unowned` reference to an existing `CoglMatrix` instance.
///
/// A CoglMatrix holds a 4x4 transform matrix. This is a single precision,
/// column-major matrix which means it is compatible with what OpenGL expects.
/// 
/// A CoglMatrix can represent transforms such as, rotations, scaling,
/// translation, sheering, and linear projections. You can combine these
/// transforms by multiplying multiple matrices in the order you want them
/// applied.
/// 
/// The transformation of a vertex (x, y, z, w) by a CoglMatrix is given by:
/// 
/// ```
///   x_new = xx * x + xy * y + xz * z + xw * w
///   y_new = yx * x + yy * y + yz * z + yw * w
///   z_new = zx * x + zy * y + zz * z + zw * w
///   w_new = wx * x + wy * y + wz * z + ww * w
/// ```
/// 
/// Where w is normally 1
/// 
/// <note>You must consider the members of the CoglMatrix structure read only,
/// and all matrix modifications must be done via the cogl_matrix API. This
/// allows Cogl to annotate the matrices internally. Violation of this will give
/// undefined results. If you need to initialize a matrix with a constant other
/// than the identity matrix you can use `cogl_matrix_init_from_array()`.</note>
public struct MatrixRef: MatrixProtocol {
        /// Untyped pointer to the underlying `CoglMatrix` instance.
    /// For type-safe access, use the generated, typed pointer `matrix_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MatrixRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MatrixProtocol`
    init<T: MatrixProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Matrix` type acts as an owner of an underlying `CoglMatrix` instance.
/// It provides the methods that can operate on this data type through `MatrixProtocol` conformance.
/// Use `Matrix` as a strong reference or owner of a `CoglMatrix` instance.
///
/// A CoglMatrix holds a 4x4 transform matrix. This is a single precision,
/// column-major matrix which means it is compatible with what OpenGL expects.
/// 
/// A CoglMatrix can represent transforms such as, rotations, scaling,
/// translation, sheering, and linear projections. You can combine these
/// transforms by multiplying multiple matrices in the order you want them
/// applied.
/// 
/// The transformation of a vertex (x, y, z, w) by a CoglMatrix is given by:
/// 
/// ```
///   x_new = xx * x + xy * y + xz * z + xw * w
///   y_new = yx * x + yy * y + yz * z + yw * w
///   z_new = zx * x + zy * y + zz * z + zw * w
///   w_new = wx * x + wy * y + wz * z + ww * w
/// ```
/// 
/// Where w is normally 1
/// 
/// <note>You must consider the members of the CoglMatrix structure read only,
/// and all matrix modifications must be done via the cogl_matrix API. This
/// allows Cogl to annotate the matrices internally. Violation of this will give
/// undefined results. If you need to initialize a matrix with a constant other
/// than the identity matrix you can use `cogl_matrix_init_from_array()`.</note>
open class Matrix: MatrixProtocol {
        /// Untyped pointer to the underlying `CoglMatrix` instance.
    /// For type-safe access, use the generated, typed pointer `matrix_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglMatrix` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Reference intialiser for a related type that implements `MatrixProtocol`
    /// `CoglMatrix` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MatrixProtocol`
    public init<T: MatrixProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.matrix_ptr)
        // no reference counting for CoglMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Do-nothing destructor for `CoglMatrix`.
    deinit {
        // no reference counting for CoglMatrix, cannot unref(cast(matrix_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglMatrix, cannot ref(cast(matrix_ptr))
    }



}

// MARK: no Matrix properties

// MARK: no Matrix signals


// MARK: Matrix Record: MatrixProtocol extension (methods and fields)
public extension MatrixProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglMatrix` instance.
    var matrix_ptr: UnsafeMutablePointer<CoglMatrix> { return ptr.assumingMemoryBound(to: CoglMatrix.self) }

    /// Allocates a new `CoglMatrix` on the heap and initializes it with
    /// the same values as `matrix`.
    func copy() -> UnsafeMutablePointer<CoglMatrix>! {
        let rv: UnsafeMutablePointer<CoglMatrix>! = cast(cogl_matrix_copy(cast(matrix_ptr)))
        return cast(rv)
    }

    /// Frees a `CoglMatrix` that was previously allocated via a call to
    /// `cogl_matrix_copy()`.
    func free() {
        cogl_matrix_free(cast(matrix_ptr))
    
    }

    /// Multiplies `matrix` by the given frustum perspective matrix.
    func frustum(left_: gfloat, right_: gfloat, bottom: gfloat, top: gfloat, zNear z_near: gfloat, zFar z_far: gfloat) {
        cogl_matrix_frustum(cast(matrix_ptr), left_, right_, bottom, top, z_near, z_far)
    
    }

    /// Casts `matrix` to a float array which can be directly passed to OpenGL.
    func getArray() -> UnsafePointer<CFloat>! {
        let rv: UnsafePointer<CFloat>! = cast(cogl_matrix_get_array(cast(matrix_ptr)))
        return cast(rv)
    }

    /// Gets the inverse transform of a given matrix and uses it to initialize
    /// a new `CoglMatrix`.
    /// 
    /// <note>Although the first parameter is annotated as const to indicate
    /// that the transform it represents isn't modified this function may
    /// technically save a copy of the inverse transform within the given
    /// `CoglMatrix` so that subsequent requests for the inverse transform may
    /// avoid costly inversion calculations.</note>
    func get(inverse: MatrixProtocol) -> CoglBool {
        let rv = cogl_matrix_get_inverse(cast(matrix_ptr), cast(inverse.ptr))
        return cast(rv)
    }

    /// Initializes `matrix` with the contents of `array`
    func initFrom(array: UnsafePointer<CFloat>) {
        cogl_matrix_init_from_array(cast(matrix_ptr), cast(array))
    
    }

    /// Resets matrix to the identity matrix:
    /// 
    /// ```
    ///   .xx=1; .xy=0; .xz=0; .xw=0;
    ///   .yx=0; .yy=1; .yz=0; .yw=0;
    ///   .zx=0; .zy=0; .zz=1; .zw=0;
    ///   .wx=0; .wy=0; .wz=0; .ww=1;
    /// ```
    /// 
    func initIdentity() {
        cogl_matrix_init_identity(cast(matrix_ptr))
    
    }

    /// Resets matrix to the (tx, ty, tz) translation matrix:
    /// 
    /// ```
    ///   .xx=1; .xy=0; .xz=0; .xw=tx;
    ///   .yx=0; .yy=1; .yz=0; .yw=ty;
    ///   .zx=0; .zy=0; .zz=1; .zw=tz;
    ///   .wx=0; .wy=0; .wz=0; .ww=1;
    /// ```
    /// 
    func initTranslation(tx: gfloat, ty: gfloat, tz: gfloat) {
        cogl_matrix_init_translation(cast(matrix_ptr), tx, ty, tz)
    
    }

    /// Applies a view transform `matrix` that positions the camera at
    /// the coordinate (`eye_position_x`, `eye_position_y`, `eye_position_z`)
    /// looking towards an object at the coordinate (`object_x`, `object_y`,
    /// `object_z`). The top of the camera is aligned to the given world up
    /// vector, which is normally simply (0, 1, 0) to map up to the
    /// positive direction of the y axis.
    /// 
    /// Because there is a lot of missleading documentation online for
    /// gluLookAt regarding the up vector we want to try and be a bit
    /// clearer here.
    /// 
    /// The up vector should simply be relative to your world coordinates
    /// and does not need to change as you move the eye and object
    /// positions.  Many online sources may claim that the up vector needs
    /// to be perpendicular to the vector between the eye and object
    /// position (partly because the man page is somewhat missleading) but
    /// that is not necessary for this function.
    /// 
    /// <note>You should never look directly along the world-up
    /// vector.</note>
    /// 
    /// <note>It is assumed you are using a typical projection matrix where
    /// your origin maps to the center of your viewport.</note>
    /// 
    /// <note>Almost always when you use this function it should be the first
    /// transform applied to a new modelview transform</note>
    func lookAt(eyePositionX eye_position_x: gfloat, eyePositionY eye_position_y: gfloat, eyePositionZ eye_position_z: gfloat, objectX object_x: gfloat, objectY object_y: gfloat, objectZ object_z: gfloat, worldUpX world_up_x: gfloat, worldUpY world_up_y: gfloat, worldUpZ world_up_z: gfloat) {
        cogl_matrix_look_at(cast(matrix_ptr), eye_position_x, eye_position_y, eye_position_z, object_x, object_y, object_z, world_up_x, world_up_y, world_up_z)
    
    }

    /// Multiplies the two supplied matrices together and stores
    /// the resulting matrix inside `result`.
    /// 
    /// <note>It is possible to multiply the `a` matrix in-place, so
    /// `result` can be equal to `a` but can't be equal to `b`.</note>
    func multiply(a: MatrixProtocol, b: MatrixProtocol) {
        cogl_matrix_multiply(cast(matrix_ptr), cast(a.ptr), cast(b.ptr))
    
    }

    /// Multiplies `matrix` by a parallel projection matrix.
    ///
    /// **ortho is deprecated:**
    /// Use cogl_matrix_orthographic()
    @available(*, deprecated) func ortho(left_: gfloat, right_: gfloat, bottom: gfloat, top: gfloat, near: gfloat, far: gfloat) {
        cogl_matrix_ortho(cast(matrix_ptr), left_, right_, bottom, top, near, far)
    
    }

    /// Multiplies `matrix` by the described perspective matrix
    /// 
    /// <note>You should be careful not to have to great a `z_far` / `z_near`
    /// ratio since that will reduce the effectiveness of depth testing
    /// since there wont be enough precision to identify the depth of
    /// objects near to each other.</note>
    func perspective(fovY fov_y: gfloat, aspect: gfloat, zNear z_near: gfloat, zFar z_far: gfloat) {
        cogl_matrix_perspective(cast(matrix_ptr), fov_y, aspect, z_near, z_far)
    
    }

    /// Multiplies `matrix` with a rotation matrix that applies a rotation
    /// of `angle` degrees around the specified 3D vector.
    func rotate(angle: gfloat, x: gfloat, y: gfloat, z: gfloat) {
        cogl_matrix_rotate(cast(matrix_ptr), angle, x, y, z)
    
    }

    /// Multiplies `matrix` with a transform matrix that scales along the X,
    /// Y and Z axis.
    func scale(sx: gfloat, sy: gfloat, sz: gfloat) {
        cogl_matrix_scale(cast(matrix_ptr), sx, sy, sz)
    
    }

    /// Transforms a point whos position is given and returned as four float
    /// components.
    func transformPoint(x: UnsafeMutablePointer<CFloat>, y: UnsafeMutablePointer<CFloat>, z: UnsafeMutablePointer<CFloat>, w: UnsafeMutablePointer<CFloat>) {
        cogl_matrix_transform_point(cast(matrix_ptr), cast(x), cast(y), cast(z), cast(w))
    
    }

    /// Multiplies `matrix` with a transform matrix that translates along
    /// the X, Y and Z axis.
    func translate(x: gfloat, y: gfloat, z: gfloat) {
        cogl_matrix_translate(cast(matrix_ptr), x, y, z)
    
    }

    /// Replaces `matrix` with its transpose. Ie, every element (i,j) in the
    /// new matrix is taken from element (j,i) in the old matrix.
    func transpose() {
        cogl_matrix_transpose(cast(matrix_ptr))
    
    }

    /// Prints the contents of a `CoglMatrix` to stdout.
    func debugMatrixPrint() {
        cogl_debug_matrix_print(cast(matrix_ptr))
    
    }

    /// Stores the current model-view matrix in `matrix`.
    ///
    /// **get_modelview_matrix is deprecated:**
    /// Use cogl_framebuffer_get_modelview_matrix()
    ///                   instead
    @available(*, deprecated) func getModelviewMatrix() {
        cogl_get_modelview_matrix(cast(matrix_ptr))
    
    }

    /// Stores the current projection matrix in `matrix`.
    ///
    /// **get_projection_matrix is deprecated:**
    /// Use cogl_framebuffer_get_projection_matrix()
    ///                   instead
    @available(*, deprecated) func getProjectionMatrix() {
        cogl_get_projection_matrix(cast(matrix_ptr))
    
    }

    /// Loads `matrix` as the new model-view matrix.
    ///
    /// **set_modelview_matrix is deprecated:**
    /// Use cogl_framebuffer_set_modelview_matrix()
    ///                   instead
    @available(*, deprecated) func setModelviewMatrix() {
        cogl_set_modelview_matrix(cast(matrix_ptr))
    
    }

    /// Loads matrix as the new projection matrix.
    ///
    /// **set_projection_matrix is deprecated:**
    /// Use cogl_framebuffer_set_projection_matrix()
    ///                   instead
    @available(*, deprecated) func setProjectionMatrix() {
        cogl_set_projection_matrix(cast(matrix_ptr))
    
    }

    /// Multiplies the current model-view matrix by the given matrix.
    ///
    /// **transform is deprecated:**
    /// Use cogl_framebuffer_transform() instead
    @available(*, deprecated) func transform() {
        cogl_transform(cast(matrix_ptr))
    
    }
    /// Casts `matrix` to a float array which can be directly passed to OpenGL.
    var array: UnsafePointer<CFloat>! {
        /// Casts `matrix` to a float array which can be directly passed to OpenGL.
        get {
            let rv: UnsafePointer<CFloat>! = cast(cogl_matrix_get_array(cast(matrix_ptr)))
            return cast(rv)
        }
    }

    /// Determines if the given matrix is an identity matrix.
    var isIdentity: CoglBool {
        /// Determines if the given matrix is an identity matrix.
        get {
            let rv = cogl_matrix_is_identity(cast(matrix_ptr))
            return cast(rv)
        }
    }

    // var modelviewMatrix is unavailable because it does not have a valid getter or setter

    // var projectionMatrix is unavailable because it does not have a valid getter or setter

    var xx: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.xx)
            return rv
        }
         set {
            matrix_ptr.pointee.xx = cast(newValue)
        }
    }

    var yx: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.yx)
            return rv
        }
         set {
            matrix_ptr.pointee.yx = cast(newValue)
        }
    }

    var zx: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.zx)
            return rv
        }
         set {
            matrix_ptr.pointee.zx = cast(newValue)
        }
    }

    var wx: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.wx)
            return rv
        }
         set {
            matrix_ptr.pointee.wx = cast(newValue)
        }
    }

    var xy: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.xy)
            return rv
        }
         set {
            matrix_ptr.pointee.xy = cast(newValue)
        }
    }

    var yy: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.yy)
            return rv
        }
         set {
            matrix_ptr.pointee.yy = cast(newValue)
        }
    }

    var zy: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.zy)
            return rv
        }
         set {
            matrix_ptr.pointee.zy = cast(newValue)
        }
    }

    var wy: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.wy)
            return rv
        }
         set {
            matrix_ptr.pointee.wy = cast(newValue)
        }
    }

    var xz: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.xz)
            return rv
        }
         set {
            matrix_ptr.pointee.xz = cast(newValue)
        }
    }

    var yz: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.yz)
            return rv
        }
         set {
            matrix_ptr.pointee.yz = cast(newValue)
        }
    }

    var zz: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.zz)
            return rv
        }
         set {
            matrix_ptr.pointee.zz = cast(newValue)
        }
    }

    var wz: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.wz)
            return rv
        }
         set {
            matrix_ptr.pointee.wz = cast(newValue)
        }
    }

    var xw: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.xw)
            return rv
        }
         set {
            matrix_ptr.pointee.xw = cast(newValue)
        }
    }

    var yw: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.yw)
            return rv
        }
         set {
            matrix_ptr.pointee.yw = cast(newValue)
        }
    }

    var zw: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.zw)
            return rv
        }
         set {
            matrix_ptr.pointee.zw = cast(newValue)
        }
    }

    var ww: Double {
        get {
            let rv: Double = cast(matrix_ptr.pointee.ww)
            return rv
        }
         set {
            matrix_ptr.pointee.ww = cast(newValue)
        }
    }

    // var privateMemberInv is unavailable because private_member_inv is private

    // var privateMemberType is unavailable because private_member_type is private

    // var privateMemberFlags is unavailable because private_member_flags is private

    // var privateMember_padding3 is unavailable because private_member__padding3 is private

}



// MARK: - Quaternion Record

/// The `QuaternionProtocol` protocol exposes the methods and properties of an underlying `CoglQuaternion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Quaternion`.
/// Alternatively, use `QuaternionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol QuaternionProtocol {
        /// Untyped pointer to the underlying `CoglQuaternion` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglQuaternion` instance.
    var _ptr: UnsafeMutablePointer<CoglQuaternion> { get }
}

/// The `QuaternionRef` type acts as a lightweight Swift reference to an underlying `CoglQuaternion` instance.
/// It exposes methods that can operate on this data type through `QuaternionProtocol` conformance.
/// Use `QuaternionRef` only as an `unowned` reference to an existing `CoglQuaternion` instance.
///

public struct QuaternionRef: QuaternionProtocol {
        /// Untyped pointer to the underlying `CoglQuaternion` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension QuaternionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglQuaternion>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `QuaternionProtocol`
    init<T: QuaternionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Quaternion` type acts as an owner of an underlying `CoglQuaternion` instance.
/// It provides the methods that can operate on this data type through `QuaternionProtocol` conformance.
/// Use `Quaternion` as a strong reference or owner of a `CoglQuaternion` instance.
///

open class Quaternion: QuaternionProtocol {
        /// Untyped pointer to the underlying `CoglQuaternion` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Quaternion` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglQuaternion>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglQuaternion` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Quaternion` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglQuaternion>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglQuaternion, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `QuaternionProtocol`
    /// `CoglQuaternion` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `QuaternionProtocol`
    public init<T: QuaternionProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for CoglQuaternion, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `CoglQuaternion`.
    deinit {
        // no reference counting for CoglQuaternion, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglQuaternion, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglQuaternion, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglQuaternion, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QuaternionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglQuaternion, cannot ref(cast(_ptr))
    }



}

// MARK: no Quaternion properties

// MARK: no Quaternion signals


// MARK: Quaternion Record: QuaternionProtocol extension (methods and fields)
public extension QuaternionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglQuaternion` instance.
    var _ptr: UnsafeMutablePointer<CoglQuaternion> { return ptr.assumingMemoryBound(to: CoglQuaternion.self) }



}



// MARK: - TextureVertex Record

/// The `TextureVertexProtocol` protocol exposes the methods and properties of an underlying `CoglTextureVertex` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextureVertex`.
/// Alternatively, use `TextureVertexRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Used to specify vertex information when calling `cogl_polygon()`
public protocol TextureVertexProtocol {
        /// Untyped pointer to the underlying `CoglTextureVertex` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglTextureVertex` instance.
    var _ptr: UnsafeMutablePointer<CoglTextureVertex> { get }
}

/// The `TextureVertexRef` type acts as a lightweight Swift reference to an underlying `CoglTextureVertex` instance.
/// It exposes methods that can operate on this data type through `TextureVertexProtocol` conformance.
/// Use `TextureVertexRef` only as an `unowned` reference to an existing `CoglTextureVertex` instance.
///
/// Used to specify vertex information when calling `cogl_polygon()`
public struct TextureVertexRef: TextureVertexProtocol {
        /// Untyped pointer to the underlying `CoglTextureVertex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextureVertexRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextureVertexProtocol`
    init<T: TextureVertexProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextureVertex` type acts as an owner of an underlying `CoglTextureVertex` instance.
/// It provides the methods that can operate on this data type through `TextureVertexProtocol` conformance.
/// Use `TextureVertex` as a strong reference or owner of a `CoglTextureVertex` instance.
///
/// Used to specify vertex information when calling `cogl_polygon()`
open class TextureVertex: TextureVertexProtocol {
        /// Untyped pointer to the underlying `CoglTextureVertex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglTextureVertex` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglTextureVertex, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TextureVertexProtocol`
    /// `CoglTextureVertex` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextureVertexProtocol`
    public init<T: TextureVertexProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for CoglTextureVertex, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `CoglTextureVertex`.
    deinit {
        // no reference counting for CoglTextureVertex, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglTextureVertex, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglTextureVertex, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglTextureVertex, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglTextureVertex, cannot ref(cast(_ptr))
    }



}

// MARK: no TextureVertex properties

// MARK: no TextureVertex signals


// MARK: TextureVertex Record: TextureVertexProtocol extension (methods and fields)
public extension TextureVertexProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglTextureVertex` instance.
    var _ptr: UnsafeMutablePointer<CoglTextureVertex> { return ptr.assumingMemoryBound(to: CoglTextureVertex.self) }

    /// Draws a convex polygon using the current source material to fill / texture
    /// with according to the texture coordinates passed.
    /// 
    /// If `use_color` is `true` then the color will be changed for each vertex using
    /// the value specified in the color member of `CoglTextureVertex`. This can be
    /// used for example to make the texture fade out by setting the alpha value of
    /// the color.
    /// 
    /// All of the texture coordinates must be in the range [0,1] and repeating the
    /// texture is not supported.
    /// 
    /// Because of the way this function is implemented it will currently
    /// only work if either the texture is not sliced or the backend is not
    /// OpenGL ES and the minifying and magnifying functions are both set
    /// to COGL_MATERIAL_FILTER_NEAREST.
    func polygon(nVertices n_vertices: CUnsignedInt, useColor use_color: Bool_) {
        cogl_polygon(cast(_ptr), n_vertices, use_color)
    
    }

    /// Model x-coordinate
    var x: Double {
        /// Model x-coordinate
        get {
            let rv: Double = cast(_ptr.pointee.x)
            return rv
        }
        /// Model x-coordinate
         set {
            _ptr.pointee.x = cast(newValue)
        }
    }

    /// Model y-coordinate
    var y: Double {
        /// Model y-coordinate
        get {
            let rv: Double = cast(_ptr.pointee.y)
            return rv
        }
        /// Model y-coordinate
         set {
            _ptr.pointee.y = cast(newValue)
        }
    }

    /// Model z-coordinate
    var z: Double {
        /// Model z-coordinate
        get {
            let rv: Double = cast(_ptr.pointee.z)
            return rv
        }
        /// Model z-coordinate
         set {
            _ptr.pointee.z = cast(newValue)
        }
    }

    /// Texture x-coordinate
    var tx: Double {
        /// Texture x-coordinate
        get {
            let rv: Double = cast(_ptr.pointee.tx)
            return rv
        }
        /// Texture x-coordinate
         set {
            _ptr.pointee.tx = cast(newValue)
        }
    }

    /// Texture y-coordinate
    var ty: Double {
        /// Texture y-coordinate
        get {
            let rv: Double = cast(_ptr.pointee.ty)
            return rv
        }
        /// Texture y-coordinate
         set {
            _ptr.pointee.ty = cast(newValue)
        }
    }

    /// The color to use at this vertex. This is ignored if
    ///   use_color is `false` when calling `cogl_polygon()`
    var color: CoglColor {
        /// The color to use at this vertex. This is ignored if
        ///   use_color is `false` when calling `cogl_polygon()`
        get {
            let rv: CoglColor = cast(_ptr.pointee.color)
            return rv
        }
        /// The color to use at this vertex. This is ignored if
        ///   use_color is `false` when calling `cogl_polygon()`
         set {
            _ptr.pointee.color = cast(newValue)
        }
    }

}



// MARK: - _ColorSizeCheck Record

/// The `_ColorSizeCheckProtocol` protocol exposes the methods and properties of an underlying `_CoglColorSizeCheck` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_ColorSizeCheck`.
/// Alternatively, use `_ColorSizeCheckRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol _ColorSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglColorSizeCheck` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_CoglColorSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglColorSizeCheck> { get }
}

/// The `_ColorSizeCheckRef` type acts as a lightweight Swift reference to an underlying `_CoglColorSizeCheck` instance.
/// It exposes methods that can operate on this data type through `_ColorSizeCheckProtocol` conformance.
/// Use `_ColorSizeCheckRef` only as an `unowned` reference to an existing `_CoglColorSizeCheck` instance.
///

public struct _ColorSizeCheckRef: _ColorSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglColorSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _ColorSizeCheckRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_ColorSizeCheckProtocol`
    init<T: _ColorSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_ColorSizeCheck` type acts as an owner of an underlying `_CoglColorSizeCheck` instance.
/// It provides the methods that can operate on this data type through `_ColorSizeCheckProtocol` conformance.
/// Use `_ColorSizeCheck` as a strong reference or owner of a `_CoglColorSizeCheck` instance.
///

open class _ColorSizeCheck: _ColorSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglColorSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_CoglColorSizeCheck` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _CoglColorSizeCheck, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `_ColorSizeCheckProtocol`
    /// `_CoglColorSizeCheck` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_ColorSizeCheckProtocol`
    public init<T: _ColorSizeCheckProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for _CoglColorSizeCheck, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `_CoglColorSizeCheck`.
    deinit {
        // no reference counting for _CoglColorSizeCheck, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _CoglColorSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _CoglColorSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _CoglColorSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _CoglColorSizeCheck, cannot ref(cast(_ptr))
    }



}

// MARK: no _ColorSizeCheck properties

// MARK: no _ColorSizeCheck signals


// MARK: _ColorSizeCheck Record: _ColorSizeCheckProtocol extension (methods and fields)
public extension _ColorSizeCheckProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_CoglColorSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglColorSizeCheck> { return ptr.assumingMemoryBound(to: _CoglColorSizeCheck.self) }


    // var compileTimeAssertCoglColorSize is unavailable because compile_time_assert_CoglColor_size is void

}



// MARK: - _MatrixSizeCheck Record

/// The `_MatrixSizeCheckProtocol` protocol exposes the methods and properties of an underlying `_CoglMatrixSizeCheck` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MatrixSizeCheck`.
/// Alternatively, use `_MatrixSizeCheckRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol _MatrixSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglMatrixSizeCheck` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_CoglMatrixSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglMatrixSizeCheck> { get }
}

/// The `_MatrixSizeCheckRef` type acts as a lightweight Swift reference to an underlying `_CoglMatrixSizeCheck` instance.
/// It exposes methods that can operate on this data type through `_MatrixSizeCheckProtocol` conformance.
/// Use `_MatrixSizeCheckRef` only as an `unowned` reference to an existing `_CoglMatrixSizeCheck` instance.
///

public struct _MatrixSizeCheckRef: _MatrixSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglMatrixSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MatrixSizeCheckRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MatrixSizeCheckProtocol`
    init<T: _MatrixSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MatrixSizeCheck` type acts as an owner of an underlying `_CoglMatrixSizeCheck` instance.
/// It provides the methods that can operate on this data type through `_MatrixSizeCheckProtocol` conformance.
/// Use `_MatrixSizeCheck` as a strong reference or owner of a `_CoglMatrixSizeCheck` instance.
///

open class _MatrixSizeCheck: _MatrixSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglMatrixSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_CoglMatrixSizeCheck` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `_MatrixSizeCheckProtocol`
    /// `_CoglMatrixSizeCheck` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MatrixSizeCheckProtocol`
    public init<T: _MatrixSizeCheckProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `_CoglMatrixSizeCheck`.
    deinit {
        // no reference counting for _CoglMatrixSizeCheck, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(cast(_ptr))
    }



}

// MARK: no _MatrixSizeCheck properties

// MARK: no _MatrixSizeCheck signals


// MARK: _MatrixSizeCheck Record: _MatrixSizeCheckProtocol extension (methods and fields)
public extension _MatrixSizeCheckProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_CoglMatrixSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglMatrixSizeCheck> { return ptr.assumingMemoryBound(to: _CoglMatrixSizeCheck.self) }


    // var compileTimeAssertCoglMatrixSize is unavailable because compile_time_assert_CoglMatrix_size is void

}



// MARK: - _TextureVertexSizeCheck Record

/// The `_TextureVertexSizeCheckProtocol` protocol exposes the methods and properties of an underlying `_CoglTextureVertexSizeCheck` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_TextureVertexSizeCheck`.
/// Alternatively, use `_TextureVertexSizeCheckRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol _TextureVertexSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglTextureVertexSizeCheck> { get }
}

/// The `_TextureVertexSizeCheckRef` type acts as a lightweight Swift reference to an underlying `_CoglTextureVertexSizeCheck` instance.
/// It exposes methods that can operate on this data type through `_TextureVertexSizeCheckProtocol` conformance.
/// Use `_TextureVertexSizeCheckRef` only as an `unowned` reference to an existing `_CoglTextureVertexSizeCheck` instance.
///

public struct _TextureVertexSizeCheckRef: _TextureVertexSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _TextureVertexSizeCheckRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_TextureVertexSizeCheckProtocol`
    init<T: _TextureVertexSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_TextureVertexSizeCheck` type acts as an owner of an underlying `_CoglTextureVertexSizeCheck` instance.
/// It provides the methods that can operate on this data type through `_TextureVertexSizeCheckProtocol` conformance.
/// Use `_TextureVertexSizeCheck` as a strong reference or owner of a `_CoglTextureVertexSizeCheck` instance.
///

open class _TextureVertexSizeCheck: _TextureVertexSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_CoglTextureVertexSizeCheck` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `_TextureVertexSizeCheckProtocol`
    /// `_CoglTextureVertexSizeCheck` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_TextureVertexSizeCheckProtocol`
    public init<T: _TextureVertexSizeCheckProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `_CoglTextureVertexSizeCheck`.
    deinit {
        // no reference counting for _CoglTextureVertexSizeCheck, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(cast(_ptr))
    }



}

// MARK: no _TextureVertexSizeCheck properties

// MARK: no _TextureVertexSizeCheck signals


// MARK: _TextureVertexSizeCheck Record: _TextureVertexSizeCheckProtocol extension (methods and fields)
public extension _TextureVertexSizeCheckProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_CoglTextureVertexSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglTextureVertexSizeCheck> { return ptr.assumingMemoryBound(to: _CoglTextureVertexSizeCheck.self) }


    // var compileTimeAssertCoglTextureVertexSize is unavailable because compile_time_assert_CoglTextureVertex_size is void

}


