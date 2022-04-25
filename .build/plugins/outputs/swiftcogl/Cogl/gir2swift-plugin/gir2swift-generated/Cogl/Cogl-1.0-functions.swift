import CGLib
import CCogl
import GLib
import GLibObject

/// Computes the cosine of `angle`
@inlinable public func angleCos(angle: CoglAngle) -> CoglFixed {
    let result = cogl_angle_cos(angle)
    let rv = result
    return rv
}




/// Computes the sine of `angle`
@inlinable public func angleSin(angle: CoglAngle) -> CoglFixed {
    let result = cogl_angle_sin(angle)
    let rv = result
    return rv
}




/// Computes the tangent of `angle`
@inlinable public func angleTan(angle: CoglAngle) -> CoglFixed {
    let result = cogl_angle_tan(angle)
    let rv = result
    return rv
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
/// &lt;note&gt;No special material state is flushed, so if you want Cogl to setup a
/// simplified material state it is your responsibility to set a simple source
/// material before calling `cogl_begin_gl()`. E.g. by calling
/// `cogl_set_source_color4ub()`.&lt;/note&gt;
/// 
/// &lt;note&gt;It is your responsibility to restore any OpenGL state that you modify
/// to how it was after calling `cogl_begin_gl()` if you don't do this then the
/// result of further Cogl calls is undefined.&lt;/note&gt;
/// 
/// &lt;note&gt;You can not nest begin/end blocks.&lt;/note&gt;
/// 
/// Again we would like to stress, we do not advise the use of this API and if
/// possible we would prefer to improve Cogl than have developers require raw
/// OpenGL.
///
/// **begin_gl is deprecated:**
/// Use the #CoglGLES2Context api instead
@available(*, deprecated) @inlinable public func beginGl() {
    
    cogl_begin_gl()
    
}




@inlinable public func bitmapErrorQuark() -> UInt32 {
    let result = cogl_bitmap_error_quark()
    let rv = result
    return rv
}




@inlinable public func blendStringErrorQuark() -> UInt32 {
    let result = cogl_blend_string_error_quark()
    let rv = result
    return rv
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
@available(*, deprecated) @inlinable public func checkExtension(name: UnsafePointer<CChar>!, ext: UnsafePointer<CChar>!) -> CoglBool {
    let result = cogl_check_extension(name, ext)
    let rv = result
    return rv
}




/// Clears all the auxiliary buffers identified in the `buffers` mask, and if
/// that includes the color buffer then the specified `color` is used.
///
/// **clear is deprecated:**
/// Use cogl_framebuffer_clear() api instead
@available(*, deprecated) @inlinable public func clear<ColorT: ColorProtocol>(color: ColorT, buffers: Int) {
    
    cogl_clear(color.color_ptr, gulong(buffers))
    
}




/// Ensures that the current clipping region has been set in GL. This
/// will automatically be called before any Cogl primitives but it
/// maybe be neccessary to call if you are using raw GL calls with
/// clipping.
///
/// **clip_ensure is deprecated:**
/// Calling this function has no effect
@available(*, deprecated) @inlinable public func clipEnsure() {
    
    cogl_clip_ensure()
    
}




/// Reverts the clipping region to the state before the last call to
/// `cogl_clip_push()`.
///
/// **clip_pop is deprecated:**
/// Use cogl_framebuffer_pop_clip() instead
@available(*, deprecated) @inlinable public func clipPop() {
    
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
@available(*, deprecated) @inlinable public func clipPush(xOffset: CFloat, yOffset: CFloat, width: CFloat, height: CFloat) {
    
    cogl_clip_push(xOffset, yOffset, width, height)
    
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
@available(*, deprecated) @inlinable public func clipPush(primitive: UnsafeMutablePointer<CoglPrimitive>!, boundsX1: CFloat, boundsY1: CFloat, boundsX2: CFloat, boundsY2: CFloat) {
    
    cogl_clip_push_primitive(primitive, boundsX1, boundsY1, boundsX2, boundsY2)
    
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
@available(*, deprecated) @inlinable public func clipPushRectangle(x0: CFloat, y0: CFloat, x1: CFloat, y1: CFloat) {
    
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
@available(*, deprecated) @inlinable public func clipPushWindowRect(xOffset: CFloat, yOffset: CFloat, width: CFloat, height: CFloat) {
    
    cogl_clip_push_window_rect(xOffset, yOffset, width, height)
    
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
@available(*, deprecated) @inlinable public func clipPushWindowRectangle(xOffset: Int, yOffset: Int, width: Int, height: Int) {
    
    cogl_clip_push_window_rectangle(gint(xOffset), gint(yOffset), gint(width), gint(height))
    
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
@available(*, deprecated) @inlinable public func clipStackRestore() {
    
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
@available(*, deprecated) @inlinable public func clipStackSave() {
    
    cogl_clip_stack_save()
    
}




@inlinable @available(*, deprecated) public func clutterCheckExtensionCLUTTER(name: UnsafePointer<CChar>!, ext: UnsafePointer<CChar>!) -> CoglBool {
    let result = cogl_clutter_check_extension_CLUTTER(name, ext)
    let rv = result
    return rv
}




@inlinable @available(*, deprecated) public func clutterWinsysHasFeatureCLUTTER(feature: CoglWinsysFeature) -> CoglBool {
    let result = cogl_clutter_winsys_has_feature_CLUTTER(feature)
    let rv = result
    return rv
}




/// Compares two `CoglColor`&lt;!-- --&gt;s and checks if they are the same.
/// 
/// This function can be passed to `g_hash_table_new()` as the `key_equal_func`
/// parameter, when using `CoglColor`&lt;!-- --&gt;s as keys in a `GHashTable`.
@inlinable public func colorEqual(v1: UnsafeMutableRawPointer? = nil, v2: UnsafeMutableRawPointer? = nil) -> CoglBool {
    let result = cogl_color_equal(v1, v2)
    let rv = result
    return rv
}




/// Converts a color expressed in HLS (hue, luminance and saturation)
/// values into a `CoglColor`.
@inlinable public func colorInitFromHsl<ColorT: ColorProtocol>(color: ColorT, hue: CFloat, saturation: CFloat, luminance: CFloat) {
    
    cogl_color_init_from_hsl(color.color_ptr, hue, saturation, luminance)
    
}




/// Create a new cogl program object that can be used to replace parts of the GL
/// rendering pipeline with custom code.
///
/// **create_program is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func createProgram() -> CoglHandle! {
    let result = cogl_create_program()
    let rv = result
    return rv
}




/// Create a new shader handle, use `cogl_shader_source()` to set the
/// source code to be used on it.
///
/// **create_shader is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func createShader(shaderType: CoglShaderType) -> CoglHandle! {
    let result = cogl_create_shader(shaderType)
    let rv = result
    return rv
}




/// Prints the contents of a `CoglMatrix` to stdout.
@inlinable public func debugMatrixPrint<MatrixT: MatrixProtocol>(matrix: MatrixT) {
    
    cogl_debug_matrix_print(matrix.matrix_ptr)
    
}




/// This function disables fogging, so primitives drawn afterwards will not be
/// blended with any previously set fog color.
///
/// **disable_fog is deprecated:**
/// Use #CoglSnippet shader api for fog
@available(*, deprecated) @inlinable public func disableFog() {
    
    cogl_disable_fog()
    
}




@inlinable public func doubleToFixed(value: CDouble) -> CoglFixed {
    let result = cogl_double_to_fixed(value)
    let rv = result
    return rv
}




@inlinable public func doubleToInt(value: CDouble) -> Int {
    let result = cogl_double_to_int(value)
    let rv = Int(result)
    return rv
}




@inlinable public func doubleToUint(value: CDouble) -> Int {
    let result = cogl_double_to_uint(value)
    let rv = Int(result)
    return rv
}




/// This is the counterpart to `cogl_begin_gl()` used to delimit blocks of drawing
/// code using raw OpenGL. Please refer to `cogl_begin_gl()` for full details.
///
/// **end_gl is deprecated:**
/// Use the #CoglGLES2Context api instead
@available(*, deprecated) @inlinable public func endGl() {
    
    cogl_end_gl()
    
}




/// Checks whether the given COGL features are available. Multiple
/// features can be checked for by or-ing them together with the '|'
/// operator. `true` is only returned if all of the requested features
/// are available.
///
/// **features_available is deprecated:**
/// Use cogl_has_feature() instead
@available(*, deprecated) @inlinable public func featuresAvailable(features: FeatureFlags) -> CoglBool {
    let result = cogl_features_available(features.value)
    let rv = result
    return rv
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
@inlinable public func flush() {
    
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
@inlinable @available(*, deprecated) public func framebufferGetColorFormat(framebuffer: UnsafeMutablePointer<CoglFramebuffer>!) -> CoglPixelFormat {
    let result = cogl_framebuffer_get_color_format(framebuffer)
    let rv = result
    return rv
}




/// Replaces the current projection matrix with a perspective matrix
/// for a given viewing frustum defined by 4 side clip planes that
/// all cross through the origin and 2 near and far clip planes.
///
/// **frustum is deprecated:**
/// Use cogl_framebuffer_frustum() instead
@available(*, deprecated) @inlinable public func frustum(`left`: CFloat, `right`: CFloat, bottom: CFloat, top: CFloat, zNear: CFloat, zFar: CFloat) {
    
    cogl_frustum(`left`, `right`, bottom, top, zNear, zFar)
    
}




/// Queries if backface culling has been enabled via
/// `cogl_set_backface_culling_enabled()`
///
/// **get_backface_culling_enabled is deprecated:**
/// Use cogl_pipeline_get_cull_face_mode() instead
@available(*, deprecated) @inlinable public func getBackfaceCullingEnabled() -> CoglBool {
    let result = cogl_get_backface_culling_enabled()
    let rv = result
    return rv
}




/// Gets the number of bitplanes used for each of the color components
/// in the color buffer. Pass `nil` for any of the arguments if the
/// value is not required.
///
/// **get_bitmasks is deprecated:**
/// Use cogl_framebuffer_get_red/green/blue/alpha_bits()
///                  instead
@available(*, deprecated) @inlinable public func getBitmasks(red: UnsafeMutablePointer<gint>!, green: UnsafeMutablePointer<gint>!, blue: UnsafeMutablePointer<gint>!, alpha: UnsafeMutablePointer<gint>!) {
    
    cogl_get_bitmasks(red, green, blue, alpha)
    
}




/// Queries if depth testing has been enabled via `cogl_set_depth_test_enable()`
///
/// **get_depth_test_enabled is deprecated:**
/// Use cogl_pipeline_set_depth_state() instead
@available(*, deprecated) @inlinable public func getDepthTestEnabled() -> CoglBool {
    let result = cogl_get_depth_test_enabled()
    let rv = result
    return rv
}




/// Returns all of the features supported by COGL.
///
/// **get_features is deprecated:**
/// Use cogl_foreach_feature() instead
@available(*, deprecated) @inlinable public func getFeatures() -> Cogl.FeatureFlags {
    let result = cogl_get_features()
    let rv = FeatureFlags(result)
    return rv
}




/// Stores the current model-view matrix in `matrix`.
///
/// **get_modelview_matrix is deprecated:**
/// Use cogl_framebuffer_get_modelview_matrix()
///                   instead
@available(*, deprecated) @inlinable public func getModelview<MatrixT: MatrixProtocol>(matrix: MatrixT) {
    
    cogl_get_modelview_matrix(matrix.matrix_ptr)
    
}




/// Retrieves the `GOptionGroup` used by Cogl to parse the command
/// line options. Clutter uses this to handle the Cogl command line
/// options during its initialization process.
///
/// **get_option_group is deprecated:**
/// Not replaced
@available(*, deprecated) @inlinable public func getOptionGroup() -> GLib.OptionGroupRef! {
    let result = cogl_get_option_group()
    guard let rv = GLib.OptionGroupRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Gets a pointer to a given GL or GL ES extension function. This acts
/// as a wrapper around `glXGetProcAddress()` or whatever is the
/// appropriate function for the current backend.
/// 
/// &lt;note&gt;This function should not be used to query core opengl API
/// symbols since eglGetProcAddress for example doesn't allow this and
/// and may return a junk pointer if you do.&lt;/note&gt;
@inlinable public func getProcAddress(name: UnsafePointer<CChar>!) -> CoglFuncPtr! {
    let result = cogl_get_proc_address(name)
    let rv = result
    return rv
}




/// Stores the current projection matrix in `matrix`.
///
/// **get_projection_matrix is deprecated:**
/// Use cogl_framebuffer_get_projection_matrix()
///                   instead
@available(*, deprecated) @inlinable public func getProjection<MatrixT: MatrixProtocol>(matrix: MatrixT) {
    
    cogl_get_projection_matrix(matrix.matrix_ptr)
    
}




/// Returns the current source material as previously set using
/// `cogl_set_source()`.
/// 
/// &lt;note&gt;You should typically consider the returned material immutable
/// and not try to change any of its properties unless you own a
/// reference to that material. At times you may be able to get a
/// reference to an internally managed materials and the result of
/// modifying such materials is undefined.&lt;/note&gt;
///
/// **get_source is deprecated:**
/// Latest drawing apis all take an explicit
///                   #CoglPipeline argument so this stack of
///                   #CoglMaterial<!-- -->s shouldn't be used.
@available(*, deprecated) @inlinable public func getSource() -> UnsafeMutableRawPointer? {
    let result = cogl_get_source()
    guard let rv = result else { return nil }
    return rv
}




/// Stores the current viewport in `v`. `v`[0] and `v`[1] get the x and y
/// position of the viewport and `v`[2] and `v`[3] get the width and
/// height.
///
/// **get_viewport is deprecated:**
/// Use cogl_framebuffer_get_viewport4fv()
///                   instead
@available(*, deprecated) @inlinable public func getViewport(v: UnsafeMutablePointer<CFloat>!) {
    
    cogl_get_viewport(v)
    
}





///
/// **gtype_matrix_get_type is deprecated:**
/// Use cogl_matrix_get_gtype() instead.
@available(*, deprecated) @inlinable public func gtypeMatrixGetType() -> GType {
    let result = cogl_gtype_matrix_get_type()
    let rv = result
    return rv
}




@inlinable public func handleGetType() -> GType {
    let result = cogl_handle_get_type()
    let rv = result
    return rv
}




/// Increases the reference count of `handle` by 1
@inlinable public func handleRef(handle: CoglHandle) -> CoglHandle! {
    let result = cogl_handle_ref(handle)
    let rv = result
    return rv
}




/// Drecreases the reference count of `handle` by 1; if the reference
/// count reaches 0, the resources allocated by `handle` will be freed
@inlinable public func handleUnref(handle: CoglHandle) {
    
    cogl_handle_unref(handle)
    
}




/// Checks whether `object` is a `CoglBitmap`
@inlinable public func isBitmap(object: UnsafeMutableRawPointer? = nil) -> CoglBool {
    let result = cogl_is_bitmap(object)
    let rv = result
    return rv
}




/// Gets whether the given handle references an existing material object.
///
/// **is_material is deprecated:**
/// Use cogl_is_pipeline() instead
@available(*, deprecated) @inlinable public func isMaterial(handle: CoglHandle) -> CoglBool {
    let result = cogl_is_material(handle)
    let rv = result
    return rv
}




/// Determines whether the given `CoglObject` references an offscreen
/// framebuffer object.
@inlinable public func isOffscreen(object: UnsafeMutableRawPointer? = nil) -> CoglBool {
    let result = cogl_is_offscreen(object)
    let rv = result
    return rv
}




/// Gets whether the given handle references an existing program object.
///
/// **is_program is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func isProgram(handle: CoglHandle) -> CoglBool {
    let result = cogl_is_program(handle)
    let rv = result
    return rv
}




/// Gets whether the given handle references an existing shader object.
///
/// **is_shader is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func isShader(handle: CoglHandle) -> CoglBool {
    let result = cogl_is_shader(handle)
    let rv = result
    return rv
}




/// Gets whether the given object references a texture object.
@inlinable public func isTexture(object: UnsafeMutableRawPointer? = nil) -> CoglBool {
    let result = cogl_is_texture(object)
    let rv = result
    return rv
}




/// Checks whether `handle` is a Vertex Buffer Object
///
/// **is_vertex_buffer is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func isVertexBuffer(handle: CoglHandle) -> CoglBool {
    let result = cogl_is_vertex_buffer(handle)
    let rv = result
    return rv
}




/// Checks whether `handle` is a handle to the indices for a vertex
/// buffer object
///
/// **is_vertex_buffer_indices is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func isVertexBufferIndices(handle: CoglHandle) -> CoglBool {
    let result = cogl_is_vertex_buffer_indices(handle)
    let rv = result
    return rv
}




/// Increment the reference count for a `CoglMaterial`.
///
/// **material_ref is deprecated:**
/// Use cogl_object_ref() instead
@available(*, deprecated) @inlinable public func materialRef(material: CoglHandle) -> CoglHandle! {
    let result = cogl_material_ref(material)
    let rv = result
    return rv
}




/// Decrement the reference count for a `CoglMaterial`.
///
/// **material_unref is deprecated:**
/// Use cogl_object_unref() instead
@available(*, deprecated) @inlinable public func materialUnref(material: CoglHandle) {
    
    cogl_material_unref(material)
    
}




/// Compares two matrices to see if they represent the same
/// transformation. Although internally the matrices may have different
/// annotations associated with them and may potentially have a cached
/// inverse matrix these are not considered in the comparison.
@inlinable public func matrixEqual(v1: UnsafeMutableRawPointer? = nil, v2: UnsafeMutableRawPointer? = nil) -> CoglBool {
    let result = cogl_matrix_equal(v1, v2)
    let rv = result
    return rv
}




@inlinable public func onscreenClutterBackendSetSizeCLUTTER(width: Int, height: Int) {
    
    cogl_onscreen_clutter_backend_set_size_CLUTTER(gint(width), gint(height))
    
}




/// Replaces the current projection matrix with an orthographic projection
/// matrix. See &lt;xref linkend="cogl-ortho-matrix"/&gt; to see how the matrix is
/// calculated.
/// 
/// &lt;figure id="cogl-ortho-matrix"&gt;
///   &lt;title&gt;&lt;/title&gt;
///   &lt;graphic fileref="cogl_ortho.png" format="PNG"/&gt;
/// &lt;/figure&gt;
/// 
/// &lt;note&gt;This function copies the arguments from OpenGL's `glOrtho()` even
/// though they are unnecessarily confusing due to the z near and z far
/// arguments actually being a "distance" from the origin, where
/// negative values are behind the viewer, instead of coordinates for
/// the z clipping planes which would have been consistent with the
/// left, right bottom and top arguments.&lt;/note&gt;
///
/// **ortho is deprecated:**
/// Use cogl_framebuffer_orthographic() instead
@available(*, deprecated) @inlinable public func ortho(`left`: CFloat, `right`: CFloat, bottom: CFloat, top: CFloat, near: CFloat, far: CFloat) {
    
    cogl_ortho(`left`, `right`, bottom, top, near, far)
    
}




/// Replaces the current projection matrix with a perspective matrix
/// based on the provided values.
/// 
/// &lt;note&gt;You should be careful not to have to great a `z_far` / `z_near`
/// ratio since that will reduce the effectiveness of depth testing
/// since there wont be enough precision to identify the depth of
/// objects near to each other.&lt;/note&gt;
///
/// **perspective is deprecated:**
/// Use cogl_framebuffer_perspective() instead
@available(*, deprecated) @inlinable public func perspective(fovy: CFloat, aspect: CFloat, zNear: CFloat, zFar: CFloat) {
    
    cogl_perspective(fovy, aspect, zNear, zFar)
    
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
@inlinable public func polygon<TextureVertexT: TextureVertexProtocol>(vertices: TextureVertexT, nVertices: Int, useColor: CoglBool) {
    
    cogl_polygon(vertices._ptr, guint(nVertices), useColor)
    
}




/// Restore `cogl_set_draw_buffer()` state.
///
/// **pop_draw_buffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) @inlinable public func popDrawBuffer() {
    
    cogl_pop_draw_buffer()
    
}




/// Restores the framebuffer that was previously at the top of the stack.
/// All subsequent drawing will be redirected to this framebuffer.
///
/// **pop_framebuffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) @inlinable public func popFramebuffer() {
    
    cogl_pop_framebuffer()
    
}




/// Restores the current model-view matrix from the matrix stack.
///
/// **pop_matrix is deprecated:**
/// Use cogl_framebuffer_pop_matrix() instead
@available(*, deprecated) @inlinable public func popMatrix() {
    
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
@available(*, deprecated) @inlinable public func popSource() {
    
    cogl_pop_source()
    
}




/// Attaches a shader to a program object. A program can have multiple
/// vertex or fragment shaders but only one of them may provide a
/// `main()` function. It is allowed to use a program with only a vertex
/// shader or only a fragment shader.
///
/// **program_attach_shader is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programAttachShader(programHandle: CoglHandle, shaderHandle: CoglHandle) {
    
    cogl_program_attach_shader(programHandle, shaderHandle)
    
}




/// Retrieve the location (offset) of a uniform variable in a shader program,
/// a uniform is a variable that is constant for all vertices/fragments for a
/// shader object and is possible to modify as an external parameter.
///
/// **program_get_uniform_location is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) @inlinable public func programGetUniformLocation(handle: CoglHandle, uniformName: UnsafePointer<CChar>!) -> Int {
    let result = cogl_program_get_uniform_location(handle, uniformName)
    let rv = Int(result)
    return rv
}




/// Links a program making it ready for use. Note that calling this
/// function is optional. If it is not called the program will
/// automatically be linked the first time it is used.
///
/// **program_link is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programLink(handle: CoglHandle) {
    
    cogl_program_link(handle)
    
}




/// Add an extra reference to a program.
///
/// **program_ref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programRef(handle: CoglHandle) -> CoglHandle! {
    let result = cogl_program_ref(handle)
    let rv = result
    return rv
}




/// Changes the value of a floating point uniform for the given linked
/// `program`.
///
/// **program_set_uniform_1f is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) @inlinable public func programSetUniform1f(program: CoglHandle, uniformLocation: Int, value: CFloat) {
    
    cogl_program_set_uniform_1f(program, gint(uniformLocation), value)
    
}




/// Changes the value of an integer uniform for the given linked
/// `program`.
///
/// **program_set_uniform_1i is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) @inlinable public func programSetUniform1i(program: CoglHandle, uniformLocation: Int, value: Int) {
    
    cogl_program_set_uniform_1i(program, gint(uniformLocation), gint(value))
    
}




