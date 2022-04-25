import CGLib
import CCogl
import GLib
import GLibObject

// MARK: - Bitmap Class


///
/// The `BitmapProtocol` protocol exposes the methods and properties of an underlying `CoglBitmap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Bitmap`.
/// Alternatively, use `BitmapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BitmapProtocol {
        /// Untyped pointer to the underlying `CoglBitmap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglBitmap` instance.
    var bitmap_ptr: UnsafeMutablePointer<CoglBitmap>! { get }

    /// Required Initialiser for types conforming to `BitmapProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `BitmapRef` type acts as a lightweight Swift reference to an underlying `CoglBitmap` instance.
/// It exposes methods that can operate on this data type through `BitmapProtocol` conformance.
/// Use `BitmapRef` only as an `unowned` reference to an existing `CoglBitmap` instance.
///
public struct BitmapRef: BitmapProtocol {
        /// Untyped pointer to the underlying `CoglBitmap` instance.
    /// For type-safe access, use the generated, typed pointer `bitmap_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BitmapRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglBitmap>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglBitmap>?) {
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

    /// Reference intialiser for a related type that implements `BitmapProtocol`
    @inlinable init<T: BitmapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    @inlinable init(file filename: UnsafePointer<CChar>!) throws {
            var error: UnsafeMutablePointer<GError>?
        let result = cogl_bitmap_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    @inlinable static func newFrom(file filename: UnsafePointer<CChar>!) throws -> BitmapRef! {
            var error: UnsafeMutablePointer<GError>?
        let result = cogl_bitmap_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = BitmapRef(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }
}


///
/// The `Bitmap` type acts as an owner of an underlying `CoglBitmap` instance.
/// It provides the methods that can operate on this data type through `BitmapProtocol` conformance.
/// Use `Bitmap` as a strong reference or owner of a `CoglBitmap` instance.
///
open class Bitmap: BitmapProtocol {
        /// Untyped pointer to the underlying `CoglBitmap` instance.
    /// For type-safe access, use the generated, typed pointer `bitmap_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglBitmap>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglBitmap>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglBitmap` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Bitmap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglBitmap>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglBitmap, cannot ref(bitmap_ptr)
    }

    /// Reference intialiser for a related type that implements `BitmapProtocol`
    /// `CoglBitmap` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BitmapProtocol`
    @inlinable public init<T: BitmapProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglBitmap, cannot ref(bitmap_ptr)
    }

    /// Do-nothing destructor for `CoglBitmap`.
    deinit {
        // no reference counting for CoglBitmap, cannot unref(bitmap_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglBitmap, cannot ref(bitmap_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglBitmap, cannot ref(bitmap_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglBitmap, cannot ref(bitmap_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitmapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglBitmap, cannot ref(bitmap_ptr)
    }

    /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    @inlinable public init(file filename: UnsafePointer<CChar>!) throws {
            var error: UnsafeMutablePointer<GError>?
        let result = cogl_bitmap_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Loads an image file from disk. This function can be safely called from
    /// within a thread.
    @inlinable public static func newFrom(file filename: UnsafePointer<CChar>!) throws -> Bitmap! {
            var error: UnsafeMutablePointer<GError>?
        let result = cogl_bitmap_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = Bitmap(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no Bitmap properties

// MARK: no Bitmap signals

// MARK: Bitmap has no signals
// MARK: Bitmap Class: BitmapProtocol extension (methods and fields)
public extension BitmapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglBitmap` instance.
    @inlinable var bitmap_ptr: UnsafeMutablePointer<CoglBitmap>! { return ptr?.assumingMemoryBound(to: CoglBitmap.self) }



}



