import CGLib
import CCogl
import GLib
import GLibObject

/// Data types for the components of a vertex attribute.
public typealias AttributeType = CoglAttributeType


public extension AttributeType {
    /// Cast constructor, converting any binary integer to a
    /// `AttributeType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAttributeTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAttributeTypeInt(raw))
    }
    /// Data is the same size of a byte
    static let byte = COGL_ATTRIBUTE_TYPE_BYTE // 5120

    /// Data is the same size of an
    ///   unsigned byte
    static let unsignedByte = COGL_ATTRIBUTE_TYPE_UNSIGNED_BYTE // 5121

    /// Data is the same size of a short integer
    static let short = COGL_ATTRIBUTE_TYPE_SHORT // 5122

    /// Data is the same size of
    ///   an unsigned short integer
    static let unsignedShort = COGL_ATTRIBUTE_TYPE_UNSIGNED_SHORT // 5123

    /// Data is the same size of a float
    static let float = COGL_ATTRIBUTE_TYPE_FLOAT // 5126

}



/// Error codes that can be thrown when performing bitmap
/// operations. Note that `gdk_pixbuf_new_from_file()` can also throw
/// errors directly from the underlying image loading library. For
/// example, if GdkPixbuf is used then errors `GdkPixbufError`&lt;!-- --&gt;s
/// will be used directly.
public typealias BitmapError = CoglBitmapError


public extension BitmapError {
    /// Cast constructor, converting any binary integer to a
    /// `BitmapError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToBitmapErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToBitmapErrorInt(raw))
    }
    /// Generic failure code, something went
    ///   wrong.
    static let failed = COGL_BITMAP_ERROR_FAILED // 0

    /// Unknown image type.
    static let unknownType = COGL_BITMAP_ERROR_UNKNOWN_TYPE // 1

    /// An image file was broken somehow.
    static let corruptImage = COGL_BITMAP_ERROR_CORRUPT_IMAGE // 2

}



/// Error enumeration for the blend strings parser
public typealias BlendStringError = CoglBlendStringError


public extension BlendStringError {
    /// Cast constructor, converting any binary integer to a
    /// `BlendStringError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToBlendStringErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToBlendStringErrorInt(raw))
    }
    /// Generic parse error
    static let parseError = COGL_BLEND_STRING_ERROR_PARSE_ERROR // 0

    /// Argument parse error
    static let argumentParseError = COGL_BLEND_STRING_ERROR_ARGUMENT_PARSE_ERROR // 1

    /// Internal parser error
    static let invalidError = COGL_BLEND_STRING_ERROR_INVALID_ERROR // 2

    /// Blend string not
    ///   supported by the GPU
    static let gpuUnsupportedError = COGL_BLEND_STRING_ERROR_GPU_UNSUPPORTED_ERROR // 3

}



/// When using depth testing one of these functions is used to compare
/// the depth of an incoming fragment against the depth value currently
/// stored in the depth buffer. The function is changed using
/// `cogl_depth_state_set_test_function()`.
/// 
/// The test is only done when depth testing is explicitly enabled. (See
/// `cogl_depth_state_set_test_enabled()`)
public typealias DepthTestFunction = CoglDepthTestFunction


public extension DepthTestFunction {
    /// Cast constructor, converting any binary integer to a
    /// `DepthTestFunction`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToDepthTestFunctionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToDepthTestFunctionInt(raw))
    }
    /// Never passes.
    static let never = COGL_DEPTH_TEST_FUNCTION_NEVER // 512

    /// Passes if the fragment's depth
    /// value is less than the value currently in the depth buffer.
    static let less = COGL_DEPTH_TEST_FUNCTION_LESS // 513

    /// Passes if the fragment's depth
    /// value is equal to the value currently in the depth buffer.
    static let equal = COGL_DEPTH_TEST_FUNCTION_EQUAL // 514

    /// Passes if the fragment's depth
    /// value is less or equal to the value currently in the depth buffer.
    static let lequal = COGL_DEPTH_TEST_FUNCTION_LEQUAL // 515

    /// Passes if the fragment's depth
    /// value is greater than the value currently in the depth buffer.
    static let greater = COGL_DEPTH_TEST_FUNCTION_GREATER // 516

    /// Passes if the fragment's depth
    /// value is not equal to the value currently in the depth buffer.
    static let notequal = COGL_DEPTH_TEST_FUNCTION_NOTEQUAL // 517

    /// Passes if the fragment's depth
    /// value greater than or equal to the value currently in the depth buffer.
    static let gequal = COGL_DEPTH_TEST_FUNCTION_GEQUAL // 518

    /// Always passes.
    static let always = COGL_DEPTH_TEST_FUNCTION_ALWAYS // 519

}



