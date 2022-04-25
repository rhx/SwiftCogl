import CGLib
import CCogl
import GLib
import GLibObject

// MARK: - Color Record

/// A structure for holding a color definition. The contents of
/// the CoglColor structure are private and should never by accessed
/// directly.
///
/// The `ColorProtocol` protocol exposes the methods and properties of an underlying `CoglColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Color`.
/// Alternatively, use `ColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorProtocol {
        /// Untyped pointer to the underlying `CoglColor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglColor` instance.
    var color_ptr: UnsafeMutablePointer<CoglColor>! { get }

    /// Required Initialiser for types conforming to `ColorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A structure for holding a color definition. The contents of
/// the CoglColor structure are private and should never by accessed
/// directly.
///
/// The `ColorRef` type acts as a lightweight Swift reference to an underlying `CoglColor` instance.
/// It exposes methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `ColorRef` only as an `unowned` reference to an existing `CoglColor` instance.
///
public struct ColorRef: ColorProtocol {
        /// Untyped pointer to the underlying `CoglColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglColor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglColor>?) {
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

    /// Reference intialiser for a related type that implements `ColorProtocol`
    @inlinable init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new (empty) color
    @inlinable init() {
            let result = cogl_color_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A structure for holding a color definition. The contents of
/// the CoglColor structure are private and should never by accessed
/// directly.
///
/// The `Color` type acts as an owner of an underlying `CoglColor` instance.
/// It provides the methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `Color` as a strong reference or owner of a `CoglColor` instance.
///
open class Color: ColorProtocol {
        /// Untyped pointer to the underlying `CoglColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglColor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglColor>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglColor, cannot ref(color_ptr)
    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    /// `CoglColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ColorProtocol`
    @inlinable public init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglColor, cannot ref(color_ptr)
    }

    /// Do-nothing destructor for `CoglColor`.
    deinit {
        // no reference counting for CoglColor, cannot unref(color_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglColor, cannot ref(color_ptr)
    }

    /// Creates a new (empty) color
    @inlinable public init() {
            let result = cogl_color_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Color properties

// MARK: no Color signals

// MARK: Color has no signals
// MARK: Color Record: ColorProtocol extension (methods and fields)
public extension ColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglColor` instance.
    @inlinable var color_ptr: UnsafeMutablePointer<CoglColor>! { return ptr?.assumingMemoryBound(to: CoglColor.self) }

    /// Creates a copy of `color`
    @inlinable func copy() -> ColorRef! {
        let result = cogl_color_copy(color_ptr)
        guard let rv = ColorRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees the resources allocated by `cogl_color_new()` and `cogl_color_copy()`
    @inlinable func free() {
        
        cogl_color_free(color_ptr)
        
    }

    /// Retrieves the alpha channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable func getAlpha() -> CFloat {
        let result = cogl_color_get_alpha(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the alpha channel of `color` as a byte value
    /// between 0 and 255
    @inlinable func getAlphaByte() -> CUnsignedChar {
        let result = cogl_color_get_alpha_byte(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the alpha channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable func getAlphaFloat() -> CFloat {
        let result = cogl_color_get_alpha_float(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the blue channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable func getBlue() -> CFloat {
        let result = cogl_color_get_blue(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the blue channel of `color` as a byte value
    /// between 0 and 255
    @inlinable func getBlueByte() -> CUnsignedChar {
        let result = cogl_color_get_blue_byte(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the blue channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable func getBlueFloat() -> CFloat {
        let result = cogl_color_get_blue_float(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the green channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable func getGreen() -> CFloat {
        let result = cogl_color_get_green(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the green channel of `color` as a byte value
    /// between 0 and 255
    @inlinable func getGreenByte() -> CUnsignedChar {
        let result = cogl_color_get_green_byte(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the green channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable func getGreenFloat() -> CFloat {
        let result = cogl_color_get_green_float(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the red channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable func getRed() -> CFloat {
        let result = cogl_color_get_red(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the red channel of `color` as a byte value
    /// between 0 and 255
    @inlinable func getRedByte() -> CUnsignedChar {
        let result = cogl_color_get_red_byte(color_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the red channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable func getRedFloat() -> CFloat {
        let result = cogl_color_get_red_float(color_ptr)
        let rv = result
        return rv
    }

    /// Sets the values of the passed channels into a `CoglColor`
    @inlinable func initFrom4f(red: CFloat, green: CFloat, blue: CFloat, alpha: CFloat) {
        
        cogl_color_init_from_4f(color_ptr, red, green, blue, alpha)
        
    }

    /// Sets the values of the passed channels into a `CoglColor`
    @inlinable func initFrom4fv(colorArray: UnsafePointer<CFloat>!) {
        
        cogl_color_init_from_4fv(color_ptr, colorArray)
        
    }

    /// Sets the values of the passed channels into a `CoglColor`.
    @inlinable func initFrom4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        
        cogl_color_init_from_4ub(color_ptr, red, green, blue, alpha)
        
    }

    /// Converts a non-premultiplied color to a pre-multiplied color. For
    /// example, semi-transparent red is (1.0, 0, 0, 0.5) when non-premultiplied
    /// and (0.5, 0, 0, 0.5) when premultiplied.
    @inlinable func premultiply() {
        
        cogl_color_premultiply(color_ptr)
        
    }

    /// Sets the alpha channel of `color` to `alpha`.
    @inlinable func set(alpha: CFloat) {
        
        cogl_color_set_alpha(color_ptr, alpha)
        
    }

    /// Sets the alpha channel of `color` to `alpha`.
    @inlinable func setAlphaByte(alpha: CUnsignedChar) {
        
        cogl_color_set_alpha_byte(color_ptr, alpha)
        
    }

    /// Sets the alpha channel of `color` to `alpha`.
    @inlinable func setAlphaFloat(alpha: CFloat) {
        
        cogl_color_set_alpha_float(color_ptr, alpha)
        
    }

    /// Sets the blue channel of `color` to `blue`.
    @inlinable func set(blue: CFloat) {
        
        cogl_color_set_blue(color_ptr, blue)
        
    }

    /// Sets the blue channel of `color` to `blue`.
    @inlinable func setBlueByte(blue: CUnsignedChar) {
        
        cogl_color_set_blue_byte(color_ptr, blue)
        
    }

    /// Sets the blue channel of `color` to `blue`.
    @inlinable func setBlueFloat(blue: CFloat) {
        
        cogl_color_set_blue_float(color_ptr, blue)
        
    }

    /// Sets the values of the passed channels into a `CoglColor`
    ///
    /// **set_from_4f is deprecated:**
    /// Use cogl_color_init_from_4f instead.
    @available(*, deprecated) @inlinable func setFrom4f(red: CFloat, green: CFloat, blue: CFloat, alpha: CFloat) {
        
        cogl_color_set_from_4f(color_ptr, red, green, blue, alpha)
        
    }

    /// Sets the values of the passed channels into a `CoglColor`.
    ///
    /// **set_from_4ub is deprecated:**
    /// Use cogl_color_init_from_4ub instead.
    @available(*, deprecated) @inlinable func setFrom4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        
        cogl_color_set_from_4ub(color_ptr, red, green, blue, alpha)
        
    }

    /// Sets the green channel of `color` to `green`.
    @inlinable func set(green: CFloat) {
        
        cogl_color_set_green(color_ptr, green)
        
    }

    /// Sets the green channel of `color` to `green`.
    @inlinable func setGreenByte(green: CUnsignedChar) {
        
        cogl_color_set_green_byte(color_ptr, green)
        
    }

    /// Sets the green channel of `color` to `green`.
    @inlinable func setGreenFloat(green: CFloat) {
        
        cogl_color_set_green_float(color_ptr, green)
        
    }

    /// Sets the red channel of `color` to `red`.
    @inlinable func set(red: CFloat) {
        
        cogl_color_set_red(color_ptr, red)
        
    }

    /// Sets the red channel of `color` to `red`.
    @inlinable func setRedByte(red: CUnsignedChar) {
        
        cogl_color_set_red_byte(color_ptr, red)
        
    }

    /// Sets the red channel of `color` to `red`.
    @inlinable func setRedFloat(red: CFloat) {
        
        cogl_color_set_red_float(color_ptr, red)
        
    }

    /// Converts `color` to the HLS format.
    /// 
    /// The `hue` value is in the 0 .. 360 range. The `luminance` and
    /// `saturation` values are in the 0 .. 1 range.
    @inlinable func toHsl(hue: UnsafeMutablePointer<CFloat>!, saturation: UnsafeMutablePointer<CFloat>!, luminance: UnsafeMutablePointer<CFloat>!) {
        
        cogl_color_to_hsl(color_ptr, hue, saturation, luminance)
        
    }

    /// Converts a pre-multiplied color to a non-premultiplied color. For
    /// example, semi-transparent red is (0.5, 0, 0, 0.5) when premultiplied
    /// and (1.0, 0, 0, 0.5) when non-premultiplied.
    @inlinable func unpremultiply() {
        
        cogl_color_unpremultiply(color_ptr)
        
    }

    /// Converts a color expressed in HLS (hue, luminance and saturation)
    /// values into a `CoglColor`.
    @inlinable func initFromHsl(hue: CFloat, saturation: CFloat, luminance: CFloat) {
        
        cogl_color_init_from_hsl(color_ptr, hue, saturation, luminance)
        
    }

    /// Clears all the auxiliary buffers identified in the `buffers` mask, and if
    /// that includes the color buffer then the specified `color` is used.
    ///
    /// **clear is deprecated:**
    /// Use cogl_framebuffer_clear() api instead
    @available(*, deprecated) @inlinable func clear(buffers: Int) {
        
        cogl_clear(color_ptr, gulong(buffers))
        
    }

    /// Converts a color expressed in HLS (hue, luminance and saturation)
    /// values into a `CoglColor`.
    @inlinable func colorInitFromHsl(hue: CFloat, saturation: CFloat, luminance: CFloat) {
        
        cogl_color_init_from_hsl(color_ptr, hue, saturation, luminance)
        
    }

    /// Enables fogging. Fogging causes vertices that are further away from the eye
    /// to be rendered with a different color. The color is determined according to
    /// the chosen fog mode; at it's simplest the color is linearly interpolated so
    /// that vertices at `z_near` are drawn fully with their original color and
    /// vertices at `z_far` are drawn fully with `fog_color`. Fogging will remain
    /// enabled until you call `cogl_disable_fog()`.
    /// 
    /// &lt;note&gt;The fogging functions only work correctly when primitives use
    /// unmultiplied alpha colors. By default Cogl will premultiply textures
    /// and `cogl_set_source_color()` will premultiply colors, so unless you
    /// explicitly load your textures requesting an unmultiplied internal format
    /// and use `cogl_material_set_color()` you can only use fogging with fully
    /// opaque primitives. This might improve in the future when we can depend
    /// on fragment shaders.&lt;/note&gt;
    ///
    /// **set_fog is deprecated:**
    /// Use #CoglSnippet shader api for fog
    @available(*, deprecated) @inlinable func setFog(mode: CoglFogMode, density: CFloat, zNear: CFloat, zFar: CFloat) {
        
        cogl_set_fog(color_ptr, mode, density, zNear, zFar)
        
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
    @available(*, deprecated) @inlinable func setSourceColor() {
        
        cogl_set_source_color(color_ptr)
        
    }
    /// Retrieves the alpha channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable var alpha: CFloat {
        /// Retrieves the alpha channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let result = cogl_color_get_alpha(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the alpha channel of `color` to `alpha`.
        nonmutating set {
            cogl_color_set_alpha(color_ptr, newValue)
        }
    }

    /// Retrieves the alpha channel of `color` as a byte value
    /// between 0 and 255
    @inlinable var alphaByte: CUnsignedChar {
        /// Retrieves the alpha channel of `color` as a byte value
        /// between 0 and 255
        get {
            let result = cogl_color_get_alpha_byte(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the alpha channel of `color` to `alpha`.
        nonmutating set {
            cogl_color_set_alpha_byte(color_ptr, newValue)
        }
    }

    /// Retrieves the alpha channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable var alphaFloat: CFloat {
        /// Retrieves the alpha channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let result = cogl_color_get_alpha_float(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the alpha channel of `color` to `alpha`.
        nonmutating set {
            cogl_color_set_alpha_float(color_ptr, newValue)
        }
    }

    /// Retrieves the blue channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable var blue: CFloat {
        /// Retrieves the blue channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let result = cogl_color_get_blue(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the blue channel of `color` to `blue`.
        nonmutating set {
            cogl_color_set_blue(color_ptr, newValue)
        }
    }

    /// Retrieves the blue channel of `color` as a byte value
    /// between 0 and 255
    @inlinable var blueByte: CUnsignedChar {
        /// Retrieves the blue channel of `color` as a byte value
        /// between 0 and 255
        get {
            let result = cogl_color_get_blue_byte(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the blue channel of `color` to `blue`.
        nonmutating set {
            cogl_color_set_blue_byte(color_ptr, newValue)
        }
    }

    /// Retrieves the blue channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable var blueFloat: CFloat {
        /// Retrieves the blue channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let result = cogl_color_get_blue_float(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the blue channel of `color` to `blue`.
        nonmutating set {
            cogl_color_set_blue_float(color_ptr, newValue)
        }
    }

    /// Retrieves the green channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable var green: CFloat {
        /// Retrieves the green channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let result = cogl_color_get_green(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the green channel of `color` to `green`.
        nonmutating set {
            cogl_color_set_green(color_ptr, newValue)
        }
    }

    /// Retrieves the green channel of `color` as a byte value
    /// between 0 and 255
    @inlinable var greenByte: CUnsignedChar {
        /// Retrieves the green channel of `color` as a byte value
        /// between 0 and 255
        get {
            let result = cogl_color_get_green_byte(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the green channel of `color` to `green`.
        nonmutating set {
            cogl_color_set_green_byte(color_ptr, newValue)
        }
    }

    /// Retrieves the green channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable var greenFloat: CFloat {
        /// Retrieves the green channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let result = cogl_color_get_green_float(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the green channel of `color` to `green`.
        nonmutating set {
            cogl_color_set_green_float(color_ptr, newValue)
        }
    }

    /// Retrieves the red channel of `color` as a fixed point
    /// value between 0 and 1.0.
    @inlinable var red: CFloat {
        /// Retrieves the red channel of `color` as a fixed point
        /// value between 0 and 1.0.
        get {
            let result = cogl_color_get_red(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the red channel of `color` to `red`.
        nonmutating set {
            cogl_color_set_red(color_ptr, newValue)
        }
    }

    /// Retrieves the red channel of `color` as a byte value
    /// between 0 and 255
    @inlinable var redByte: CUnsignedChar {
        /// Retrieves the red channel of `color` as a byte value
        /// between 0 and 255
        get {
            let result = cogl_color_get_red_byte(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the red channel of `color` to `red`.
        nonmutating set {
            cogl_color_set_red_byte(color_ptr, newValue)
        }
    }

    /// Retrieves the red channel of `color` as a floating point
    /// value between 0.0 and 1.0
    @inlinable var redFloat: CFloat {
        /// Retrieves the red channel of `color` as a floating point
        /// value between 0.0 and 1.0
        get {
            let result = cogl_color_get_red_float(color_ptr)
        let rv = result
            return rv
        }
        /// Sets the red channel of `color` to `red`.
        nonmutating set {
            cogl_color_set_red_float(color_ptr, newValue)
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



