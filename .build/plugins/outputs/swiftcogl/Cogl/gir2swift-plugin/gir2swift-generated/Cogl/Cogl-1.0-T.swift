import CGLib
import CCogl
import GLib
import GLibObject

// MARK: - Texture Interface


///
/// The `TextureProtocol` protocol exposes the methods and properties of an underlying `CoglTexture` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Texture`.
/// Alternatively, use `TextureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextureProtocol {
        /// Untyped pointer to the underlying `CoglTexture` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglTexture` instance.
    var texture_ptr: UnsafeMutablePointer<CoglTexture>! { get }

    /// Required Initialiser for types conforming to `TextureProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TextureRef` type acts as a lightweight Swift reference to an underlying `CoglTexture` instance.
/// It exposes methods that can operate on this data type through `TextureProtocol` conformance.
/// Use `TextureRef` only as an `unowned` reference to an existing `CoglTexture` instance.
///
public struct TextureRef: TextureProtocol {
        /// Untyped pointer to the underlying `CoglTexture` instance.
    /// For type-safe access, use the generated, typed pointer `texture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextureRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglTexture>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglTexture>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `TextureProtocol`
    @inlinable init<T: TextureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `Texture` type acts as an owner of an underlying `CoglTexture` instance.
/// It provides the methods that can operate on this data type through `TextureProtocol` conformance.
/// Use `Texture` as a strong reference or owner of a `CoglTexture` instance.
///
open class Texture: TextureProtocol {
        /// Untyped pointer to the underlying `CoglTexture` instance.
    /// For type-safe access, use the generated, typed pointer `texture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglTexture>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglTexture>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglTexture` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglTexture>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglTexture, cannot ref(texture_ptr)
    }

    /// Reference intialiser for a related type that implements `TextureProtocol`
    /// `CoglTexture` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextureProtocol`
    @inlinable public init<T: TextureProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglTexture, cannot ref(texture_ptr)
    }

    /// Do-nothing destructor for `CoglTexture`.
    deinit {
        // no reference counting for CoglTexture, cannot unref(texture_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglTexture, cannot ref(texture_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglTexture, cannot ref(texture_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglTexture, cannot ref(texture_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglTexture, cannot ref(texture_ptr)
    }



}

// MARK: no Texture properties

// MARK: no Texture signals