/// Return values for the `CoglXlibFilterFunc` and `CoglWin32FilterFunc` functions.
public typealias FilterReturn = CoglFilterReturn


public extension FilterReturn {
    /// Cast constructor, converting any binary integer to a
    /// `FilterReturn`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFilterReturnInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFilterReturnInt(raw))
    }
    /// The event was not handled, continues the
    ///                        processing
    static let `continue` = COGL_FILTER_CONTINUE // 0

    /// Remove the event, stops the processing
    static let remove = COGL_FILTER_REMOVE // 1

}



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
    /// Cast constructor, converting any binary integer to a
    /// `FogMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFogModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFogModeInt(raw))
    }
    /// Calculates the fog blend factor as:
    /// ```
    ///   f = end - eye_distance / end - start
    /// ```
    /// 
    static let linear = COGL_FOG_MODE_LINEAR // 0

    /// Calculates the fog blend factor as:
    /// ```
    ///   f = e ^ -(density * eye_distance)
    /// ```
    /// 
    static let exponential = COGL_FOG_MODE_EXPONENTIAL // 1

    /// Calculates the fog blend factor as:
    /// ```
    ///   f = e ^ -(density * eye_distance)^2
    /// ```
    /// 
    static let exponentialSquared = COGL_FOG_MODE_EXPONENTIAL_SQUARED // 2

}



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
    /// Cast constructor, converting any binary integer to a
    /// `IndicesType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToIndicesTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToIndicesTypeInt(raw))
    }
    /// Your indices are unsigned bytes
    static let byte = COGL_INDICES_TYPE_UNSIGNED_BYTE // 0

    /// Your indices are unsigned shorts
    static let short = COGL_INDICES_TYPE_UNSIGNED_SHORT // 1

    /// Your indices are unsigned ints
    static let int = COGL_INDICES_TYPE_UNSIGNED_INT // 2

}



/// Alpha testing happens before blending primitives with the framebuffer and
/// gives an opportunity to discard fragments based on a comparison with the
/// incoming alpha value and a reference alpha value. The `CoglMaterialAlphaFunc`
/// determines how the comparison is done.
public typealias MaterialAlphaFunc = CoglMaterialAlphaFunc


public extension MaterialAlphaFunc {
    /// Cast constructor, converting any binary integer to a
    /// `MaterialAlphaFunc`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMaterialAlphaFuncInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMaterialAlphaFuncInt(raw))
    }
    /// Never let the fragment through.
    static let never = COGL_MATERIAL_ALPHA_FUNC_NEVER // 512

    /// Let the fragment through if the incoming
    ///   alpha value is less than the reference alpha value
    static let less = COGL_MATERIAL_ALPHA_FUNC_LESS // 513

    /// Let the fragment through if the incoming
    ///   alpha value equals the reference alpha value
    static let equal = COGL_MATERIAL_ALPHA_FUNC_EQUAL // 514

    /// Let the fragment through if the incoming
    ///   alpha value is less than or equal to the reference alpha value
    static let lequal = COGL_MATERIAL_ALPHA_FUNC_LEQUAL // 515

    /// Let the fragment through if the incoming
    ///   alpha value is greater than the reference alpha value
    static let greater = COGL_MATERIAL_ALPHA_FUNC_GREATER // 516

    /// Let the fragment through if the incoming
    ///   alpha value does not equal the reference alpha value
    static let notequal = COGL_MATERIAL_ALPHA_FUNC_NOTEQUAL // 517

    /// Let the fragment through if the incoming
    ///   alpha value is greater than or equal to the reference alpha value.
    static let gequal = COGL_MATERIAL_ALPHA_FUNC_GEQUAL // 518

    /// Always let the fragment through.
    static let always = COGL_MATERIAL_ALPHA_FUNC_ALWAYS // 519

}



/// Texture filtering is used whenever the current pixel maps either to more
/// than one texture element (texel) or less than one. These filter enums
/// correspond to different strategies used to come up with a pixel color, by
/// possibly referring to multiple neighbouring texels and taking a weighted
/// average or simply using the nearest texel.
public typealias MaterialFilter = CoglMaterialFilter


