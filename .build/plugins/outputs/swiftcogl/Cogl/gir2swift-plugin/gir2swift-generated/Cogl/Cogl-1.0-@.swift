import CGLib
import CCogl
import GLib
import GLibObject

// MARK: - _ColorSizeCheck Record


///
/// The `_ColorSizeCheckProtocol` protocol exposes the methods and properties of an underlying `_CoglColorSizeCheck` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_ColorSizeCheck`.
/// Alternatively, use `_ColorSizeCheckRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol _ColorSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglColorSizeCheck` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_CoglColorSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglColorSizeCheck>! { get }

    /// Required Initialiser for types conforming to `_ColorSizeCheckProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `_ColorSizeCheckRef` type acts as a lightweight Swift reference to an underlying `_CoglColorSizeCheck` instance.
/// It exposes methods that can operate on this data type through `_ColorSizeCheckProtocol` conformance.
/// Use `_ColorSizeCheckRef` only as an `unowned` reference to an existing `_CoglColorSizeCheck` instance.
///
public struct _ColorSizeCheckRef: _ColorSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglColorSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _ColorSizeCheckRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_CoglColorSizeCheck>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_CoglColorSizeCheck>?) {
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

    /// Reference intialiser for a related type that implements `_ColorSizeCheckProtocol`
    @inlinable init<T: _ColorSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `_ColorSizeCheck` type acts as an owner of an underlying `_CoglColorSizeCheck` instance.
/// It provides the methods that can operate on this data type through `_ColorSizeCheckProtocol` conformance.
/// Use `_ColorSizeCheck` as a strong reference or owner of a `_CoglColorSizeCheck` instance.
///
open class _ColorSizeCheck: _ColorSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglColorSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_CoglColorSizeCheck>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_CoglColorSizeCheck>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_CoglColorSizeCheck` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_ColorSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_CoglColorSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _CoglColorSizeCheck, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_ColorSizeCheckProtocol`
    /// `_CoglColorSizeCheck` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_ColorSizeCheckProtocol`
    @inlinable public init<T: _ColorSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _CoglColorSizeCheck, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_CoglColorSizeCheck`.
    deinit {
        // no reference counting for _CoglColorSizeCheck, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _CoglColorSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _CoglColorSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _CoglColorSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_ColorSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _CoglColorSizeCheck, cannot ref(_ptr)
    }



}

// MARK: no _ColorSizeCheck properties

// MARK: no _ColorSizeCheck signals

// MARK: _ColorSizeCheck has no signals
// MARK: _ColorSizeCheck Record: _ColorSizeCheckProtocol extension (methods and fields)
public extension _ColorSizeCheckProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_CoglColorSizeCheck` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_CoglColorSizeCheck>! { return ptr?.assumingMemoryBound(to: _CoglColorSizeCheck.self) }


    @inlinable var compileTimeAssertCoglColorSize: Int {
        get {
            let rv = Int(_ptr.pointee.compile_time_assert_CoglColor_size)
    return rv
        }
         set {
            _ptr.pointee.compile_time_assert_CoglColor_size = gint8(newValue)
        }
    }

}



// MARK: - _MatrixSizeCheck Record


///
/// The `_MatrixSizeCheckProtocol` protocol exposes the methods and properties of an underlying `_CoglMatrixSizeCheck` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MatrixSizeCheck`.
/// Alternatively, use `_MatrixSizeCheckRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol _MatrixSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglMatrixSizeCheck` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_CoglMatrixSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglMatrixSizeCheck>! { get }

    /// Required Initialiser for types conforming to `_MatrixSizeCheckProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `_MatrixSizeCheckRef` type acts as a lightweight Swift reference to an underlying `_CoglMatrixSizeCheck` instance.
/// It exposes methods that can operate on this data type through `_MatrixSizeCheckProtocol` conformance.
/// Use `_MatrixSizeCheckRef` only as an `unowned` reference to an existing `_CoglMatrixSizeCheck` instance.
///
public struct _MatrixSizeCheckRef: _MatrixSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglMatrixSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MatrixSizeCheckRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_CoglMatrixSizeCheck>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_CoglMatrixSizeCheck>?) {
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