/// Changes the value of a float vector uniform, or uniform array for
/// the given linked `program`.
///
/// **program_set_uniform_float is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) @inlinable public func programSetUniformFloat(program: CoglHandle, uniformLocation: Int, nComponents: Int, count: Int, value: UnsafePointer<CFloat>!) {
    
    cogl_program_set_uniform_float(program, gint(uniformLocation), gint(nComponents), gint(count), value)
    
}




/// Changes the value of a int vector uniform, or uniform array for
/// the given linked `program`.
///
/// **program_set_uniform_int is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) @inlinable public func programSetUniformInt(program: CoglHandle, uniformLocation: Int, nComponents: Int, count: Int, value: UnsafePointer<CInt>!) {
    
    cogl_program_set_uniform_int(program, gint(uniformLocation), gint(nComponents), gint(count), value)
    
}




/// Changes the value of a matrix uniform, or uniform array in the
/// given linked `program`.
///
/// **program_set_uniform_matrix is deprecated:**
/// Use #CoglSnippet api instead
@available(*, deprecated) @inlinable public func programSetUniformMatrix(program: CoglHandle, uniformLocation: Int, dimensions: Int, count: Int, transpose: CoglBool, value: UnsafePointer<CFloat>!) {
    
    cogl_program_set_uniform_matrix(program, gint(uniformLocation), gint(dimensions), gint(count), transpose, value)
    
}