public extension MaterialFilter {
    /// Cast constructor, converting any binary integer to a
    /// `MaterialFilter`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMaterialFilterInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMaterialFilterInt(raw))
    }
    /// Measuring in manhatten distance from the,
    ///   current pixel center, use the nearest texture texel
    static let nearest = COGL_MATERIAL_FILTER_NEAREST // 9728

    /// Use the weighted average of the 4 texels
    ///   nearest the current pixel center
    static let linear = COGL_MATERIAL_FILTER_LINEAR // 9729

    /// Select the mimap level whose
    ///   texel size most closely matches the current pixel, and use the
    ///   `COGL_MATERIAL_FILTER_NEAREST` criterion
    static let nearestMipmapNearest = COGL_MATERIAL_FILTER_NEAREST_MIPMAP_NEAREST // 9984

    /// Select the mimap level whose
    ///   texel size most closely matches the current pixel, and use the
    ///   `COGL_MATERIAL_FILTER_LINEAR` criterion
    static let linearMipmapNearest = COGL_MATERIAL_FILTER_LINEAR_MIPMAP_NEAREST // 9985

    /// Select the two mimap levels
    ///   whose texel size most closely matches the current pixel, use
    ///   the `COGL_MATERIAL_FILTER_NEAREST` criterion on each one and take
    ///   their weighted average
    static let nearestMipmapLinear = COGL_MATERIAL_FILTER_NEAREST_MIPMAP_LINEAR // 9986

    /// Select the two mimap levels
    ///   whose texel size most closely matches the current pixel, use
    ///   the `COGL_MATERIAL_FILTER_LINEAR` criterion on each one and take
    ///   their weighted average
    static let linearMipmapLinear = COGL_MATERIAL_FILTER_LINEAR_MIPMAP_LINEAR // 9987

}



/// Available types of layers for a `CoglMaterial`. This enumeration
/// might be expanded in later versions.
public typealias MaterialLayerType = CoglMaterialLayerType