// MARK: Texture has no signals
// MARK: Texture Interface: TextureProtocol extension (methods and fields)
public extension TextureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglTexture` instance.
    @inlinable var texture_ptr: UnsafeMutablePointer<CoglTexture>! { return ptr?.assumingMemoryBound(to: CoglTexture.self) }

    /// Explicitly allocates the storage for the given `texture` which
    /// allows you to be sure that there is enough memory for the
    /// texture and if not then the error can be handled gracefully.
    /// 
    /// &lt;note&gt;Normally applications don't need to use this api directly
    /// since the texture will be implicitly allocated when data is set on
    /// the texture, or if the texture is attached to a `CoglOffscreen`
    /// framebuffer and rendered too.&lt;/note&gt;
    @inlinable func allocate() throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let result = cogl_texture_allocate(texture_ptr, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// Queries what components the given `texture` stores internally as set
    /// via `cogl_texture_set_components()`.
    /// 
    /// For textures created by the ‘_with_size’ constructors the default
    /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
    /// a `CoglBitmap` or a data pointer default to the same components as
    /// the pixel format of the data.
    @inlinable func getComponents() -> CoglTextureComponents {
        let result = cogl_texture_get_components(texture_ptr)
        let rv = result
        return rv
    }

    /// Copies the pixel data from a cogl texture to system memory.
    /// 
    /// &lt;note&gt;Don't pass the value of `cogl_texture_get_rowstride()` as the
    /// `rowstride` argument, the rowstride should be the rowstride you
    /// want for the destination `data` buffer not the rowstride of the
    /// source texture&lt;/note&gt;
    @inlinable func getData(format: CoglPixelFormat, rowstride: Int, data: UnsafeMutablePointer<UInt8>!) -> Int {
        let result = cogl_texture_get_data(texture_ptr, format, guint(rowstride), data)
        let rv = Int(result)
        return rv
    }

    /// Queries the GL handles for a GPU side texture through its `CoglTexture`.
    /// 
    /// If the texture is spliced the data for the first sub texture will be
    /// queried.
    @inlinable func getGlTexture(outGlHandle: UnsafeMutablePointer<guint>! = nil, outGlTarget: UnsafeMutablePointer<guint>! = nil) -> CoglBool {
        let result = cogl_texture_get_gl_texture(texture_ptr, outGlHandle, outGlTarget)
        let rv = result
        return rv
    }

    /// Queries the height of a cogl texture.
    @inlinable func getHeight() -> Int {
        let result = cogl_texture_get_height(texture_ptr)
        let rv = Int(result)
        return rv
    }

    /// Queries the maximum wasted (unused) pixels in one dimension of a GPU side
    /// texture.
    @inlinable func getMaxWaste() -> Int {
        let result = cogl_texture_get_max_waste(texture_ptr)
        let rv = Int(result)
        return rv
    }

    /// Queries the pre-multiplied alpha status for internally stored red,
    /// green and blue components for the given `texture` as set by
    /// `cogl_texture_set_premultiplied()`.
    /// 
    /// By default the pre-multipled state is `TRUE`.
    @inlinable func getPremultiplied() -> CoglBool {
        let result = cogl_texture_get_premultiplied(texture_ptr)
        let rv = result
        return rv
    }

    /// Queries the width of a cogl texture.
    @inlinable func getWidth() -> Int {
        let result = cogl_texture_get_width(texture_ptr)
        let rv = Int(result)
        return rv
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
    @inlinable func set(components: CoglTextureComponents) {
        
        cogl_texture_set_components(texture_ptr, components)
        
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
    @inlinable func set(premultiplied: CoglBool) {
        
        cogl_texture_set_premultiplied(texture_ptr, premultiplied)
        
    }

    /// Sets the pixels in a rectangular subregion of `texture` from an in-memory
    /// buffer containing pixel data.
    /// 
    /// &lt;note&gt;The region set can't be larger than the source `data`&lt;/note&gt;
    @inlinable func setRegion(srcX: Int, srcY: Int, dstX: Int, dstY: Int, dstWidth: Int, dstHeight: Int, width: Int, height: Int, format: CoglPixelFormat, rowstride: Int, data: UnsafePointer<UInt8>!) -> CoglBool {
        let result = cogl_texture_set_region(texture_ptr, gint(srcX), gint(srcY), gint(dstX), gint(dstY), guint(dstWidth), guint(dstHeight), gint(width), gint(height), format, guint(rowstride), data)
        let rv = result
        return rv
    }

    /// This is a convenience function for creating a material with the first
    /// layer set to `texture` and setting that material as the source with
    /// cogl_set_source.
    /// 
    /// Note: There is no interaction between calls to cogl_set_source_color
    /// and cogl_set_source_texture. If you need to blend a texture with a color then
    /// you can create a simple material like this:
    /// &lt;programlisting&gt;
    /// material = cogl_material_new ();
    /// cogl_material_set_color4ub (material, 0xff, 0x00, 0x00, 0x80);
    /// cogl_material_set_layer (material, 0, tex_handle);
    /// cogl_set_source (material);
    /// &lt;/programlisting&gt;
    ///
    /// **set_source_texture is deprecated:**
    /// Latest drawing apis all take an explicit
    ///                   #CoglPipeline argument so this stack of
    ///                   #CoglMaterial<!-- -->s shouldn't be used.
    @available(*, deprecated) @inlinable func setSourceTexture() {
        
        cogl_set_source_texture(texture_ptr)
        
    }
    /// Queries what components the given `texture` stores internally as set
    /// via `cogl_texture_set_components()`.
    /// 
    /// For textures created by the ‘_with_size’ constructors the default
    /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
    /// a `CoglBitmap` or a data pointer default to the same components as
    /// the pixel format of the data.
    @inlinable var components: CoglTextureComponents {
        /// Queries what components the given `texture` stores internally as set
        /// via `cogl_texture_set_components()`.
        /// 
        /// For textures created by the ‘_with_size’ constructors the default
        /// is `COGL_TEXTURE_COMPONENTS_RGBA`. The other constructors which take
        /// a `CoglBitmap` or a data pointer default to the same components as
        /// the pixel format of the data.
        get {
            let result = cogl_texture_get_components(texture_ptr)
        let rv = result
            return rv
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
            cogl_texture_set_components(texture_ptr, newValue)
        }
    }

    /// Queries the height of a cogl texture.
    @inlinable var height: Int {
        /// Queries the height of a cogl texture.
        get {
            let result = cogl_texture_get_height(texture_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Queries if a texture is sliced (stored as multiple GPU side tecture
    /// objects).
    @inlinable var isSliced: CoglBool {
        /// Queries if a texture is sliced (stored as multiple GPU side tecture
        /// objects).
        get {
            let result = cogl_texture_is_sliced(texture_ptr)
        let rv = result
            return rv
        }
    }

    /// Queries the maximum wasted (unused) pixels in one dimension of a GPU side
    /// texture.
    @inlinable var maxWaste: Int {
        /// Queries the maximum wasted (unused) pixels in one dimension of a GPU side
        /// texture.
        get {
            let result = cogl_texture_get_max_waste(texture_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Queries the pre-multiplied alpha status for internally stored red,
    /// green and blue components for the given `texture` as set by
    /// `cogl_texture_set_premultiplied()`.
    /// 
    /// By default the pre-multipled state is `TRUE`.
    @inlinable var premultiplied: CoglBool {
        /// Queries the pre-multiplied alpha status for internally stored red,
        /// green and blue components for the given `texture` as set by
        /// `cogl_texture_set_premultiplied()`.
        /// 
        /// By default the pre-multipled state is `TRUE`.
        get {
            let result = cogl_texture_get_premultiplied(texture_ptr)
        let rv = result
            return rv
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
            cogl_texture_set_premultiplied(texture_ptr, newValue)
        }
    }

    /// Queries the width of a cogl texture.
    @inlinable var width: Int {
        /// Queries the width of a cogl texture.
        get {
            let result = cogl_texture_get_width(texture_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



// MARK: - TextureVertex Record

/// Used to specify vertex information when calling `cogl_polygon()`
///
/// The `TextureVertexProtocol` protocol exposes the methods and properties of an underlying `CoglTextureVertex` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextureVertex`.
/// Alternatively, use `TextureVertexRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextureVertexProtocol {
        /// Untyped pointer to the underlying `CoglTextureVertex` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglTextureVertex` instance.
    var _ptr: UnsafeMutablePointer<CoglTextureVertex>! { get }

    /// Required Initialiser for types conforming to `TextureVertexProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Used to specify vertex information when calling `cogl_polygon()`