/// Changes the value of a floating point uniform in the currently
/// used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_1f is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programUniform1f(uniformNo: Int, value: CFloat) {
    
    cogl_program_uniform_1f(gint(uniformNo), value)
    
}




/// Changes the value of an integer uniform in the currently
/// used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_1i is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programUniform1i(uniformNo: Int, value: Int) {
    
    cogl_program_uniform_1i(gint(uniformNo), gint(value))
    
}




/// Changes the value of a float vector uniform, or uniform array in the
/// currently used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_float is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programUniformFloat(uniformNo: Int, size: Int, count: Int, value: UnsafePointer<CFloat>!) {
    
    cogl_program_uniform_float(gint(uniformNo), gint(size), gint(count), value)
    
}




/// Changes the value of a int vector uniform, or uniform array in the
/// currently used (see `cogl_program_use()`) shader program.
///
/// **program_uniform_int is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programUniformInt(uniformNo: Int, size: Int, count: Int, value: UnsafePointer<CInt>!) {
    
    cogl_program_uniform_int(gint(uniformNo), gint(size), gint(count), value)
    
}




/// Changes the value of a matrix uniform, or uniform array in the
/// currently used (see `cogl_program_use()`) shader program. The `size`
/// parameter is used to determine the square size of the matrix.
///
/// **program_uniform_matrix is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programUniformMatrix(uniformNo: Int, size: Int, count: Int, transpose: CoglBool, value: UnsafePointer<CFloat>!) {
    
    cogl_program_uniform_matrix(gint(uniformNo), gint(size), gint(count), transpose, value)
    
}