public extension MaterialLayerType {
    /// Cast constructor, converting any binary integer to a
    /// `MaterialLayerType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMaterialLayerTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMaterialLayerTypeInt(raw))
    }
    /// The layer represents a
    ///   &lt;link linkend="cogl-Textures"&gt;texture&lt;/link&gt;
    static let texture = COGL_MATERIAL_LAYER_TYPE_TEXTURE // 0

}



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
    /// Cast constructor, converting any binary integer to a
    /// `MaterialWrapMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMaterialWrapModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMaterialWrapModeInt(raw))
    }
    /// The texture will be repeated. This
    ///   is useful for example to draw a tiled background.
    static let `repeat` = COGL_MATERIAL_WRAP_MODE_REPEAT // 10497

    /// The coordinates outside the
    ///   range 0→1 will sample copies of the edge pixels of the
    ///   texture. This is useful to avoid artifacts if only one copy of
    ///   the texture is being rendered.
    static let clampToEdge = COGL_MATERIAL_WRAP_MODE_CLAMP_TO_EDGE // 33071

    /// Cogl will try to automatically
    ///   decide which of the above two to use. For `cogl_rectangle()`, it
    ///   will use repeat mode if any of the texture coordinates are
    ///   outside the range 0→1, otherwise it will use clamp to edge. For
    ///   `cogl_polygon()` it will always use repeat mode. For
    ///   `cogl_vertex_buffer_draw()` it will use repeat mode except for
    ///   layers that have point sprite coordinate generation enabled. This
    ///   is the default value.
    static let automatic = COGL_MATERIAL_WRAP_MODE_AUTOMATIC // 519

}



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
    /// Cast constructor, converting any binary integer to a
    /// `PixelFormat`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPixelFormatInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPixelFormatInt(raw))
    }
    /// Any format
    static let any = COGL_PIXEL_FORMAT_ANY // 0

    /// 8 bits alpha mask
    static let a8 = COGL_PIXEL_FORMAT_A_8 // 17

    /// RGB, 16 bits
    static let rgb565 = COGL_PIXEL_FORMAT_RGB_565 // 4

    /// RGBA, 16 bits
    static let rgba4444 = COGL_PIXEL_FORMAT_RGBA_4444 // 21

    /// RGBA, 16 bits
    static let rgba5551 = COGL_PIXEL_FORMAT_RGBA_5551 // 22

    /// Not currently supported
    static let yuv = COGL_PIXEL_FORMAT_YUV // 7

    /// Single luminance component
    static let g8 = COGL_PIXEL_FORMAT_G_8 // 8

    /// RG, 16 bits. Note that red-green textures
    ///   are only available if `COGL_FEATURE_ID_TEXTURE_RG` is advertised.
    ///   See `cogl_texture_set_components()` for details.
    static let rg88 = COGL_PIXEL_FORMAT_RG_88 // 9

    /// RGB, 24 bits
    static let rgb888 = COGL_PIXEL_FORMAT_RGB_888 // 2

    /// BGR, 24 bits
    static let bgr888 = COGL_PIXEL_FORMAT_BGR_888 // 34

    /// RGBA, 32 bits
    static let rgba8888 = COGL_PIXEL_FORMAT_RGBA_8888 // 19

    /// BGRA, 32 bits
    static let bgra8888 = COGL_PIXEL_FORMAT_BGRA_8888 // 51

    /// ARGB, 32 bits
    static let argb8888 = COGL_PIXEL_FORMAT_ARGB_8888 // 83

    /// ABGR, 32 bits
    static let abgr8888 = COGL_PIXEL_FORMAT_ABGR_8888 // 115

    /// RGBA, 32 bits, 10 bpc
    static let rgba1010102 = COGL_PIXEL_FORMAT_RGBA_1010102 // 29

    /// BGRA, 32 bits, 10 bpc
    static let bgra1010102 = COGL_PIXEL_FORMAT_BGRA_1010102 // 61

    /// ARGB, 32 bits, 10 bpc
    static let argb2101010 = COGL_PIXEL_FORMAT_ARGB_2101010 // 93

    /// ABGR, 32 bits, 10 bpc
    static let abgr2101010 = COGL_PIXEL_FORMAT_ABGR_2101010 // 125

    /// Premultiplied RGBA, 32 bits
    static let rgba8888Pre = COGL_PIXEL_FORMAT_RGBA_8888_PRE // 147

    /// Premultiplied BGRA, 32 bits
    static let bgra8888Pre = COGL_PIXEL_FORMAT_BGRA_8888_PRE // 179

    /// Premultiplied ARGB, 32 bits
    static let argb8888Pre = COGL_PIXEL_FORMAT_ARGB_8888_PRE // 211

    /// Premultiplied ABGR, 32 bits
    static let abgr8888Pre = COGL_PIXEL_FORMAT_ABGR_8888_PRE // 243

    /// Premultiplied RGBA, 16 bits
    static let rgba4444Pre = COGL_PIXEL_FORMAT_RGBA_4444_PRE // 149

    /// Premultiplied RGBA, 16 bits
    static let rgba5551Pre = COGL_PIXEL_FORMAT_RGBA_5551_PRE // 150

    /// Premultiplied RGBA, 32 bits, 10 bpc
    static let rgba1010102Pre = COGL_PIXEL_FORMAT_RGBA_1010102_PRE // 157

    /// Premultiplied BGRA, 32 bits, 10 bpc
    static let bgra1010102Pre = COGL_PIXEL_FORMAT_BGRA_1010102_PRE // 189

    /// Premultiplied ARGB, 32 bits, 10 bpc
    static let argb2101010Pre = COGL_PIXEL_FORMAT_ARGB_2101010_PRE // 221

    /// Premultiplied ABGR, 32 bits, 10 bpc
    static let abgr2101010Pre = COGL_PIXEL_FORMAT_ABGR_2101010_PRE // 253

    static let depth16 = COGL_PIXEL_FORMAT_DEPTH_16 // 265

    static let depth32 = COGL_PIXEL_FORMAT_DEPTH_32 // 259

    static let depth24Stencil8 = COGL_PIXEL_FORMAT_DEPTH_24_STENCIL_8 // 771

}



public typealias RendererError = CoglRendererError


public extension RendererError {
    /// Cast constructor, converting any binary integer to a
    /// `RendererError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToRendererErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToRendererErrorInt(raw))
    }
    static let xlibDisplayOpen = COGL_RENDERER_ERROR_XLIB_DISPLAY_OPEN // 0

    static let badConstraint = COGL_RENDERER_ERROR_BAD_CONSTRAINT // 1

}



/// Types of shaders
public typealias ShaderType = CoglShaderType


