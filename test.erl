-module(test).

-export([main/0]).

main() ->
    ok = foo(bar()).

-spec foo(1|2) -> ok.
foo(1) ->
    ok.

bar() ->
    R = io:get_line(">>"),
    Res = case R of
              "ok" -> 1;
              _ -> 0
          end,
    Res.
