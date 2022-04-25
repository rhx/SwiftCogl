import CGLib
import CCogl
import GLib
import GLibObject

// MARK: - Offscreen Class


///
/// The `OffscreenProtocol` protocol exposes the methods and properties of an underlying `CoglOffscreen` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Offscreen`.
/// Alternatively, use `OffscreenRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol OffscreenProtocol {
        /// Untyped pointer to the underlying `CoglOffscreen` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglOffscreen` instance.
    var offscreen_ptr: UnsafeMutablePointer<CoglOffscreen>! { get }

    /// Required Initialiser for types conforming to `OffscreenProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `OffscreenRef` type acts as a lightweight Swift reference to an underlying `CoglOffscreen` instance.
/// It exposes methods that can operate on this data type through `OffscreenProtocol` conformance.
/// Use `OffscreenRef` only as an `unowned` reference to an existing `CoglOffscreen` instance.
///
public struct OffscreenRef: OffscreenProtocol {
        /// Untyped pointer to the underlying `CoglOffscreen` instance.
    /// For type-safe access, use the generated, typed pointer `offscreen_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OffscreenRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglOffscreen>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglOffscreen>?) {
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

    /// Reference intialiser for a related type that implements `OffscreenProtocol`
    @inlinable init<T: OffscreenProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// &lt;note&gt;This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) @inlinable init<TextureT: TextureProtocol>(to_texture texture: TextureT) {
            let result = cogl_offscreen_new_to_texture(texture.texture_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// &lt;note&gt;This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
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
    @inlinable init<TextureT: TextureProtocol>(texture: TextureT) {
            let result = cogl_offscreen_new_with_texture(texture.texture_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// &lt;note&gt;This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) @inlinable static func newTo<TextureT: TextureProtocol>(to_texture texture: TextureT) -> OffscreenRef! {
            let result = cogl_offscreen_new_to_texture(texture.texture_ptr)
        guard let rv = OffscreenRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// &lt;note&gt;This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
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
    @inlinable static func newWith<TextureT: TextureProtocol>(texture: TextureT) -> OffscreenRef! {
            let result = cogl_offscreen_new_with_texture(texture.texture_ptr)
        guard let rv = OffscreenRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}


///
/// The `Offscreen` type acts as an owner of an underlying `CoglOffscreen` instance.
/// It provides the methods that can operate on this data type through `OffscreenProtocol` conformance.
/// Use `Offscreen` as a strong reference or owner of a `CoglOffscreen` instance.
///
open class Offscreen: OffscreenProtocol {
        /// Untyped pointer to the underlying `CoglOffscreen` instance.
    /// For type-safe access, use the generated, typed pointer `offscreen_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglOffscreen>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglOffscreen>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglOffscreen` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Offscreen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglOffscreen>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglOffscreen, cannot ref(offscreen_ptr)
    }

    /// Reference intialiser for a related type that implements `OffscreenProtocol`
    /// `CoglOffscreen` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OffscreenProtocol`
    @inlinable public init<T: OffscreenProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglOffscreen, cannot ref(offscreen_ptr)
    }

    /// Do-nothing destructor for `CoglOffscreen`.
    deinit {
        // no reference counting for CoglOffscreen, cannot unref(offscreen_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglOffscreen, cannot ref(offscreen_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglOffscreen, cannot ref(offscreen_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglOffscreen, cannot ref(offscreen_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglOffscreen, cannot ref(offscreen_ptr)
    }

    /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// &lt;note&gt;This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) @inlinable public init<TextureT: TextureProtocol>(to_texture texture: TextureT) {
            let result = cogl_offscreen_new_to_texture(texture.texture_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// &lt;note&gt;This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
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
    @inlinable public init<TextureT: TextureProtocol>(texture: TextureT) {
            let result = cogl_offscreen_new_with_texture(texture.texture_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// This creates an offscreen buffer object using the given `texture` as the
    /// primary color buffer. It doesn't just initialize the contents of the
    /// offscreen buffer with the `texture`; they are tightly bound so that
    /// drawing to the offscreen buffer effectivly updates the contents of the
    /// given texture. You don't need to destroy the offscreen buffer before
    /// you can use the `texture` again.
    /// 
    /// &lt;note&gt;This only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
    ///
    /// **new_to_texture is deprecated:**
    /// Use cogl_offscreen_new_with_texture instead.
    @available(*, deprecated) @inlinable public static func newTo<TextureT: TextureProtocol>(to_texture texture: TextureT) -> Offscreen! {
            let result = cogl_offscreen_new_to_texture(texture.texture_ptr)
        guard let rv = Offscreen(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// This creates an offscreen framebuffer object using the given
    /// `texture` as the primary color buffer. It doesn't just initialize
    /// the contents of the offscreen buffer with the `texture`; they are
    /// tightly bound so that drawing to the offscreen buffer effectively
    /// updates the contents of the given texture. You don't need to
    /// destroy the offscreen buffer before you can use the `texture` again.
    /// 
    /// &lt;note&gt;This api only works with low-level `CoglTexture` types such as
    /// `CoglTexture2D`, `CoglTexture3D` and `CoglTextureRectangle`, and not
    /// with meta-texture types such as `CoglTexture2DSliced`.&lt;/note&gt;
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
    @inlinable public static func newWith<TextureT: TextureProtocol>(texture: TextureT) -> Offscreen! {
            let result = cogl_offscreen_new_with_texture(texture.texture_ptr)
        guard let rv = Offscreen(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no Offscreen properties

// MARK: no Offscreen signals

// MARK: Offscreen has no signals
// MARK: Offscreen Class: OffscreenProtocol extension (methods and fields)
public extension OffscreenProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglOffscreen` instance.
    @inlinable var offscreen_ptr: UnsafeMutablePointer<CoglOffscreen>! { return ptr?.assumingMemoryBound(to: CoglOffscreen.self) }



}