public extension ShaderType {
    /// Cast constructor, converting any binary integer to a
    /// `ShaderType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToShaderTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToShaderTypeInt(raw))
    }
    /// A program for proccessing vertices
    static let vertex = COGL_SHADER_TYPE_VERTEX // 0

    /// A program for processing fragments
    static let fragment = COGL_SHADER_TYPE_FRAGMENT // 1

}



/// Represents how draw should affect the two buffers
/// of a stereo framebuffer. See `cogl_framebuffer_set_stereo_mode()`.
public typealias StereoMode = CoglStereoMode


public extension StereoMode {
    /// Cast constructor, converting any binary integer to a
    /// `StereoMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToStereoModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToStereoModeInt(raw))
    }
    /// draw to both stereo buffers
    static let both = COGL_STEREO_BOTH // 0

    /// draw only to the left stereo buffer
    static let `left` = COGL_STEREO_LEFT // 1

    /// draw only to the left stereo buffer
    static let `right` = COGL_STEREO_RIGHT // 2

}



/// Error enumeration for Cogl
/// 
/// The `COGL_SYSTEM_ERROR_UNSUPPORTED` error can be thrown for a
/// variety of reasons. For example:
/// 
/// &lt;itemizedlist&gt;
///  &lt;listitem&gt;&lt;para&gt;You've tried to use a feature that is not
///   advertised by `cogl_has_feature()`. This could happen if you create
///   a 2d texture with a non-power-of-two size when
///   `COGL_FEATURE_ID_TEXTURE_NPOT` is not advertised.&lt;/para&gt;&lt;/listitem&gt;
///  &lt;listitem&gt;&lt;para&gt;The GPU can not handle the configuration you have
///   requested. An example might be if you try to use too many texture
///   layers in a single `CoglPipeline`&lt;/para&gt;&lt;/listitem&gt;
///  &lt;listitem&gt;&lt;para&gt;The driver does not support some
///   configuration.&lt;/para&gt;&lt;/listiem&gt;
/// &lt;/itemizedlist&gt;
/// 
/// Currently this is only used by Cogl API marked as experimental so
/// this enum should also be considered experimental.
public typealias SystemError = CoglSystemError


public extension SystemError {
    /// Cast constructor, converting any binary integer to a
    /// `SystemError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSystemErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSystemErrorInt(raw))
    }
    /// You tried to use a feature or
    ///    configuration not currently available.
    static let coglSystemErrorUnsupported = COGL_SYSTEM_ERROR_UNSUPPORTED // 0

    /// You tried to allocate a resource
    ///    such as a texture and there wasn't enough memory.
    static let coglSystemErrorNoMemory = COGL_SYSTEM_ERROR_NO_MEMORY // 1

}



/// See `cogl_texture_set_components()`.
public typealias TextureComponents = CoglTextureComponents


public extension TextureComponents {
    /// Cast constructor, converting any binary integer to a
    /// `TextureComponents`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextureComponentsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextureComponentsInt(raw))
    }
    /// Only the alpha component
    static let a = COGL_TEXTURE_COMPONENTS_A // 1

    /// Red and green components. Note that
    ///   this can only be used if the `COGL_FEATURE_ID_TEXTURE_RG` feature
    ///   is advertised.
    static let rg = COGL_TEXTURE_COMPONENTS_RG // 2

    /// Red, green and blue components
    static let rgb = COGL_TEXTURE_COMPONENTS_RGB // 3

    /// Red, green, blue and alpha components
    static let rgba = COGL_TEXTURE_COMPONENTS_RGBA // 4

    /// Only a depth component
    static let depth = COGL_TEXTURE_COMPONENTS_DEPTH // 5

}



/// Error codes that can be thrown when allocating textures.
public typealias TextureError = CoglTextureError


public extension TextureError {
    /// Cast constructor, converting any binary integer to a
    /// `TextureError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextureErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextureErrorInt(raw))
    }
    /// Unsupported size
    static let size = COGL_TEXTURE_ERROR_SIZE // 0

    /// Unsupported format
    static let format = COGL_TEXTURE_ERROR_FORMAT // 1

    static let badParameter = COGL_TEXTURE_ERROR_BAD_PARAMETER // 2

    /// A primitive texture type that is
    ///   unsupported by the driver was used
    static let type = COGL_TEXTURE_ERROR_TYPE // 3

}



/// Constants representing the underlying hardware texture type of a
/// `CoglTexture`.
public typealias TextureType = CoglTextureType