    /// Reference intialiser for a related type that implements `_MatrixSizeCheckProtocol`
    @inlinable init<T: _MatrixSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `_MatrixSizeCheck` type acts as an owner of an underlying `_CoglMatrixSizeCheck` instance.
/// It provides the methods that can operate on this data type through `_MatrixSizeCheckProtocol` conformance.
/// Use `_MatrixSizeCheck` as a strong reference or owner of a `_CoglMatrixSizeCheck` instance.
///
open class _MatrixSizeCheck: _MatrixSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglMatrixSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_CoglMatrixSizeCheck>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_CoglMatrixSizeCheck>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_CoglMatrixSizeCheck` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MatrixSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_CoglMatrixSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MatrixSizeCheckProtocol`
    /// `_CoglMatrixSizeCheck` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MatrixSizeCheckProtocol`
    @inlinable public init<T: _MatrixSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_CoglMatrixSizeCheck`.
    deinit {
        // no reference counting for _CoglMatrixSizeCheck, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MatrixSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _CoglMatrixSizeCheck, cannot ref(_ptr)
    }



}

// MARK: no _MatrixSizeCheck properties

// MARK: no _MatrixSizeCheck signals

// MARK: _MatrixSizeCheck has no signals
// MARK: _MatrixSizeCheck Record: _MatrixSizeCheckProtocol extension (methods and fields)
public extension _MatrixSizeCheckProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_CoglMatrixSizeCheck` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_CoglMatrixSizeCheck>! { return ptr?.assumingMemoryBound(to: _CoglMatrixSizeCheck.self) }


    @inlinable var compileTimeAssertCoglMatrixSize: Int {
        get {
            let rv = Int(_ptr.pointee.compile_time_assert_CoglMatrix_size)
    return rv
        }
         set {
            _ptr.pointee.compile_time_assert_CoglMatrix_size = gint8(newValue)
        }
    }

}



// MARK: - _TextureVertexSizeCheck Record


///
/// The `_TextureVertexSizeCheckProtocol` protocol exposes the methods and properties of an underlying `_CoglTextureVertexSizeCheck` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_TextureVertexSizeCheck`.
/// Alternatively, use `_TextureVertexSizeCheckRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol _TextureVertexSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    var _ptr: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>! { get }

    /// Required Initialiser for types conforming to `_TextureVertexSizeCheckProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `_TextureVertexSizeCheckRef` type acts as a lightweight Swift reference to an underlying `_CoglTextureVertexSizeCheck` instance.
/// It exposes methods that can operate on this data type through `_TextureVertexSizeCheckProtocol` conformance.
/// Use `_TextureVertexSizeCheckRef` only as an `unowned` reference to an existing `_CoglTextureVertexSizeCheck` instance.
///
public struct _TextureVertexSizeCheckRef: _TextureVertexSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _TextureVertexSizeCheckRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_CoglTextureVertexSizeCheck>?) {
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

    /// Reference intialiser for a related type that implements `_TextureVertexSizeCheckProtocol`
    @inlinable init<T: _TextureVertexSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `_TextureVertexSizeCheck` type acts as an owner of an underlying `_CoglTextureVertexSizeCheck` instance.
/// It provides the methods that can operate on this data type through `_TextureVertexSizeCheckProtocol` conformance.
/// Use `_TextureVertexSizeCheck` as a strong reference or owner of a `_CoglTextureVertexSizeCheck` instance.
///
open class _TextureVertexSizeCheck: _TextureVertexSizeCheckProtocol {
        /// Untyped pointer to the underlying `_CoglTextureVertexSizeCheck` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_CoglTextureVertexSizeCheck>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_CoglTextureVertexSizeCheck` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_TextureVertexSizeCheck` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_TextureVertexSizeCheckProtocol`
    /// `_CoglTextureVertexSizeCheck` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_TextureVertexSizeCheckProtocol`
    @inlinable public init<T: _TextureVertexSizeCheckProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_CoglTextureVertexSizeCheck`.
    deinit {
        // no reference counting for _CoglTextureVertexSizeCheck, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_TextureVertexSizeCheckProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _CoglTextureVertexSizeCheck, cannot ref(_ptr)
    }



}

// MARK: no _TextureVertexSizeCheck properties

// MARK: no _TextureVertexSizeCheck signals

// MARK: _TextureVertexSizeCheck has no signals
// MARK: _TextureVertexSizeCheck Record: _TextureVertexSizeCheckProtocol extension (methods and fields)
public extension _TextureVertexSizeCheckProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_CoglTextureVertexSizeCheck` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_CoglTextureVertexSizeCheck>! { return ptr?.assumingMemoryBound(to: _CoglTextureVertexSizeCheck.self) }


    @inlinable var compileTimeAssertCoglTextureVertexSize: Int {
        get {
            let rv = Int(_ptr.pointee.compile_time_assert_CoglTextureVertex_size)
    return rv
        }
         set {
            _ptr.pointee.compile_time_assert_CoglTextureVertex_size = gint8(newValue)
        }
    }

}