/// Removes a reference to a program. If it was the last reference the
/// program object will be destroyed.
///
/// **program_unref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func programUnref(handle: CoglHandle) {
    
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
@available(*, deprecated) @inlinable public func programUse(handle: CoglHandle) {
    
    cogl_program_use(handle)
    
}




/// Save `cogl_set_draw_buffer()` state.
///
/// **push_draw_buffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) @inlinable public func pushDrawBuffer() {
    
    cogl_push_draw_buffer()
    
}




/// Redirects all subsequent drawing to the specified framebuffer. This can
/// either be an offscreen buffer created with cogl_offscreen_new_to_texture ()
/// or in the future it may be an onscreen framebuffer too.
/// 
/// You should understand that a framebuffer owns the following state:
/// &lt;itemizedlist&gt;
///  &lt;listitem&gt;&lt;simpara&gt;The projection matrix&lt;/simpara&gt;&lt;/listitem&gt;
///  &lt;listitem&gt;&lt;simpara&gt;The modelview matrix stack&lt;/simpara&gt;&lt;/listitem&gt;
///  &lt;listitem&gt;&lt;simpara&gt;The viewport&lt;/simpara&gt;&lt;/listitem&gt;
///  &lt;listitem&gt;&lt;simpara&gt;The clip stack&lt;/simpara&gt;&lt;/listitem&gt;
/// &lt;/itemizedlist&gt;
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
@available(*, deprecated) @inlinable public func pushFramebuffer(buffer: UnsafeMutablePointer<CoglFramebuffer>!) {
    
    cogl_push_framebuffer(buffer)
    
}