public extension TextureType {
    /// Cast constructor, converting any binary integer to a
    /// `TextureType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextureTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextureTypeInt(raw))
    }
    /// A `CoglTexture2D`
    static let _2d = COGL_TEXTURE_TYPE_2D // 0

    /// A `CoglTexture3D`
    static let _3d = COGL_TEXTURE_TYPE_3D // 1

    /// A `CoglTextureRectangle`
    static let rectangle = COGL_TEXTURE_TYPE_RECTANGLE // 2

}



/// Different ways of interpreting vertices when drawing.
public typealias VerticesMode = CoglVerticesMode


public extension VerticesMode {
    /// Cast constructor, converting any binary integer to a
    /// `VerticesMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToVerticesModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToVerticesModeInt(raw))
    }
    /// FIXME, equivalent to
    /// &lt;constant&gt;GL_POINTS&lt;/constant&gt;
    static let points = COGL_VERTICES_MODE_POINTS // 0

    /// FIXME, equivalent to &lt;constant&gt;GL_LINES&lt;/constant&gt;
    static let lines = COGL_VERTICES_MODE_LINES // 1

    /// FIXME, equivalent to
    /// &lt;constant&gt;GL_LINE_LOOP&lt;/constant&gt;
    static let lineLoop = COGL_VERTICES_MODE_LINE_LOOP // 2

    /// FIXME, equivalent to
    /// &lt;constant&gt;GL_LINE_STRIP&lt;/constant&gt;
    static let lineStrip = COGL_VERTICES_MODE_LINE_STRIP // 3

    /// FIXME, equivalent to
    /// &lt;constant&gt;GL_TRIANGLES&lt;/constant&gt;
    static let triangles = COGL_VERTICES_MODE_TRIANGLES // 4

    /// FIXME, equivalent to
    /// &lt;constant&gt;GL_TRIANGLE_STRIP&lt;/constant&gt;
    static let triangleStrip = COGL_VERTICES_MODE_TRIANGLE_STRIP // 5

    /// FIXME, equivalent to &lt;constant&gt;GL_TRIANGLE_FAN&lt;/constant&gt;
    static let triangleFan = COGL_VERTICES_MODE_TRIANGLE_FAN // 6

}



/// Enum used to represent the two directions of rotation. This can be
/// used to set the front face for culling by calling
/// `cogl_pipeline_set_front_face_winding()`.
public typealias Winding = CoglWinding


public extension Winding {
    /// Cast constructor, converting any binary integer to a
    /// `Winding`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToWindingInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToWindingInt(raw))
    }
    /// Vertices are in a clockwise order
    static let clockwise = COGL_WINDING_CLOCKWISE // 0

    /// Vertices are in a counter-clockwise order
    static let counterClockwise = COGL_WINDING_COUNTER_CLOCKWISE // 1

}



public typealias WinsysFeature = CoglWinsysFeature


public extension WinsysFeature {
    /// Cast constructor, converting any binary integer to a
    /// `WinsysFeature`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToWinsysFeatureInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToWinsysFeatureInt(raw))
    }
    static let multipleOnscreen = COGL_WINSYS_FEATURE_MULTIPLE_ONSCREEN // 0

    static let swapThrottle = COGL_WINSYS_FEATURE_SWAP_THROTTLE // 1

    static let vblankCounter = COGL_WINSYS_FEATURE_VBLANK_COUNTER // 2

    static let vblankWait = COGL_WINSYS_FEATURE_VBLANK_WAIT // 3

    static let textureFromPixmap = COGL_WINSYS_FEATURE_TEXTURE_FROM_PIXMAP // 4

    static let swapBuffersEvent = COGL_WINSYS_FEATURE_SWAP_BUFFERS_EVENT // 5

    static let swapRegion = COGL_WINSYS_FEATURE_SWAP_REGION // 6

    static let swapRegionThrottle = COGL_WINSYS_FEATURE_SWAP_REGION_THROTTLE // 7

    static let swapRegionSynchronized = COGL_WINSYS_FEATURE_SWAP_REGION_SYNCHRONIZED // 8

    static let bufferAge = COGL_WINSYS_FEATURE_BUFFER_AGE // 9

    static let syncAndCompleteEvent = COGL_WINSYS_FEATURE_SYNC_AND_COMPLETE_EVENT // 10

    static let nFeatures = COGL_WINSYS_FEATURE_N_FEATURES // 11

}