///
/// The `TextureVertexRef` type acts as a lightweight Swift reference to an underlying `CoglTextureVertex` instance.
/// It exposes methods that can operate on this data type through `TextureVertexProtocol` conformance.
/// Use `TextureVertexRef` only as an `unowned` reference to an existing `CoglTextureVertex` instance.
///
public struct TextureVertexRef: TextureVertexProtocol {
        /// Untyped pointer to the underlying `CoglTextureVertex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextureVertexRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglTextureVertex>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglTextureVertex>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `TextureVertexProtocol`
    @inlinable init<T: TextureVertexProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Used to specify vertex information when calling `cogl_polygon()`
///
/// The `TextureVertex` type acts as an owner of an underlying `CoglTextureVertex` instance.
/// It provides the methods that can operate on this data type through `TextureVertexProtocol` conformance.
/// Use `TextureVertex` as a strong reference or owner of a `CoglTextureVertex` instance.
///
open class TextureVertex: TextureVertexProtocol {
        /// Untyped pointer to the underlying `CoglTextureVertex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglTextureVertex>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglTextureVertex>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglTextureVertex` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TextureVertex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglTextureVertex>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglTextureVertex, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TextureVertexProtocol`
    /// `CoglTextureVertex` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextureVertexProtocol`
    @inlinable public init<T: TextureVertexProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglTextureVertex, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `CoglTextureVertex`.
    deinit {
        // no reference counting for CoglTextureVertex, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglTextureVertex, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglTextureVertex, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglTextureVertex, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureVertexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglTextureVertex, cannot ref(_ptr)
    }



}

// MARK: no TextureVertex properties

// MARK: no TextureVertex signals

// MARK: TextureVertex has no signals
// MARK: TextureVertex Record: TextureVertexProtocol extension (methods and fields)
public extension TextureVertexProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglTextureVertex` instance.
    @inlinable var _ptr: UnsafeMutablePointer<CoglTextureVertex>! { return ptr?.assumingMemoryBound(to: CoglTextureVertex.self) }

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
    @inlinable func polygon(nVertices: Int, useColor: CoglBool) {
        
        cogl_polygon(_ptr, guint(nVertices), useColor)
        
    }

    /// Model x-coordinate
    @inlinable var x: CFloat {
        /// Model x-coordinate
        get {
            let rv = _ptr.pointee.x
    return rv
        }
        /// Model x-coordinate
         set {
            _ptr.pointee.x = newValue
        }
    }

    /// Model y-coordinate
    @inlinable var y: CFloat {
        /// Model y-coordinate
        get {
            let rv = _ptr.pointee.y
    return rv
        }
        /// Model y-coordinate
         set {
            _ptr.pointee.y = newValue
        }
    }

    /// Model z-coordinate
    @inlinable var z: CFloat {
        /// Model z-coordinate
        get {
            let rv = _ptr.pointee.z
    return rv
        }
        /// Model z-coordinate
         set {
            _ptr.pointee.z = newValue
        }
    }

    /// Texture x-coordinate
    @inlinable var tx: CFloat {
        /// Texture x-coordinate
        get {
            let rv = _ptr.pointee.tx
    return rv
        }
        /// Texture x-coordinate
         set {
            _ptr.pointee.tx = newValue
        }
    }

    /// Texture y-coordinate
    @inlinable var ty: CFloat {
        /// Texture y-coordinate
        get {
            let rv = _ptr.pointee.ty
    return rv
        }
        /// Texture y-coordinate
         set {
            _ptr.pointee.ty = newValue
        }
    }

    /// The color to use at this vertex. This is ignored if
    ///   use_color is `false` when calling `cogl_polygon()`
    @inlinable var color: CoglColor {
        /// The color to use at this vertex. This is ignored if
        ///   use_color is `false` when calling `cogl_polygon()`
        get {
            let rv = _ptr.pointee.color
    return rv
        }
        /// The color to use at this vertex. This is ignored if
        ///   use_color is `false` when calling `cogl_polygon()`
         set {
            _ptr.pointee.color = newValue
        }
    }

}



