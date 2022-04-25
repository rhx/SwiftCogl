import CGLib
import CCogl
import GLib
import GLibObject

// MARK: - Material Record


///
/// The `MaterialProtocol` protocol exposes the methods and properties of an underlying `CoglMaterial` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Material`.
/// Alternatively, use `MaterialRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MaterialProtocol {
        /// Untyped pointer to the underlying `CoglMaterial` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglMaterial` instance.
    var _ptr: UnsafeMutablePointer<CoglMaterial>! { get }

    /// Required Initialiser for types conforming to `MaterialProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MaterialRef` type acts as a lightweight Swift reference to an underlying `CoglMaterial` instance.
/// It exposes methods that can operate on this data type through `MaterialProtocol` conformance.
/// Use `MaterialRef` only as an `unowned` reference to an existing `CoglMaterial` instance.
///
public struct MaterialRef: MaterialProtocol {
        /// Untyped pointer to the underlying `CoglMaterial` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MaterialRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglMaterial>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglMaterial>?) {
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

    /// Reference intialiser for a related type that implements `MaterialProtocol`
    @inlinable init<T: MaterialProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `Material` type acts as an owner of an underlying `CoglMaterial` instance.
/// It provides the methods that can operate on this data type through `MaterialProtocol` conformance.
/// Use `Material` as a strong reference or owner of a `CoglMaterial` instance.
///
open class Material: MaterialProtocol {
        /// Untyped pointer to the underlying `CoglMaterial` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglMaterial>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglMaterial>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglMaterial` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Material` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglMaterial>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglMaterial, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `MaterialProtocol`
    /// `CoglMaterial` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MaterialProtocol`
    @inlinable public init<T: MaterialProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglMaterial, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `CoglMaterial`.
    deinit {
        // no reference counting for CoglMaterial, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglMaterial, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglMaterial, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglMaterial, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglMaterial, cannot ref(_ptr)
    }



}

// MARK: no Material properties

// MARK: no Material signals

// MARK: Material has no signals
// MARK: Material Record: MaterialProtocol extension (methods and fields)
public extension MaterialProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglMaterial` instance.
    @inlinable var _ptr: UnsafeMutablePointer<CoglMaterial>! { return ptr?.assumingMemoryBound(to: CoglMaterial.self) }

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
    @available(*, deprecated) @inlinable func copy() -> MaterialRef! {
        let result = cogl_material_copy(_ptr)
        guard let rv = MaterialRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Retrieves the current ambient color for `material`
    ///
    /// **get_ambient is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func get<ColorT: ColorProtocol>(ambient: ColorT) {
        
        cogl_material_get_ambient(_ptr, ambient.color_ptr)
        
    }

    /// Retrieves the current material color.
    ///
    /// **get_color is deprecated:**
    /// Use cogl_pipeline_get_color() instead
    @available(*, deprecated) @inlinable func get<ColorT: ColorProtocol>(color: ColorT) {
        
        cogl_material_get_color(_ptr, color.color_ptr)
        
    }

    /// Retrieves the current diffuse color for `material`
    ///
    /// **get_diffuse is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func get<ColorT: ColorProtocol>(diffuse: ColorT) {
        
        cogl_material_get_diffuse(_ptr, diffuse.color_ptr)
        
    }

    /// Retrieves the materials current emission color.
    ///
    /// **get_emission is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func get<ColorT: ColorProtocol>(emission: ColorT) {
        
        cogl_material_get_emission(_ptr, emission.color_ptr)
        
    }

    /// Gets whether point sprite coordinate generation is enabled for this
    /// texture layer.
    ///
    /// **get_layer_point_sprite_coords_enabled is deprecated:**
    /// Use cogl_pipeline_get_layer_point_sprite_coords_enabled()
    ///                  instead
    @available(*, deprecated) @inlinable func getLayerPointSpriteCoordsEnabled(layerIndex: Int) -> CoglBool {
        let result = cogl_material_get_layer_point_sprite_coords_enabled(_ptr, gint(layerIndex))
        let rv = result
        return rv
    }

    /// Returns the wrap mode for the 'p' coordinate of texture lookups on this
    /// layer.
    ///
    /// **get_layer_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_get_layer_wrap_mode_p() instead
    @available(*, deprecated) @inlinable func getLayerWrapModeP(layerIndex: Int) -> CoglMaterialWrapMode {
        let result = cogl_material_get_layer_wrap_mode_p(_ptr, gint(layerIndex))
        let rv = result
        return rv
    }

    /// Returns the wrap mode for the 's' coordinate of texture lookups on this
    /// layer.
    ///
    /// **get_layer_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_get_layer_wrap_mode_s() instead
    @available(*, deprecated) @inlinable func getLayerWrapModeS(layerIndex: Int) -> CoglMaterialWrapMode {
        let result = cogl_material_get_layer_wrap_mode_s(_ptr, gint(layerIndex))
        let rv = result
        return rv
    }

    /// Returns the wrap mode for the 't' coordinate of texture lookups on this
    /// layer.
    ///
    /// **get_layer_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_get_layer_wrap_mode_t() instead
    @available(*, deprecated) @inlinable func getLayerWrapModeT(layerIndex: Int) -> CoglMaterialWrapMode {
        let result = cogl_material_get_layer_wrap_mode_t(_ptr, gint(layerIndex))
        let rv = result
        return rv
    }

    /// This function lets you access a material's internal list of layers
    /// for iteration.
    /// 
    /// &lt;note&gt;You should avoid using this API if possible since it was only
    /// made public by mistake and will be deprecated when we have
    /// suitable alternative.&lt;/note&gt;
    /// 
    /// &lt;note&gt;It's important to understand that the list returned may not
    /// remain valid if you modify the material or any of the layers in any
    /// way and so you would have to re-get the list in that
    /// situation.&lt;/note&gt;
    @inlinable func getLayers() -> GLib.ListRef! {
        let result = cogl_material_get_layers(_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Retrieves the number of layers defined for the given `material`
    ///
    /// **get_n_layers is deprecated:**
    /// Use cogl_pipeline_get_n_layers() instead
    @available(*, deprecated) @inlinable func getNLayers() -> Int {
        let result = cogl_material_get_n_layers(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Get the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
    /// used with the vertex buffer API.
    ///
    /// **get_point_size is deprecated:**
    /// Use cogl_pipeline_get_point_size() instead
    @available(*, deprecated) @inlinable func getPointSize() -> CFloat {
        let result = cogl_material_get_point_size(_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the materials current emission color.
    ///
    /// **get_shininess is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func getShininess() -> CFloat {
        let result = cogl_material_get_shininess(_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the materials current specular color.
    ///
    /// **get_specular is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func get<ColorT: ColorProtocol>(specular: ColorT) {
        
        cogl_material_get_specular(_ptr, specular.color_ptr)
        
    }

    /// Queries what user program has been associated with the given
    /// `material` using `cogl_material_set_user_program()`.
    ///
    /// **get_user_program is deprecated:**
    /// Use #CoglSnippet api instead instead
    @available(*, deprecated) @inlinable func getUserProgram() -> CoglHandle! {
        let result = cogl_material_get_user_program(_ptr)
        let rv = result
        return rv
    }

    /// This function removes a layer from your material
    ///
    /// **remove_layer is deprecated:**
    /// Use cogl_pipeline_remove_layer() instead
    @available(*, deprecated) @inlinable func removeLayer(layerIndex: Int) {
        
        cogl_material_remove_layer(_ptr, gint(layerIndex))
        
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
    @available(*, deprecated) @inlinable func setAlphaTestFunction(alphaFunc: CoglMaterialAlphaFunc!, alphaReference: CFloat) {
        
        cogl_material_set_alpha_test_function(_ptr, alphaFunc, alphaReference)
        
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
    @available(*, deprecated) @inlinable func set<ColorT: ColorProtocol>(ambient: ColorT) {
        
        cogl_material_set_ambient(_ptr, ambient.color_ptr)
        
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
    @available(*, deprecated) @inlinable func setAmbientAndDiffuse<ColorT: ColorProtocol>(color: ColorT) {
        
        cogl_material_set_ambient_and_diffuse(_ptr, color.color_ptr)
        
    }

    /// If not already familiar; please refer &lt;link linkend="cogl-Blend-Strings"&gt;here&lt;/link&gt;
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
    /// &lt;warning&gt;The brackets around blend factors are currently not
    /// optional!&lt;/warning&gt;
    /// 
    /// This is the list of source-names usable as blend factors:
    /// &lt;itemizedlist&gt;
    ///   &lt;listitem&gt;&lt;para&gt;SRC_COLOR: The color of the in comming fragment&lt;/para&gt;&lt;/listitem&gt;
    ///   &lt;listitem&gt;&lt;para&gt;DST_COLOR: The color of the framebuffer&lt;/para&gt;&lt;/listitem&gt;
    ///   &lt;listitem&gt;&lt;para&gt;CONSTANT: The constant set via `cogl_material_set_blend_constant()`&lt;/para&gt;&lt;/listitem&gt;
    /// &lt;/itemizedlist&gt;
    /// 
    /// The source names can be used according to the
    /// &lt;link linkend="cogl-Blend-String-syntax"&gt;color-source and factor syntax&lt;/link&gt;,
    /// so for example "(1-SRC_COLOR[A])" would be a valid factor, as would
    /// "(CONSTANT[RGB])"
    /// 
    /// These can also be used as factors:
    /// &lt;itemizedlist&gt;
    ///   &lt;listitem&gt;0: (0, 0, 0, 0)&lt;/listitem&gt;
    ///   &lt;listitem&gt;1: (1, 1, 1, 1)&lt;/listitem&gt;
    ///   &lt;listitem&gt;SRC_ALPHA_SATURATE_FACTOR: (f,f,f,1) where f = `MIN(SRC_COLOR[A],1-DST_COLOR[A])`&lt;/listitem&gt;
    /// &lt;/itemizedlist&gt;
    /// 
    /// &lt;note&gt;Remember; all color components are normalized to the range [0, 1]
    /// before computing the result of blending.&lt;/note&gt;
    /// 
    /// &lt;example id="cogl-Blend-Strings-blend-unpremul"&gt;
    ///   &lt;title&gt;Blend Strings/1&lt;/title&gt;
    ///   &lt;para&gt;Blend a non-premultiplied source over a destination with
    ///   premultiplied alpha:&lt;/para&gt;
    ///   &lt;programlisting&gt;
    /// "RGB = `ADD(SRC_COLOR*(SRC_COLOR[A])`, DST_COLOR*(1-SRC_COLOR[A]))"
    /// "A   = `ADD(SRC_COLOR, DST_COLOR*(1-SRC_COLOR[A])`)"
    ///   &lt;/programlisting&gt;
    /// &lt;/example&gt;
    /// 
    /// &lt;example id="cogl-Blend-Strings-blend-premul"&gt;
    ///   &lt;title&gt;Blend Strings/2&lt;/title&gt;
    ///   &lt;para&gt;Blend a premultiplied source over a destination with
    ///   premultiplied alpha&lt;/para&gt;
    ///   &lt;programlisting&gt;
    /// "RGBA = `ADD(SRC_COLOR, DST_COLOR*(1-SRC_COLOR[A])`)"
    ///   &lt;/programlisting&gt;
    /// &lt;/example&gt;
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
    @available(*, deprecated) @inlinable func setBlend(blendString: UnsafePointer<CChar>!) throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let result = cogl_material_set_blend(_ptr, blendString, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// When blending is setup to reference a CONSTANT blend factor then
    /// blending will depend on the constant set with this function.
    ///
    /// **set_blend_constant is deprecated:**
    /// Use cogl_pipeline_set_blend_constant() instead
    @available(*, deprecated) @inlinable func setBlendConstant<ColorT: ColorProtocol>(constantColor: ColorT) {
        
        cogl_material_set_blend_constant(_ptr, constantColor.color_ptr)
        
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
    @available(*, deprecated) @inlinable func set<ColorT: ColorProtocol>(color: ColorT) {
        
        cogl_material_set_color(_ptr, color.color_ptr)
        
    }

    /// Sets the basic color of the material, used when no lighting is enabled.
    /// 
    /// The default value is (1.0, 1.0, 1.0, 1.0)
    ///
    /// **set_color4f is deprecated:**
    /// Use cogl_pipeline_set_color4f() instead
    @available(*, deprecated) @inlinable func setColor4f(red: CFloat, green: CFloat, blue: CFloat, alpha: CFloat) {
        
        cogl_material_set_color4f(_ptr, red, green, blue, alpha)
        
    }

    /// Sets the basic color of the material, used when no lighting is enabled.
    /// 
    /// The default value is (0xff, 0xff, 0xff, 0xff)
    ///
    /// **set_color4ub is deprecated:**
    /// Use cogl_pipeline_set_color4ub() instead
    @available(*, deprecated) @inlinable func setColor4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        
        cogl_material_set_color4ub(_ptr, red, green, blue, alpha)
        
    }

    /// Sets the material's diffuse color, in the standard OpenGL lighting
    /// model. The diffuse color is most intense where the light hits the
    /// surface directly - perpendicular to the surface.
    /// 
    /// The default value is (0.8, 0.8, 0.8, 1.0)
    ///
    /// **set_diffuse is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func set<ColorT: ColorProtocol>(diffuse: ColorT) {
        
        cogl_material_set_diffuse(_ptr, diffuse.color_ptr)
        
    }

    /// Sets the material's emissive color, in the standard OpenGL lighting
    /// model. It will look like the surface is a light source emitting this
    /// color.
    /// 
    /// The default value is (0.0, 0.0, 0.0, 1.0)
    ///
    /// **set_emission is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func set<ColorT: ColorProtocol>(emission: ColorT) {
        
        cogl_material_set_emission(_ptr, emission.color_ptr)
        
    }

    /// In addition to the standard OpenGL lighting model a Cogl material may have
    /// one or more layers comprised of textures that can be blended together in
    /// order, with a number of different texture combine modes. This function
    /// defines a new texture layer.
    /// 
    /// The index values of multiple layers do not have to be consecutive; it is
    /// only their relative order that is important.
    /// 
    /// &lt;note&gt;In the future, we may define other types of material layers, such
    /// as purely GLSL based layers.&lt;/note&gt;
    ///
    /// **set_layer is deprecated:**
    /// Use cogl_pipeline_set_layer() instead
    @available(*, deprecated) @inlinable func setLayer(layerIndex: Int, texture: CoglHandle) {
        
        cogl_material_set_layer(_ptr, gint(layerIndex), texture)
        
    }

    /// If not already familiar; you can refer
    /// &lt;link linkend="cogl-Blend-Strings"&gt;here&lt;/link&gt; for an overview of what blend
    /// strings are and there syntax.
    /// 
    /// These are all the functions available for texture combining:
    /// &lt;itemizedlist&gt;
    ///   &lt;listitem&gt;`REPLACE(arg0)` = arg0&lt;/listitem&gt;
    ///   &lt;listitem&gt;`MODULATE(arg0, arg1)` = arg0 x arg1&lt;/listitem&gt;
    ///   &lt;listitem&gt;`ADD(arg0, arg1)` = arg0 + arg1&lt;/listitem&gt;
    ///   &lt;listitem&gt;`ADD_SIGNED(arg0, arg1)` = arg0 + arg1 - 0.5&lt;/listitem&gt;
    ///   &lt;listitem&gt;`INTERPOLATE(arg0, arg1, arg2)` = arg0 x arg2 + arg1 x (1 - arg2)&lt;/listitem&gt;
    ///   &lt;listitem&gt;`SUBTRACT(arg0, arg1)` = arg0 - arg1&lt;/listitem&gt;
    ///   &lt;listitem&gt;
    ///     &lt;programlisting&gt;
    ///  `DOT3_RGB(arg0, arg1)` = 4 x ((arg0[R] - 0.5)) * (arg1[R] - 0.5) +
    ///                              (arg0[G] - 0.5)) * (arg1[G] - 0.5) +
    ///                              (arg0[B] - 0.5)) * (arg1[B] - 0.5))
    ///     &lt;/programlisting&gt;
    ///   &lt;/listitem&gt;
    ///   &lt;listitem&gt;
    ///     &lt;programlisting&gt;
    ///  `DOT3_RGBA(arg0, arg1)` = 4 x ((arg0[R] - 0.5)) * (arg1[R] - 0.5) +
    ///                               (arg0[G] - 0.5)) * (arg1[G] - 0.5) +
    ///                               (arg0[B] - 0.5)) * (arg1[B] - 0.5))
    ///     &lt;/programlisting&gt;
    ///   &lt;/listitem&gt;
    /// &lt;/itemizedlist&gt;
    /// 
    /// Refer to the
    /// &lt;link linkend="cogl-Blend-String-syntax"&gt;color-source syntax&lt;/link&gt; for
    /// describing the arguments. The valid source names for texture combining
    /// are:
    /// &lt;variablelist&gt;
    ///   &lt;varlistentry&gt;
    ///     &lt;term&gt;TEXTURE&lt;/term&gt;
    ///     &lt;listitem&gt;Use the color from the current texture layer&lt;/listitem&gt;
    ///   &lt;/varlistentry&gt;
    ///   &lt;varlistentry&gt;
    ///     &lt;term&gt;TEXTURE_0, TEXTURE_1, etc&lt;/term&gt;
    ///     &lt;listitem&gt;Use the color from the specified texture layer&lt;/listitem&gt;
    ///   &lt;/varlistentry&gt;
    ///   &lt;varlistentry&gt;
    ///     &lt;term&gt;CONSTANT&lt;/term&gt;
    ///     &lt;listitem&gt;Use the color from the constant given with
    ///     `cogl_material_set_layer_constant()`&lt;/listitem&gt;
    ///   &lt;/varlistentry&gt;
    ///   &lt;varlistentry&gt;
    ///     &lt;term&gt;PRIMARY&lt;/term&gt;
    ///     &lt;listitem&gt;Use the color of the material as set with
    ///     `cogl_material_set_color()`&lt;/listitem&gt;
    ///   &lt;/varlistentry&gt;
    ///   &lt;varlistentry&gt;
    ///     &lt;term&gt;PREVIOUS&lt;/term&gt;
    ///     &lt;listitem&gt;Either use the texture color from the previous layer, or
    ///     if this is layer 0, use the color of the material as set with
    ///     `cogl_material_set_color()`&lt;/listitem&gt;
    ///   &lt;/varlistentry&gt;
    /// &lt;/variablelist&gt;
    /// 
    /// &lt;refsect2 id="cogl-Layer-Combine-Examples"&gt;
    ///   &lt;title&gt;Layer Combine Examples&lt;/title&gt;
    ///   &lt;para&gt;This is effectively what the default blending is:&lt;/para&gt;
    ///   &lt;informalexample&gt;&lt;programlisting&gt;
    ///   RGBA = MODULATE (PREVIOUS, TEXTURE)
    ///   &lt;/programlisting&gt;&lt;/informalexample&gt;
    ///   &lt;para&gt;This could be used to cross-fade between two images, using
    ///   the alpha component of a constant as the interpolator. The constant
    ///   color is given by calling cogl_material_set_layer_constant.&lt;/para&gt;
    ///   &lt;informalexample&gt;&lt;programlisting&gt;
    ///   RGBA = INTERPOLATE (PREVIOUS, TEXTURE, CONSTANT[A])
    ///   &lt;/programlisting&gt;&lt;/informalexample&gt;
    /// &lt;/refsect2&gt;
    /// 
    /// &lt;note&gt;You can't give a multiplication factor for arguments as you can
    /// with blending.&lt;/note&gt;
    ///
    /// **set_layer_combine is deprecated:**
    /// Use cogl_pipeline_set_layer_combine() instead
    @available(*, deprecated) @inlinable func setLayerCombine(layerIndex: Int, blendString: UnsafePointer<CChar>!) throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let result = cogl_material_set_layer_combine(_ptr, gint(layerIndex), blendString, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// When you are using the 'CONSTANT' color source in a layer combine
    /// description then you can use this function to define its value.
    ///
    /// **set_layer_combine_constant is deprecated:**
    /// Use cogl_pipeline_set_layer_combine_constant()
    /// instead
    @available(*, deprecated) @inlinable func setLayerCombineConstant<ColorT: ColorProtocol>(layerIndex: Int, constant: ColorT) {
        
        cogl_material_set_layer_combine_constant(_ptr, gint(layerIndex), constant.color_ptr)
        
    }

    /// Changes the decimation and interpolation filters used when a texture is
    /// drawn at other scales than 100%.
    ///
    /// **set_layer_filters is deprecated:**
    /// Use cogl_pipeline_set_layer_filters() instead
    @available(*, deprecated) @inlinable func setLayerFilters(layerIndex: Int, minFilter: CoglMaterialFilter, magFilter: CoglMaterialFilter) {
        
        cogl_material_set_layer_filters(_ptr, gint(layerIndex), minFilter, magFilter)
        
    }

    /// This function lets you set a matrix that can be used to e.g. translate
    /// and rotate a single layer of a material used to fill your geometry.
    ///
    /// **set_layer_matrix is deprecated:**
    /// Use cogl_pipeline_set_layer_matrix() instead
    @available(*, deprecated) @inlinable func setLayerMatrix<MatrixT: MatrixProtocol>(layerIndex: Int, matrix: MatrixT) {
        
        cogl_material_set_layer_matrix(_ptr, gint(layerIndex), matrix.matrix_ptr)
        
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
    @available(*, deprecated) @inlinable func setLayerPointSpriteCoordsEnabled(layerIndex: Int, enable: CoglBool) throws -> CoglBool {
        var error: UnsafeMutablePointer<GError>?
        let result = cogl_material_set_layer_point_sprite_coords_enabled(_ptr, gint(layerIndex), enable, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// Sets the wrap mode for all three coordinates of texture lookups on
    /// this layer. This is equivalent to calling
    /// `cogl_material_set_layer_wrap_mode_s()`,
    /// `cogl_material_set_layer_wrap_mode_t()` and
    /// `cogl_material_set_layer_wrap_mode_p()` separately.
    ///
    /// **set_layer_wrap_mode is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode() instead
    @available(*, deprecated) @inlinable func setLayerWrapMode(layerIndex: Int, mode: CoglMaterialWrapMode) {
        
        cogl_material_set_layer_wrap_mode(_ptr, gint(layerIndex), mode)
        
    }

    /// Sets the wrap mode for the 'p' coordinate of texture lookups on
    /// this layer. 'p' is the third coordinate.
    ///
    /// **set_layer_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode_p() instead
    @available(*, deprecated) @inlinable func setLayerWrapModeP(layerIndex: Int, mode: CoglMaterialWrapMode) {
        
        cogl_material_set_layer_wrap_mode_p(_ptr, gint(layerIndex), mode)
        
    }

    /// Sets the wrap mode for the 's' coordinate of texture lookups on this layer.
    ///
    /// **set_layer_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode_s() instead
    @available(*, deprecated) @inlinable func setLayerWrapModeS(layerIndex: Int, mode: CoglMaterialWrapMode) {
        
        cogl_material_set_layer_wrap_mode_s(_ptr, gint(layerIndex), mode)
        
    }

    /// Sets the wrap mode for the 't' coordinate of texture lookups on this layer.
    ///
    /// **set_layer_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_set_layer_wrap_mode_t() instead
    @available(*, deprecated) @inlinable func setLayerWrapModeT(layerIndex: Int, mode: CoglMaterialWrapMode) {
        
        cogl_material_set_layer_wrap_mode_t(_ptr, gint(layerIndex), mode)
        
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
    @available(*, deprecated) @inlinable func set(pointSize: CFloat) {
        
        cogl_material_set_point_size(_ptr, pointSize)
        
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
    @available(*, deprecated) @inlinable func set(shininess: CFloat) {
        
        cogl_material_set_shininess(_ptr, shininess)
        
    }

    /// Sets the material's specular color, in the standard OpenGL lighting
    /// model. The intensity of the specular color depends on the viewport
    /// position, and is brightest along the lines of reflection.
    /// 
    /// The default value is (0.0, 0.0, 0.0, 1.0)
    ///
    /// **set_specular is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @available(*, deprecated) @inlinable func set<ColorT: ColorProtocol>(specular: ColorT) {
        
        cogl_material_set_specular(_ptr, specular.color_ptr)
        
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
    @available(*, deprecated) @inlinable func setUser(program: CoglHandle) {
        
        cogl_material_set_user_program(_ptr, program)
        
    }
    /// This function lets you access a material's internal list of layers
    /// for iteration.
    /// 
    /// &lt;note&gt;You should avoid using this API if possible since it was only
    /// made public by mistake and will be deprecated when we have
    /// suitable alternative.&lt;/note&gt;
    /// 
    /// &lt;note&gt;It's important to understand that the list returned may not
    /// remain valid if you modify the material or any of the layers in any
    /// way and so you would have to re-get the list in that
    /// situation.&lt;/note&gt;
    @inlinable var layers: GLib.ListRef! {
        /// This function lets you access a material's internal list of layers
        /// for iteration.
        /// 
        /// &lt;note&gt;You should avoid using this API if possible since it was only
        /// made public by mistake and will be deprecated when we have
        /// suitable alternative.&lt;/note&gt;
        /// 
        /// &lt;note&gt;It's important to understand that the list returned may not
        /// remain valid if you modify the material or any of the layers in any
        /// way and so you would have to re-get the list in that
        /// situation.&lt;/note&gt;
        get {
            let result = cogl_material_get_layers(_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Retrieves the number of layers defined for the given `material`
    ///
    /// **get_n_layers is deprecated:**
    /// Use cogl_pipeline_get_n_layers() instead
    @inlinable var nLayers: Int {
        /// Retrieves the number of layers defined for the given `material`
        ///
        /// **get_n_layers is deprecated:**
        /// Use cogl_pipeline_get_n_layers() instead
        @available(*, deprecated) get {
            let result = cogl_material_get_n_layers(_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Get the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
    /// used with the vertex buffer API.
    ///
    /// **get_point_size is deprecated:**
    /// Use cogl_pipeline_get_point_size() instead
    @inlinable var pointSize: CFloat {
        /// Get the size of points drawn when `COGL_VERTICES_MODE_POINTS` is
        /// used with the vertex buffer API.
        ///
        /// **get_point_size is deprecated:**
        /// Use cogl_pipeline_get_point_size() instead
        @available(*, deprecated) get {
            let result = cogl_material_get_point_size(_ptr)
        let rv = result
            return rv
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
            cogl_material_set_point_size(_ptr, newValue)
        }
    }

    /// Retrieves the materials current emission color.
    ///
    /// **get_shininess is deprecated:**
    /// Use the #CoglSnippet shader api for lighting
    @inlinable var shininess: CFloat {
        /// Retrieves the materials current emission color.
        ///
        /// **get_shininess is deprecated:**
        /// Use the #CoglSnippet shader api for lighting
        @available(*, deprecated) get {
            let result = cogl_material_get_shininess(_ptr)
        let rv = result
            return rv
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
            cogl_material_set_shininess(_ptr, newValue)
        }
    }

    /// Queries what user program has been associated with the given
    /// `material` using `cogl_material_set_user_program()`.
    ///
    /// **get_user_program is deprecated:**
    /// Use #CoglSnippet api instead instead
    @inlinable var userProgram: CoglHandle! {
        /// Queries what user program has been associated with the given
        /// `material` using `cogl_material_set_user_program()`.
        ///
        /// **get_user_program is deprecated:**
        /// Use #CoglSnippet api instead instead
        @available(*, deprecated) get {
            let result = cogl_material_get_user_program(_ptr)
        let rv = result
            return rv
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
            cogl_material_set_user_program(_ptr, newValue)
        }
    }


}



// MARK: - MaterialLayer Record


///
/// The `MaterialLayerProtocol` protocol exposes the methods and properties of an underlying `CoglMaterialLayer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MaterialLayer`.
/// Alternatively, use `MaterialLayerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MaterialLayerProtocol {
        /// Untyped pointer to the underlying `CoglMaterialLayer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglMaterialLayer` instance.
    var _ptr: UnsafeMutablePointer<CoglMaterialLayer>! { get }

    /// Required Initialiser for types conforming to `MaterialLayerProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `MaterialLayerRef` type acts as a lightweight Swift reference to an underlying `CoglMaterialLayer` instance.
/// It exposes methods that can operate on this data type through `MaterialLayerProtocol` conformance.
/// Use `MaterialLayerRef` only as an `unowned` reference to an existing `CoglMaterialLayer` instance.
///
public struct MaterialLayerRef: MaterialLayerProtocol {
        /// Untyped pointer to the underlying `CoglMaterialLayer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MaterialLayerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglMaterialLayer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglMaterialLayer>?) {
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

    /// Reference intialiser for a related type that implements `MaterialLayerProtocol`
    @inlinable init<T: MaterialLayerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `MaterialLayer` type acts as an owner of an underlying `CoglMaterialLayer` instance.
/// It provides the methods that can operate on this data type through `MaterialLayerProtocol` conformance.
/// Use `MaterialLayer` as a strong reference or owner of a `CoglMaterialLayer` instance.
///
open class MaterialLayer: MaterialLayerProtocol {
        /// Untyped pointer to the underlying `CoglMaterialLayer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglMaterialLayer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglMaterialLayer>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglMaterialLayer` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MaterialLayer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglMaterialLayer>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglMaterialLayer, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `MaterialLayerProtocol`
    /// `CoglMaterialLayer` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MaterialLayerProtocol`
    @inlinable public init<T: MaterialLayerProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglMaterialLayer, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `CoglMaterialLayer`.
    deinit {
        // no reference counting for CoglMaterialLayer, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglMaterialLayer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglMaterialLayer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglMaterialLayer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MaterialLayerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglMaterialLayer, cannot ref(_ptr)
    }



}

// MARK: no MaterialLayer properties

// MARK: no MaterialLayer signals

// MARK: MaterialLayer has no signals
// MARK: MaterialLayer Record: MaterialLayerProtocol extension (methods and fields)
public extension MaterialLayerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglMaterialLayer` instance.
    @inlinable var _ptr: UnsafeMutablePointer<CoglMaterialLayer>! { return ptr?.assumingMemoryBound(to: CoglMaterialLayer.self) }

    /// Queries the currently set downscaling filter for a material later
    ///
    /// **get_mag_filter is deprecated:**
    /// No replacement
    @available(*, deprecated) @inlinable func getMagFilter() -> CoglMaterialFilter {
        let result = cogl_material_layer_get_mag_filter(_ptr)
        let rv = result
        return rv
    }

    /// Queries the currently set downscaling filter for a material layer
    ///
    /// **get_min_filter is deprecated:**
    /// No replacement
    @available(*, deprecated) @inlinable func getMinFilter() -> CoglMaterialFilter {
        let result = cogl_material_layer_get_min_filter(_ptr)
        let rv = result
        return rv
    }

    /// Extracts a texture handle for a specific layer.
    /// 
    /// &lt;note&gt;In the future Cogl may support purely GLSL based layers; for those
    /// layers this function which will likely return `COGL_INVALID_HANDLE` if you
    /// try to get the texture handle from them. Considering this scenario, you
    /// should call `cogl_material_layer_get_type()` first in order check it is of
    /// type `COGL_MATERIAL_LAYER_TYPE_TEXTURE` before calling this function.&lt;/note&gt;
    ///
    /// **get_texture is deprecated:**
    /// No replacement
    @available(*, deprecated) @inlinable func getTexture() -> CoglHandle! {
        let result = cogl_material_layer_get_texture(_ptr)
        let rv = result
        return rv
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
    @available(*, deprecated) @inlinable func getType() -> CoglMaterialLayerType {
        let result = cogl_material_layer_get_type(_ptr)
        let rv = result
        return rv
    }

    /// Gets the wrap mode for the 'p' coordinate of texture lookups on
    /// this layer. 'p' is the third coordinate.
    ///
    /// **get_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_p() instead
    @available(*, deprecated) @inlinable func getWrapModeP() -> CoglMaterialWrapMode {
        let result = cogl_material_layer_get_wrap_mode_p(_ptr)
        let rv = result
        return rv
    }

    /// Gets the wrap mode for the 's' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_s() instead
    @available(*, deprecated) @inlinable func getWrapModeS() -> CoglMaterialWrapMode {
        let result = cogl_material_layer_get_wrap_mode_s(_ptr)
        let rv = result
        return rv
    }

    /// Gets the wrap mode for the 't' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_t() instead
    @available(*, deprecated) @inlinable func getWrapModeT() -> CoglMaterialWrapMode {
        let result = cogl_material_layer_get_wrap_mode_t(_ptr)
        let rv = result
        return rv
    }
    /// Queries the currently set downscaling filter for a material later
    ///
    /// **get_mag_filter is deprecated:**
    /// No replacement
    @inlinable var magFilter: CoglMaterialFilter {
        /// Queries the currently set downscaling filter for a material later
        ///
        /// **get_mag_filter is deprecated:**
        /// No replacement
        @available(*, deprecated) get {
            let result = cogl_material_layer_get_mag_filter(_ptr)
        let rv = result
            return rv
        }
    }

    /// Queries the currently set downscaling filter for a material layer
    ///
    /// **get_min_filter is deprecated:**
    /// No replacement
    @inlinable var minFilter: CoglMaterialFilter {
        /// Queries the currently set downscaling filter for a material layer
        ///
        /// **get_min_filter is deprecated:**
        /// No replacement
        @available(*, deprecated) get {
            let result = cogl_material_layer_get_min_filter(_ptr)
        let rv = result
            return rv
        }
    }

    /// Extracts a texture handle for a specific layer.
    /// 
    /// &lt;note&gt;In the future Cogl may support purely GLSL based layers; for those
    /// layers this function which will likely return `COGL_INVALID_HANDLE` if you
    /// try to get the texture handle from them. Considering this scenario, you
    /// should call `cogl_material_layer_get_type()` first in order check it is of
    /// type `COGL_MATERIAL_LAYER_TYPE_TEXTURE` before calling this function.&lt;/note&gt;
    ///
    /// **get_texture is deprecated:**
    /// No replacement
    @inlinable var texture: CoglHandle! {
        /// Extracts a texture handle for a specific layer.
        /// 
        /// &lt;note&gt;In the future Cogl may support purely GLSL based layers; for those
        /// layers this function which will likely return `COGL_INVALID_HANDLE` if you
        /// try to get the texture handle from them. Considering this scenario, you
        /// should call `cogl_material_layer_get_type()` first in order check it is of
        /// type `COGL_MATERIAL_LAYER_TYPE_TEXTURE` before calling this function.&lt;/note&gt;
        ///
        /// **get_texture is deprecated:**
        /// No replacement
        @available(*, deprecated) get {
            let result = cogl_material_layer_get_texture(_ptr)
        let rv = result
            return rv
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
    @inlinable var type: CoglMaterialLayerType {
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
            let result = cogl_material_layer_get_type(_ptr)
        let rv = result
            return rv
        }
    }

    /// Gets the wrap mode for the 'p' coordinate of texture lookups on
    /// this layer. 'p' is the third coordinate.
    ///
    /// **get_wrap_mode_p is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_p() instead
    @inlinable var wrapModeP: CoglMaterialWrapMode {
        /// Gets the wrap mode for the 'p' coordinate of texture lookups on
        /// this layer. 'p' is the third coordinate.
        ///
        /// **get_wrap_mode_p is deprecated:**
        /// Use cogl_pipeline_layer_get_wrap_mode_p() instead
        @available(*, deprecated) get {
            let result = cogl_material_layer_get_wrap_mode_p(_ptr)
        let rv = result
            return rv
        }
    }

    /// Gets the wrap mode for the 's' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_s is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_s() instead
    @inlinable var wrapModeS: CoglMaterialWrapMode {
        /// Gets the wrap mode for the 's' coordinate of texture lookups on this layer.
        ///
        /// **get_wrap_mode_s is deprecated:**
        /// Use cogl_pipeline_layer_get_wrap_mode_s() instead
        @available(*, deprecated) get {
            let result = cogl_material_layer_get_wrap_mode_s(_ptr)
        let rv = result
            return rv
        }
    }

    /// Gets the wrap mode for the 't' coordinate of texture lookups on this layer.
    ///
    /// **get_wrap_mode_t is deprecated:**
    /// Use cogl_pipeline_layer_get_wrap_mode_t() instead
    @inlinable var wrapModeT: CoglMaterialWrapMode {
        /// Gets the wrap mode for the 't' coordinate of texture lookups on this layer.
        ///
        /// **get_wrap_mode_t is deprecated:**
        /// Use cogl_pipeline_layer_get_wrap_mode_t() instead
        @available(*, deprecated) get {
            let result = cogl_material_layer_get_wrap_mode_t(_ptr)
        let rv = result
            return rv
        }
    }


}



// MARK: - Matrix Record

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
/// &lt;note&gt;You must consider the members of the CoglMatrix structure read only,
/// and all matrix modifications must be done via the cogl_matrix API. This
/// allows Cogl to annotate the matrices internally. Violation of this will give
/// undefined results. If you need to initialize a matrix with a constant other
/// than the identity matrix you can use `cogl_matrix_init_from_array()`.&lt;/note&gt;
///
/// The `MatrixProtocol` protocol exposes the methods and properties of an underlying `CoglMatrix` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Matrix`.
/// Alternatively, use `MatrixRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MatrixProtocol {
        /// Untyped pointer to the underlying `CoglMatrix` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglMatrix` instance.
    var matrix_ptr: UnsafeMutablePointer<CoglMatrix>! { get }

    /// Required Initialiser for types conforming to `MatrixProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
/// &lt;note&gt;You must consider the members of the CoglMatrix structure read only,
/// and all matrix modifications must be done via the cogl_matrix API. This
/// allows Cogl to annotate the matrices internally. Violation of this will give
/// undefined results. If you need to initialize a matrix with a constant other
/// than the identity matrix you can use `cogl_matrix_init_from_array()`.&lt;/note&gt;
///
/// The `MatrixRef` type acts as a lightweight Swift reference to an underlying `CoglMatrix` instance.
/// It exposes methods that can operate on this data type through `MatrixProtocol` conformance.
/// Use `MatrixRef` only as an `unowned` reference to an existing `CoglMatrix` instance.
///
public struct MatrixRef: MatrixProtocol {
        /// Untyped pointer to the underlying `CoglMatrix` instance.
    /// For type-safe access, use the generated, typed pointer `matrix_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MatrixRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglMatrix>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglMatrix>?) {
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

    /// Reference intialiser for a related type that implements `MatrixProtocol`
    @inlinable init<T: MatrixProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

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
/// &lt;note&gt;You must consider the members of the CoglMatrix structure read only,
/// and all matrix modifications must be done via the cogl_matrix API. This
/// allows Cogl to annotate the matrices internally. Violation of this will give
/// undefined results. If you need to initialize a matrix with a constant other
/// than the identity matrix you can use `cogl_matrix_init_from_array()`.&lt;/note&gt;
///
/// The `Matrix` type acts as an owner of an underlying `CoglMatrix` instance.
/// It provides the methods that can operate on this data type through `MatrixProtocol` conformance.
/// Use `Matrix` as a strong reference or owner of a `CoglMatrix` instance.
///
open class Matrix: MatrixProtocol {
        /// Untyped pointer to the underlying `CoglMatrix` instance.
    /// For type-safe access, use the generated, typed pointer `matrix_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglMatrix>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglMatrix>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `CoglMatrix` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglMatrix>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for CoglMatrix, cannot ref(matrix_ptr)
    }

    /// Reference intialiser for a related type that implements `MatrixProtocol`
    /// `CoglMatrix` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MatrixProtocol`
    @inlinable public init<T: MatrixProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for CoglMatrix, cannot ref(matrix_ptr)
    }

    /// Do-nothing destructor for `CoglMatrix`.
    deinit {
        // no reference counting for CoglMatrix, cannot unref(matrix_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for CoglMatrix, cannot ref(matrix_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for CoglMatrix, cannot ref(matrix_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for CoglMatrix, cannot ref(matrix_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for CoglMatrix, cannot ref(matrix_ptr)
    }



}

// MARK: no Matrix properties

// MARK: no Matrix signals

// MARK: Matrix has no signals
// MARK: Matrix Record: MatrixProtocol extension (methods and fields)
public extension MatrixProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglMatrix` instance.
    @inlinable var matrix_ptr: UnsafeMutablePointer<CoglMatrix>! { return ptr?.assumingMemoryBound(to: CoglMatrix.self) }

    /// Allocates a new `CoglMatrix` on the heap and initializes it with
    /// the same values as `matrix`.
    @inlinable func copy() -> MatrixRef! {
        let result = cogl_matrix_copy(matrix_ptr)
        guard let rv = MatrixRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a `CoglMatrix` that was previously allocated via a call to
    /// `cogl_matrix_copy()`.
    @inlinable func free() {
        
        cogl_matrix_free(matrix_ptr)
        
    }

    /// Multiplies `matrix` by the given frustum perspective matrix.
    @inlinable func frustum(`left`: CFloat, `right`: CFloat, bottom: CFloat, top: CFloat, zNear: CFloat, zFar: CFloat) {
        
        cogl_matrix_frustum(matrix_ptr, `left`, `right`, bottom, top, zNear, zFar)
        
    }

    /// Casts `matrix` to a float array which can be directly passed to OpenGL.
    @inlinable func getArray() -> UnsafePointer<CFloat>! {
        let result = cogl_matrix_get_array(matrix_ptr)
        let rv = result
        return rv
    }

    /// Gets the inverse transform of a given matrix and uses it to initialize
    /// a new `CoglMatrix`.
    /// 
    /// &lt;note&gt;Although the first parameter is annotated as const to indicate
    /// that the transform it represents isn't modified this function may
    /// technically save a copy of the inverse transform within the given
    /// `CoglMatrix` so that subsequent requests for the inverse transform may
    /// avoid costly inversion calculations.&lt;/note&gt;
    @inlinable func get<MatrixT: MatrixProtocol>(inverse: MatrixT) -> CoglBool {
        let result = cogl_matrix_get_inverse(matrix_ptr, inverse.matrix_ptr)
        let rv = result
        return rv
    }

    /// Initializes `matrix` with the contents of `array`
    @inlinable func initFrom(array: UnsafePointer<CFloat>!) {
        
        cogl_matrix_init_from_array(matrix_ptr, array)
        
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
    @inlinable func initIdentity() {
        
        cogl_matrix_init_identity(matrix_ptr)
        
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
    @inlinable func initTranslation(tx: CFloat, ty: CFloat, tz: CFloat) {
        
        cogl_matrix_init_translation(matrix_ptr, tx, ty, tz)
        
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
    /// &lt;note&gt;You should never look directly along the world-up
    /// vector.&lt;/note&gt;
    /// 
    /// &lt;note&gt;It is assumed you are using a typical projection matrix where
    /// your origin maps to the center of your viewport.&lt;/note&gt;
    /// 
    /// &lt;note&gt;Almost always when you use this function it should be the first
    /// transform applied to a new modelview transform&lt;/note&gt;
    @inlinable func lookAt(eyePositionX: CFloat, eyePositionY: CFloat, eyePositionZ: CFloat, objectX: CFloat, objectY: CFloat, objectZ: CFloat, worldUpX: CFloat, worldUpY: CFloat, worldUpZ: CFloat) {
        
        cogl_matrix_look_at(matrix_ptr, eyePositionX, eyePositionY, eyePositionZ, objectX, objectY, objectZ, worldUpX, worldUpY, worldUpZ)
        
    }

    /// Multiplies the two supplied matrices together and stores
    /// the resulting matrix inside `result`.
    /// 
    /// &lt;note&gt;It is possible to multiply the `a` matrix in-place, so
    /// `result` can be equal to `a` but can't be equal to `b`.&lt;/note&gt;
    @inlinable func multiply<MatrixT: MatrixProtocol>(a: MatrixT, b: MatrixT) {
        
        cogl_matrix_multiply(matrix_ptr, a.matrix_ptr, b.matrix_ptr)
        
    }

    /// Multiplies `matrix` by a parallel projection matrix.
    ///
    /// **ortho is deprecated:**
    /// Use cogl_matrix_orthographic()
    @available(*, deprecated) @inlinable func ortho(`left`: CFloat, `right`: CFloat, bottom: CFloat, top: CFloat, near: CFloat, far: CFloat) {
        
        cogl_matrix_ortho(matrix_ptr, `left`, `right`, bottom, top, near, far)
        
    }

    /// Multiplies `matrix` by the described perspective matrix
    /// 
    /// &lt;note&gt;You should be careful not to have to great a `z_far` / `z_near`
    /// ratio since that will reduce the effectiveness of depth testing
    /// since there wont be enough precision to identify the depth of
    /// objects near to each other.&lt;/note&gt;
    @inlinable func perspective(fovY: CFloat, aspect: CFloat, zNear: CFloat, zFar: CFloat) {
        
        cogl_matrix_perspective(matrix_ptr, fovY, aspect, zNear, zFar)
        
    }

    /// Multiplies `matrix` with a rotation matrix that applies a rotation
    /// of `angle` degrees around the specified 3D vector.
    @inlinable func rotate(angle: CFloat, x: CFloat, y: CFloat, z: CFloat) {
        
        cogl_matrix_rotate(matrix_ptr, angle, x, y, z)
        
    }

    /// Multiplies `matrix` with a transform matrix that scales along the X,
    /// Y and Z axis.
    @inlinable func scale(sx: CFloat, sy: CFloat, sz: CFloat) {
        
        cogl_matrix_scale(matrix_ptr, sx, sy, sz)
        
    }

    /// Transforms a point whos position is given and returned as four float
    /// components.
    @inlinable func transformPoint(x: UnsafeMutablePointer<CFloat>!, y: UnsafeMutablePointer<CFloat>!, z: UnsafeMutablePointer<CFloat>!, w: UnsafeMutablePointer<CFloat>!) {
        
        cogl_matrix_transform_point(matrix_ptr, x, y, z, w)
        
    }

    /// Multiplies `matrix` with a transform matrix that translates along
    /// the X, Y and Z axis.
    @inlinable func translate(x: CFloat, y: CFloat, z: CFloat) {
        
        cogl_matrix_translate(matrix_ptr, x, y, z)
        
    }

    /// Replaces `matrix` with its transpose. Ie, every element (i,j) in the
    /// new matrix is taken from element (j,i) in the old matrix.
    @inlinable func transpose() {
        
        cogl_matrix_transpose(matrix_ptr)
        
    }

    /// Prints the contents of a `CoglMatrix` to stdout.
    @inlinable func debugMatrixPrint() {
        
        cogl_debug_matrix_print(matrix_ptr)
        
    }

    /// Stores the current model-view matrix in `matrix`.
    ///
    /// **get_modelview_matrix is deprecated:**
    /// Use cogl_framebuffer_get_modelview_matrix()
    ///                   instead
    @available(*, deprecated) @inlinable func getModelviewMatrix() {
        
        cogl_get_modelview_matrix(matrix_ptr)
        
    }

    /// Stores the current projection matrix in `matrix`.
    ///
    /// **get_projection_matrix is deprecated:**
    /// Use cogl_framebuffer_get_projection_matrix()
    ///                   instead
    @available(*, deprecated) @inlinable func getProjectionMatrix() {
        
        cogl_get_projection_matrix(matrix_ptr)
        
    }

    /// Loads `matrix` as the new model-view matrix.
    ///
    /// **set_modelview_matrix is deprecated:**
    /// Use cogl_framebuffer_set_modelview_matrix()
    ///                   instead
    @available(*, deprecated) @inlinable func setModelviewMatrix() {
        
        cogl_set_modelview_matrix(matrix_ptr)
        
    }

    /// Loads matrix as the new projection matrix.
    ///
    /// **set_projection_matrix is deprecated:**
    /// Use cogl_framebuffer_set_projection_matrix()
    ///                   instead
    @available(*, deprecated) @inlinable func setProjectionMatrix() {
        
        cogl_set_projection_matrix(matrix_ptr)
        
    }

    /// Multiplies the current model-view matrix by the given matrix.
    ///
    /// **transform is deprecated:**
    /// Use cogl_framebuffer_transform() instead
    @available(*, deprecated) @inlinable func transform() {
        
        cogl_transform(matrix_ptr)
        
    }
    /// Casts `matrix` to a float array which can be directly passed to OpenGL.
    @inlinable var array: UnsafePointer<CFloat>! {
        /// Casts `matrix` to a float array which can be directly passed to OpenGL.
        get {
            let result = cogl_matrix_get_array(matrix_ptr)
        let rv = result
            return rv
        }
    }

    /// Determines if the given matrix is an identity matrix.
    @inlinable var isIdentity: CoglBool {
        /// Determines if the given matrix is an identity matrix.
        get {
            let result = cogl_matrix_is_identity(matrix_ptr)
        let rv = result
            return rv
        }
    }

    // var modelviewMatrix is unavailable because it does not have a valid getter or setter

    // var projectionMatrix is unavailable because it does not have a valid getter or setter

    @inlinable var xx: CFloat {
        get {
            let rv = matrix_ptr.pointee.xx
    return rv
        }
         set {
            matrix_ptr.pointee.xx = newValue
        }
    }

    @inlinable var yx: CFloat {
        get {
            let rv = matrix_ptr.pointee.yx
    return rv
        }
         set {
            matrix_ptr.pointee.yx = newValue
        }
    }

    @inlinable var zx: CFloat {
        get {
            let rv = matrix_ptr.pointee.zx
    return rv
        }
         set {
            matrix_ptr.pointee.zx = newValue
        }
    }

    @inlinable var wx: CFloat {
        get {
            let rv = matrix_ptr.pointee.wx
    return rv
        }
         set {
            matrix_ptr.pointee.wx = newValue
        }
    }

    @inlinable var xy: CFloat {
        get {
            let rv = matrix_ptr.pointee.xy
    return rv
        }
         set {
            matrix_ptr.pointee.xy = newValue
        }
    }

    @inlinable var yy: CFloat {
        get {
            let rv = matrix_ptr.pointee.yy
    return rv
        }
         set {
            matrix_ptr.pointee.yy = newValue
        }
    }

    @inlinable var zy: CFloat {
        get {
            let rv = matrix_ptr.pointee.zy
    return rv
        }
         set {
            matrix_ptr.pointee.zy = newValue
        }
    }

    @inlinable var wy: CFloat {
        get {
            let rv = matrix_ptr.pointee.wy
    return rv
        }
         set {
            matrix_ptr.pointee.wy = newValue
        }
    }

    @inlinable var xz: CFloat {
        get {
            let rv = matrix_ptr.pointee.xz
    return rv
        }
         set {
            matrix_ptr.pointee.xz = newValue
        }
    }

    @inlinable var yz: CFloat {
        get {
            let rv = matrix_ptr.pointee.yz
    return rv
        }
         set {
            matrix_ptr.pointee.yz = newValue
        }
    }

    @inlinable var zz: CFloat {
        get {
            let rv = matrix_ptr.pointee.zz
    return rv
        }
         set {
            matrix_ptr.pointee.zz = newValue
        }
    }

    @inlinable var wz: CFloat {
        get {
            let rv = matrix_ptr.pointee.wz
    return rv
        }
         set {
            matrix_ptr.pointee.wz = newValue
        }
    }

    @inlinable var xw: CFloat {
        get {
            let rv = matrix_ptr.pointee.xw
    return rv
        }
         set {
            matrix_ptr.pointee.xw = newValue
        }
    }

    @inlinable var yw: CFloat {
        get {
            let rv = matrix_ptr.pointee.yw
    return rv
        }
         set {
            matrix_ptr.pointee.yw = newValue
        }
    }

    @inlinable var zw: CFloat {
        get {
            let rv = matrix_ptr.pointee.zw
    return rv
        }
         set {
            matrix_ptr.pointee.zw = newValue
        }
    }

    @inlinable var ww: CFloat {
        get {
            let rv = matrix_ptr.pointee.ww
    return rv
        }
         set {
            matrix_ptr.pointee.ww = newValue
        }
    }

    // var privateMemberInv is unavailable because private_member_inv is private

    // var privateMemberType is unavailable because private_member_type is private

    // var privateMemberFlags is unavailable because private_member_flags is private

    // var privateMemberPadding3 is unavailable because private_member__padding3 is private

}



