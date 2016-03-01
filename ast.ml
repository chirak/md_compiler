type markdown = (tag list)

and tag =
  | Tag of tagtype * text
and tagtype =
  | H1 | H2 | H3 | H4 | H5 | H6
and text = string

let string_to_tagtype s =
  match s with
  | "H1" -> H1 | "H2" -> H2 | "H3" -> H3
  | "H4" -> H4 | "H5" -> H5 | "H6" -> H6
  | _ -> H1 (* should throw error here *)
