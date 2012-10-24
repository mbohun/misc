/**
 * Name: glsl
 * Description: GLSL, OpenGL Shading Language.
 * Author: hacklberry@hacklberry.net
 */

glsl_type_re =/\b(attribute|bool|const|float|in(|out|t)|vec(2|3|4)|ivec(2|3|4)|bvec(2|3|4)|mat(2|3|4)|out|sampler(1D|2D|3D|Cube|1DShadow|2DShadow)|uniform|v(arying|oid))\b/;

/* The super state of all C highlightings. */
state GLSLHighlight extends Highlight
{
  BEGIN {
    if (verbose_highlighting)
      verbose_re = /(==|!=)/;
    else
      verbose_re = 0;
  }

  verbose_re {
    match = $0;
    if (strcmp (match, "==") == 0)
      str = "equiv";
    else if (strcmp (match, "!=") == 0)
      str = "ne";
    else
      str = 0;

    if (!str || !language_symbol (str))
      language_print ($0);
  }
}

/*
 * The highlight entry for C highlightings.  It is a bit ugly to
 * re-implement the BEGIN and END because they must be kept in sync
 * with the code in the `HighlightEntry'.  But, since we don't support
 * multiple heritance, we have no choice.
 */
state GLSLHighlightEntry extends GLSLHighlight
{
  BEGIN {
    if (highlight_entry_nesting++ == 0)
      header ();
  }
  END {
    if (--highlight_entry_nesting == 0)
      trailer ();
  }
}

/*
 * We inherit the GLSL state from the C state.  This gives us all the
 * defaults, etc.  All we have to do here is to overwrite things that
 * are not implemented, or are broken.
 */
state glsl extends GLSLHighlightEntry
{

  BEGIN {
    /* See `c.st' for the comments on this one. */
    type_re = glsl_type_re;
  }

  /* One line comments. */
  /\/\// {
    comment_face (true);
    language_print ($0);
    call (eat_one_line);
    comment_face (false);
  }

  /\b(break|continue|d(o|iscard)|else|if|return|while)\b/ {
    keyword_face (true);
    language_print ($0);
    keyword_face (false);
  }

  /* gl_ Keywords.
  */
/\b(gl_(Back(Color|Light(ModelProduct|Product)|Material|SecondaryColor)|Clip(Plane|Vertex)|Color|DepthRange(|Parameters)|EyePlane(R|Q|S|T)|Fog(|FragCoord|Parameters)|Frag(Color|Coord|Depth)|Front(Color|Facing|Material|SecondaryColor|Light(ModelProduct|Product))|Light(Model(|Parameters|Products)|Products|Source(|Parameters))|MaterialParameters|Max(ClipPlanes|CombinedTextureImageUnits|FragmentUniformComponents|Lights|Texture(Coords|ImageUnits|Units))|MaxVaryingFloats|MaxVertex(Attribs|UniformComponents|TextureImageUnits)|ModelView(Matrix|ProjectionMatrix)|MultiTexCoord(0|1|2)|Normal(|Matrix|Scale)|ObjectPlane(R|Q|S|T)|Point(|Parameters|Size)|Position|ProjectionMatrix|SecondaryColor|Text(Coord|ureEnvColor|ureMatrix)|Vertex))\b/ {
    keyword_face (true);
    language_print ($0);
    keyword_face (false);
  }

  /* GLSL build in functions
   */
  /\b(a(sin|cos|tan|bs|ny|ll)|c(lamp|eil|os|ross)|d(Fdx|Fdy|egrees|istance|ot)|e(qual|xp2)|f(aceforward|loor|ract|transform|width)|greaterThan(|Equal)|inversesqrt|l(ength|og2)|lessThan(|Equal)|m(ain|atrixcompmult|ax|in|ix|od)|normalize|noise(1|2|3|4)|not(|Equal)|pow|r(adians|eflect)|s(ign|in|moothstep|qrt|tep)|shadow(1D|2D|1DProj|2DProj|1DLod|2DLod|1DProjLod|2DProjLod)|tan|texture(1D|1DProj|1DLod|1DProjLod|2D|2DProj|2DLod|2DProjLod|3D|3DProj|3DLod|3DProjLod|Cube|CubeLod))\b/{
   function_name_face (true);
    language_print ($0);
    function_name_face (false);
  }

  /* Types. */
  glsl_type_re {
    type_face (true);
    language_print ($0);
    type_face (false);
  }

}
/*
Local variables:
mode: glsl
End:
*/
