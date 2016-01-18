module G = Graphics;;
module U = Unix;;
module L = List;;
module R = Random;;

let init_graph = 
  G.open_graph "";
  G.set_window_title "ocaml-graphics";;

let colors = [G.black; G.white;  G.red;  G.green;  G.blue;  G.yellow;  G.cyan;  G.magenta];;

init_graph;;

while true do
  for i=0 to pred (L.length colors) do
    let col = (L.nth colors i) in
      G.set_color col;
      G.draw_rect (Random.int (G.size_x ())) (Random.int (G.size_y ())) (Random.int (G.size_x ())) (Random.int (G.size_x ()));
      G.synchronize;
      print_endline (string_of_int col);
    done
  done;;
