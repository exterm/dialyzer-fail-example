-module(good_test).

-export([main/0]).

main() ->
    ok = foo(bar()).

foo(0) ->
    ok;
foo(1) ->
    also_ok;
% should trigger a dialyzer warning as this case can not occur
foo(2) ->
    would_be_ok_but_can_not_happen.

bar() ->
    R = io:get_line(">>"),
    Res = case R of
              "ok" -> 1;
              _ -> 0
          end,
    Res.
