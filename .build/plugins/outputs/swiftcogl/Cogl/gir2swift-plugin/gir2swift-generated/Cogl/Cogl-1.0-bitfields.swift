import CGLib
import CCogl
import GLib
import GLibObject

/// Types of auxiliary buffers
public struct BufferBit: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglBufferBit` enum value
    @inlinable public var value: CoglBufferBit {
        get {
            func castToCoglBufferBitInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return CoglBufferBit(rawValue: castToCoglBufferBitInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglBufferBit` enum value
    @inlinable public init(_ enumValue: CoglBufferBit) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Selects the primary color buffer
    public static let color = BufferBit(1) // COGL_BUFFER_BIT_COLOR

    /// Selects the depth buffer
    public static let depth = BufferBit(2) // COGL_BUFFER_BIT_DEPTH

    /// Selects the stencil buffer
    public static let stencil = BufferBit(4) // COGL_BUFFER_BIT_STENCIL

}



/// Target flags for FBOs.
public struct BufferTarget: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglBufferTarget` enum value
    @inlinable public var value: CoglBufferTarget {
        get {
            func castToCoglBufferTargetInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return CoglBufferTarget(rawValue: castToCoglBufferTargetInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglBufferTarget` enum value
    @inlinable public init(_ enumValue: CoglBufferTarget) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// FIXME
    public static let windowBuffer = BufferTarget(2) // COGL_WINDOW_BUFFER

    /// FIXME
    public static let offscreenBuffer = BufferTarget(4) // COGL_OFFSCREEN_BUFFER

}



/// Defines a bit mask of color channels. This can be used with
/// `cogl_pipeline_set_color_mask()` for example to define which color
/// channels should be written to the current framebuffer when
/// drawing something.
public struct ColorMask: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglColorMask` enum value
    @inlinable public var value: CoglColorMask {
        get {
            func castToCoglColorMaskInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return CoglColorMask(rawValue: castToCoglColorMaskInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglColorMask` enum value
    @inlinable public init(_ enumValue: CoglColorMask) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// None of the color channels are masked
    public static let `none` = ColorMask(0)

    /// Masks the red color channel
    public static let red = ColorMask(1) // COGL_COLOR_MASK_RED

    /// Masks the green color channel
    public static let green = ColorMask(2) // COGL_COLOR_MASK_GREEN

    /// Masks the blue color channel
    public static let blue = ColorMask(4) // COGL_COLOR_MASK_BLUE

    /// Masks the alpha color channel
    public static let alpha = ColorMask(8) // COGL_COLOR_MASK_ALPHA

    /// All of the color channels are masked
    public static let all = ColorMask(15) // COGL_COLOR_MASK_ALL

}