/// Stores the current model-view matrix on the matrix stack. The matrix
/// can later be restored with `cogl_pop_matrix()`.
///
/// **push_matrix is deprecated:**
/// Use cogl_framebuffer_push_matrix() instead
@available(*, deprecated) @inlinable public func pushMatrix() {
    
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
@available(*, deprecated) @inlinable public func pushSource(material: UnsafeMutableRawPointer? = nil) {
    
    cogl_push_source(material)
    
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
@available(*, deprecated) @inlinable public func readPixels(x: Int, y: Int, width: Int, height: Int, source: ReadPixelsFlags, format: CoglPixelFormat, pixels: UnsafeMutablePointer<UInt8>!) {
    
    cogl_read_pixels(gint(x), gint(y), gint(width), gint(height), source.value, format, pixels)
    
}




/// Fills a rectangle at the given coordinates with the current source material
@inlinable public func rectangle(x1: CFloat, y1: CFloat, x2: CFloat, y2: CFloat) {
    
    cogl_rectangle(x1, y1, x2, y2)
    
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
@inlinable public func rectangleWithMultitextureCoords(x1: CFloat, y1: CFloat, x2: CFloat, y2: CFloat, texCoords: UnsafePointer<CFloat>!, texCoordsLen: Int) {
    
    cogl_rectangle_with_multitexture_coords(x1, y1, x2, y2, texCoords, gint(texCoordsLen))
    
}




/// Draw a rectangle using the current material and supply texture coordinates
/// to be used for the first texture layer of the material. To draw the entire
/// texture pass in `tx1`=0.0 `ty1`=0.0 `tx2`=1.0 `ty2`=1.0.
@inlinable public func rectangleWithTextureCoords(x1: CFloat, y1: CFloat, x2: CFloat, y2: CFloat, tx1: CFloat, ty1: CFloat, tx2: CFloat, ty2: CFloat) {
    
    cogl_rectangle_with_texture_coords(x1, y1, x2, y2, tx1, ty1, tx2, ty2)
    
}




/// Draws a series of rectangles in the same way that
/// `cogl_rectangle()` does. In some situations it can give a
/// significant performance boost to use this function rather than
/// calling `cogl_rectangle()` separately for each rectangle.
/// 
/// `verts` should point to an array of `float`&lt;!-- --&gt;s with
/// `n_rects` * 4 elements. Each group of 4 values corresponds to the
/// parameters x1, y1, x2, and y2, and have the same
/// meaning as in `cogl_rectangle()`.
@inlinable public func rectangles(verts: UnsafePointer<CFloat>!, nRects: Int) {
    
    cogl_rectangles(verts, guint(nRects))
    
}




/// Draws a series of rectangles in the same way that
/// `cogl_rectangle_with_texture_coords()` does. In some situations it can give a
/// significant performance boost to use this function rather than
/// calling `cogl_rectangle_with_texture_coords()` separately for each rectangle.
/// 
/// `verts` should point to an array of `float`&lt;!-- --&gt;s with
/// `n_rects` * 8 elements. Each group of 8 values corresponds to the
/// parameters x1, y1, x2, y2, tx1, ty1, tx2 and ty2 and have the same
/// meaning as in `cogl_rectangle_with_texture_coords()`.
@inlinable public func rectanglesWithTextureCoords(verts: UnsafePointer<CFloat>!, nRects: Int) {
    
    cogl_rectangles_with_texture_coords(verts, guint(nRects))
    
}




/// Multiplies the current model-view matrix by one that rotates the
/// model around the vertex specified by `x`, `y` and `z`. The rotation
/// follows the right-hand thumb rule so for example rotating by 10
/// degrees about the vertex (0, 0, 1) causes a small counter-clockwise
/// rotation.
///
/// **rotate is deprecated:**
/// Use cogl_framebuffer_rotate() instead
@available(*, deprecated) @inlinable public func rotate(angle: CFloat, x: CFloat, y: CFloat, z: CFloat) {
    
    cogl_rotate(angle, x, y, z)
    
}




/// Multiplies the current model-view matrix by one that scales the x,
/// y and z axes by the given values.
///
/// **scale is deprecated:**
/// Use cogl_framebuffer_pop_matrix() instead
@available(*, deprecated) @inlinable public func scale(x: CFloat, y: CFloat, z: CFloat) {
    
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
@available(*, deprecated) @inlinable public func setBackfaceCullingEnabled(setting: CoglBool) {
    
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
@available(*, deprecated) @inlinable public func setDepthTestEnabled(setting: CoglBool) {
    
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
@available(*, deprecated) @inlinable public func setDrawBuffer(target: BufferTarget, offscreen: CoglHandle) {
    
    cogl_set_draw_buffer(target.value, offscreen)
    
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
@available(*, deprecated) @inlinable public func setFog<ColorT: ColorProtocol>(fogColor: ColorT, mode: CoglFogMode, density: CFloat, zNear: CFloat, zFar: CFloat) {
    
    cogl_set_fog(fogColor.color_ptr, mode, density, zNear, zFar)
    
}




/// This redirects all subsequent drawing to the specified framebuffer. This can
/// either be an offscreen buffer created with cogl_offscreen_new_to_texture ()
/// or in the future it may be an onscreen framebuffers too.
///
/// **set_framebuffer is deprecated:**
/// The latest drawing apis take explicit
///                   #CoglFramebuffer arguments so this stack of
///                   framebuffers shouldn't be used anymore.
@available(*, deprecated) @inlinable public func setFramebuffer(buffer: UnsafeMutablePointer<CoglFramebuffer>!) {
    
    cogl_set_framebuffer(buffer)
    
}




/// Loads `matrix` as the new model-view matrix.
///
/// **set_modelview_matrix is deprecated:**
/// Use cogl_framebuffer_set_modelview_matrix()
///                   instead
@available(*, deprecated) @inlinable public func setModelview<MatrixT: MatrixProtocol>(matrix: MatrixT) {
    
    cogl_set_modelview_matrix(matrix.matrix_ptr)
    
}




/// Loads matrix as the new projection matrix.
///
/// **set_projection_matrix is deprecated:**
/// Use cogl_framebuffer_set_projection_matrix()
///                   instead
@available(*, deprecated) @inlinable public func setProjection<MatrixT: MatrixProtocol>(matrix: MatrixT) {
    
    cogl_set_projection_matrix(matrix.matrix_ptr)
    
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
@available(*, deprecated) @inlinable public func setSource(material: UnsafeMutableRawPointer? = nil) {
    
    cogl_set_source(material)
    
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
@available(*, deprecated) @inlinable public func setSource<ColorT: ColorProtocol>(color: ColorT) {
    
    cogl_set_source_color(color.color_ptr)
    
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
@available(*, deprecated) @inlinable public func setSourceColor4f(red: CFloat, green: CFloat, blue: CFloat, alpha: CFloat) {
    
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
@available(*, deprecated) @inlinable public func setSourceColor4ub(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
    
    cogl_set_source_color4ub(red, green, blue, alpha)
    
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
@available(*, deprecated) @inlinable public func setSource<TextureT: TextureProtocol>(texture: TextureT) {
    
    cogl_set_source_texture(texture.texture_ptr)
    
}




/// Replaces the current viewport with the given values.
///
/// **set_viewport is deprecated:**
/// Use cogl_framebuffer_set_viewport() instead
@available(*, deprecated) @inlinable public func setViewport(x: Int, y: Int, width: Int, height: Int) {
    
    cogl_set_viewport(gint(x), gint(y), gint(width), gint(height))
    
}




/// Compiles the shader, no return value, but the shader is now ready
/// for linking into a program. Note that calling this function is
/// optional. If it is not called then the shader will be automatically
/// compiled when it is linked.
///
/// **shader_compile is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func shaderCompile(handle: CoglHandle) {
    
    cogl_shader_compile(handle)
    
}




/// Retrieves the information log for a coglobject, can be used in conjunction
/// with `cogl_shader_get_parameteriv()` to retrieve the compiler warnings/error
/// messages that caused a shader to not compile correctly, mainly useful for
/// debugging purposes.
///
/// **shader_get_info_log is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func shaderGetInfoLog(handle: CoglHandle) -> String! {
    let result = cogl_shader_get_info_log(handle)
    guard let rv = result.map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Retrieves the type of a shader `CoglHandle`
///
/// **shader_get_type is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func shaderGetType(handle: CoglHandle) -> CoglShaderType {
    let result = cogl_shader_get_type(handle)
    let rv = result
    return rv
}




/// Retrieves whether a shader `CoglHandle` has been compiled
///
/// **shader_is_compiled is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func shaderIsCompiled(handle: CoglHandle) -> CoglBool {
    let result = cogl_shader_is_compiled(handle)
    let rv = result
    return rv
}




/// Add an extra reference to a shader.
///
/// **shader_ref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func shaderRef(handle: CoglHandle) -> CoglHandle! {
    let result = cogl_shader_ref(handle)
    let rv = result
    return rv
}




/// Replaces the current source associated with a shader with a new
/// one.
/// 
/// Please see &lt;link
/// linkend="cogl-Shaders-and-Programmable-Pipeline.description"&gt;above&lt;/link&gt;
/// for a description of the recommended format for the shader code.
///
/// **shader_source is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func shaderSource(shader: CoglHandle, source: UnsafePointer<CChar>!) {
    
    cogl_shader_source(shader, source)
    
}




/// Removes a reference to a shader. If it was the last reference the
/// shader object will be destroyed.
///
/// **shader_unref is deprecated:**
/// Use #CoglSnippet api
@available(*, deprecated) @inlinable public func shaderUnref(handle: CoglHandle) {
    
    cogl_shader_unref(handle)
    
}




/// Very fast fixed point implementation of square root for integers.
/// 
/// This function is at least 6x faster than clib `sqrt()` on x86, and (this is
/// not a typo!) about 500x faster on ARM without FPU. It's error is less than
/// 5% for arguments smaller than `COGL_SQRTI_ARG_5_PERCENT` and less than 10%
/// for narguments smaller than `COGL_SQRTI_ARG_10_PERCENT`. The maximum
/// argument that can be passed to this function is `COGL_SQRTI_ARG_MAX`.
@inlinable public func sqrti(x: Int) -> Int {
    let result = cogl_sqrti(gint(x))
    let rv = Int(result)
    return rv
}




@inlinable public func textureErrorQuark() -> UInt32 {
    let result = cogl_texture_error_quark()
    let rv = result
    return rv
}




/// Increment the reference count for a cogl texture.
///
/// **texture_ref is deprecated:**
/// Use cogl_object_ref() instead
@available(*, deprecated) @inlinable public func textureRef(texture: UnsafeMutableRawPointer? = nil) -> UnsafeMutableRawPointer? {
    let result = cogl_texture_ref(texture)
    guard let rv = result else { return nil }
    return rv
}




/// Decrement the reference count for a cogl texture.
///
/// **texture_unref is deprecated:**
/// Use cogl_object_unref() instead
@available(*, deprecated) @inlinable public func textureUnref(texture: UnsafeMutableRawPointer? = nil) {
    
    cogl_texture_unref(texture)
    
}




/// Multiplies the current model-view matrix by the given matrix.
///
/// **transform is deprecated:**
/// Use cogl_framebuffer_transform() instead
@available(*, deprecated) @inlinable public func transform<MatrixT: MatrixProtocol>(matrix: MatrixT) {
    
    cogl_transform(matrix.matrix_ptr)
    
}




/// Multiplies the current model-view matrix by one that translates the
/// model along all three axes according to the given values.
///
/// **translate is deprecated:**
/// Use cogl_framebuffer_translate() instead
@available(*, deprecated) @inlinable public func translate(x: CFloat, y: CFloat, z: CFloat) {
    
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
/// &lt;note&gt;If you are interleving attributes it is assumed that each interleaved
/// attribute starts no farther than +- stride bytes from the other attributes
/// it is interleved with. I.e. this is ok:
/// &lt;programlisting&gt;
/// |-0-0-0-0-0-0-0-0-0-0|
/// &lt;/programlisting&gt;
/// This is not ok:
/// &lt;programlisting&gt;
/// |- - - - -0-0-0-0-0-0 0 0 0 0|
/// &lt;/programlisting&gt;
/// (Though you can have multiple groups of interleved attributes)&lt;/note&gt;
///
/// **vertex_buffer_add is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferAdd(handle: CoglHandle, attributeName: UnsafePointer<CChar>!, nComponents: UInt8, type: CoglAttributeType, normalized: CoglBool, stride: UInt16, pointer: UnsafeMutableRawPointer? = nil) {
    
    cogl_vertex_buffer_add(handle, attributeName, nComponents, type, normalized, stride, pointer)
    
}




/// Deletes an attribute from a buffer. You will need to call
/// `cogl_vertex_buffer_submit()` or issue a draw call to commit this
/// change to the GPU.
///
/// **vertex_buffer_delete is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferDelete(handle: CoglHandle, attributeName: UnsafePointer<CChar>!) {
    
    cogl_vertex_buffer_delete(handle, attributeName)
    
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
@available(*, deprecated) @inlinable public func vertexBufferDisable(handle: CoglHandle, attributeName: UnsafePointer<CChar>!) {
    
    cogl_vertex_buffer_disable(handle, attributeName)
    
}




/// Allows you to draw geometry using all or a subset of the
/// vertices in a vertex buffer.
/// 
/// Any un-submitted attribute changes are automatically submitted before
/// drawing.
///
/// **vertex_buffer_draw is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferDraw(handle: CoglHandle, mode: CoglVerticesMode, first: Int, count: Int) {
    
    cogl_vertex_buffer_draw(handle, mode, gint(first), gint(count))
    
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
@available(*, deprecated) @inlinable public func vertexBufferDrawElements(handle: CoglHandle, mode: CoglVerticesMode, indices: CoglHandle, minIndex: Int, maxIndex: Int, indicesOffset: Int, count: Int) {
    
    cogl_vertex_buffer_draw_elements(handle, mode, indices, gint(minIndex), gint(maxIndex), gint(indicesOffset), gint(count))
    
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
@available(*, deprecated) @inlinable public func vertexBufferEnable(handle: CoglHandle, attributeName: UnsafePointer<CChar>!) {
    
    cogl_vertex_buffer_enable(handle, attributeName)
    
}




/// Retrieves the number of vertices that `handle` represents
///
/// **vertex_buffer_get_n_vertices is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferGetNVertices(handle: CoglHandle) -> Int {
    let result = cogl_vertex_buffer_get_n_vertices(handle)
    let rv = Int(result)
    return rv
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
/// in &lt;xref linkend="quad-indices-order"/&gt; then you can request 6
/// indices to render two triangles like those shown in &lt;xref
/// linkend="quad-indices-triangles"/&gt;.
/// 
/// &lt;figure id="quad-indices-order"&gt;
///   &lt;title&gt;Example of vertices submitted to form a quad&lt;/title&gt;
///   &lt;graphic fileref="quad-indices-order.png" format="PNG"/&gt;
/// &lt;/figure&gt;
/// 
/// &lt;figure id="quad-indices-triangles"&gt;
///   &lt;title&gt;Illustration of the triangle indices that will be generated&lt;/title&gt;
///   &lt;graphic fileref="quad-indices-triangles.png" format="PNG"/&gt;
/// &lt;/figure&gt;
///
/// **vertex_buffer_indices_get_for_quads is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferIndicesGetForQuads(nIndices: Int) -> CoglHandle! {
    let result = cogl_vertex_buffer_indices_get_for_quads(guint(nIndices))
    let rv = result
    return rv
}




/// Queries back the data type used for the given indices
///
/// **vertex_buffer_indices_get_type is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferIndicesGetType(indices: CoglHandle) -> CoglIndicesType {
    let result = cogl_vertex_buffer_indices_get_type(indices)
    let rv = result
    return rv
}




/// Depending on how much geometry you are submitting it can be worthwhile
/// optimizing the number of redundant vertices you submit. Using an index
/// array allows you to reference vertices multiple times, for example
/// during triangle strips.
///
/// **vertex_buffer_indices_new is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferIndicesNew(indicesType: CoglIndicesType, indicesArray: UnsafeMutableRawPointer!, indicesLen: Int) -> CoglHandle! {
    let result = cogl_vertex_buffer_indices_new(indicesType, indicesArray, gint(indicesLen))
    let rv = result
    return rv
}




/// Creates a new vertex buffer that you can use to add attributes.
///
/// **vertex_buffer_new is deprecated:**
/// Use the #CoglPrimitive api instead
@available(*, deprecated) @inlinable public func vertexBufferNew(nVertices: Int) -> CoglHandle! {
    let result = cogl_vertex_buffer_new(guint(nVertices))
    let rv = result
    return rv
}




/// Increment the reference count for a vertex buffer
///
/// **vertex_buffer_ref is deprecated:**
/// Use cogl_object_ref() instead
@available(*, deprecated) @inlinable public func vertexBufferRef(handle: CoglHandle) -> CoglHandle! {
    let result = cogl_vertex_buffer_ref(handle)
    let rv = result
    return rv
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
@available(*, deprecated) @inlinable public func vertexBufferSubmit(handle: CoglHandle) {
    
    cogl_vertex_buffer_submit(handle)
    
}




/// Decrement the reference count for a vertex buffer
///
/// **vertex_buffer_unref is deprecated:**
/// Use cogl_object_unref() instead
@available(*, deprecated) @inlinable public func vertexBufferUnref(handle: CoglHandle) {
    
    cogl_vertex_buffer_unref(handle)
    
}




/// Replace the current viewport with the given values.
///
/// **viewport is deprecated:**
/// Use cogl_framebuffer_set_viewport instead
@available(*, deprecated) @inlinable public func viewport(width: Int, height: Int) {
    
    cogl_viewport(guint(width), guint(height))
    
}