/// Flags for the supported features.
public struct FeatureFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglFeatureFlags` enum value
    @inlinable public var value: CoglFeatureFlags {
        get {
            func castToCoglFeatureFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return CoglFeatureFlags(rawValue: castToCoglFeatureFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglFeatureFlags` enum value
    @inlinable public init(_ enumValue: CoglFeatureFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// ARB_texture_rectangle support
    public static let textureRectangle = FeatureFlags(2) // COGL_FEATURE_TEXTURE_RECTANGLE

    /// Non power of two textures are supported
    ///    by the hardware. This is a equivalent to the
    ///    `COGL_FEATURE_TEXTURE_NPOT_BASIC`, `COGL_FEATURE_TEXTURE_NPOT_MIPMAP`
    ///    and `COGL_FEATURE_TEXTURE_NPOT_REPEAT` features combined.
    public static let textureNpot = FeatureFlags(4) // COGL_FEATURE_TEXTURE_NPOT

    /// ycbcr conversion support
    public static let textureYuv = FeatureFlags(8) // COGL_FEATURE_TEXTURE_YUV

    /// `glReadPixels()` support
    public static let textureReadPixels = FeatureFlags(16) // COGL_FEATURE_TEXTURE_READ_PIXELS

    /// GLSL support
    public static let shadersGlsl = FeatureFlags(32) // COGL_FEATURE_SHADERS_GLSL

    /// FBO support
    public static let offscreen = FeatureFlags(64) // COGL_FEATURE_OFFSCREEN

    /// Multisample support on FBOs
    public static let offscreenMultisample = FeatureFlags(128) // COGL_FEATURE_OFFSCREEN_MULTISAMPLE

    /// Blit support on FBOs
    public static let offscreenBlit = FeatureFlags(256) // COGL_FEATURE_OFFSCREEN_BLIT

    /// At least 4 clip planes available
    public static let fourClipPlanes = FeatureFlags(512) // COGL_FEATURE_FOUR_CLIP_PLANES

    /// Stencil buffer support
    public static let stencilBuffer = FeatureFlags(1024) // COGL_FEATURE_STENCIL_BUFFER

    /// VBO support
    public static let vbos = FeatureFlags(2048) // COGL_FEATURE_VBOS

    /// PBO support
    public static let pbos = FeatureFlags(4096) // COGL_FEATURE_PBOS

    /// Set if
    ///     `COGL_INDICES_TYPE_UNSIGNED_INT` is supported in
    ///     `cogl_vertex_buffer_indices_new()`.
    public static let unsignedIntIndices = FeatureFlags(8192) // COGL_FEATURE_UNSIGNED_INT_INDICES

    /// `cogl_material_set_depth_range()` support
    public static let depthRange = FeatureFlags(16384) // COGL_FEATURE_DEPTH_RANGE

    /// The hardware supports non power
    ///     of two textures, but you also need to check the
    ///     `COGL_FEATURE_TEXTURE_NPOT_MIPMAP` and `COGL_FEATURE_TEXTURE_NPOT_REPEAT`
    ///     features to know if the hardware supports npot texture mipmaps
    ///     or repeat modes other than
    ///     `COGL_PIPELINE_WRAP_MODE_CLAMP_TO_EDGE` respectively.
    public static let textureNpotBasic = FeatureFlags(32768) // COGL_FEATURE_TEXTURE_NPOT_BASIC

    /// Mipmapping is supported in
    ///     conjuntion with non power of two textures.
    public static let textureNpotMipmap = FeatureFlags(65536) // COGL_FEATURE_TEXTURE_NPOT_MIPMAP

    /// Repeat modes other than
    ///     `COGL_PIPELINE_WRAP_MODE_CLAMP_TO_EDGE` are supported by the
    ///     hardware.
    public static let textureNpotRepeat = FeatureFlags(131072) // COGL_FEATURE_TEXTURE_NPOT_REPEAT

    /// Whether
    ///     `cogl_material_set_layer_point_sprite_coords_enabled()` is supported.
    public static let pointSprite = FeatureFlags(262144) // COGL_FEATURE_POINT_SPRITE

    /// 3D texture support
    public static let texture3d = FeatureFlags(524288) // COGL_FEATURE_TEXTURE_3D

    /// ARBFP support
    public static let shadersArbfp = FeatureFlags(1048576) // COGL_FEATURE_SHADERS_ARBFP

    /// Whether `cogl_buffer_map()` is
    ///     supported with CoglBufferAccess including read support.
    public static let mapBufferForRead = FeatureFlags(2097152) // COGL_FEATURE_MAP_BUFFER_FOR_READ

    /// Whether `cogl_buffer_map()` is
    ///     supported with CoglBufferAccess including write support.
    public static let mapBufferForWrite = FeatureFlags(4194304) // COGL_FEATURE_MAP_BUFFER_FOR_WRITE

    public static let onscreenMultiple = FeatureFlags(8388608) // COGL_FEATURE_ONSCREEN_MULTIPLE

    /// Whether `CoglFramebuffer` support rendering the
    ///     depth buffer to a texture.
    public static let depthTexture = FeatureFlags(16777216) // COGL_FEATURE_DEPTH_TEXTURE

}



/// Flags for `cogl_framebuffer_read_pixels_into_bitmap()`
public struct ReadPixelsFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglReadPixelsFlags` enum value
    @inlinable public var value: CoglReadPixelsFlags {
        get {
            func castToCoglReadPixelsFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return CoglReadPixelsFlags(rawValue: castToCoglReadPixelsFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglReadPixelsFlags` enum value
    @inlinable public init(_ enumValue: CoglReadPixelsFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Read from the color buffer
    public static let colorBuffer = ReadPixelsFlags(1) // COGL_READ_PIXELS_COLOR_BUFFER

}



/// Flags to pass to the cogl_texture_new_* family of functions.
public struct TextureFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `CoglTextureFlags` enum value
    @inlinable public var value: CoglTextureFlags {
        get {
            func castToCoglTextureFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return CoglTextureFlags(rawValue: castToCoglTextureFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `CoglTextureFlags` enum value
    @inlinable public init(_ enumValue: CoglTextureFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// No flags specified
    public static let `none` = TextureFlags(0)

    /// Disables the automatic generation of
    ///   the mipmap pyramid from the base level image whenever it is
    ///   updated. The mipmaps are only generated when the texture is
    ///   rendered with a mipmap filter so it should be free to leave out
    ///   this flag when using other filtering modes
    public static let noAutoMipmap = TextureFlags(1) // COGL_TEXTURE_NO_AUTO_MIPMAP

    /// Disables the slicing of the texture
    public static let noSlicing = TextureFlags(2) // COGL_TEXTURE_NO_SLICING

    /// Disables the insertion of the texture inside
    ///   the texture atlas used by Cogl
    public static let noAtlas = TextureFlags(4) // COGL_TEXTURE_NO_ATLAS

}

