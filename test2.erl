-module(test2).

-export([main/0]).

main() ->
    ok = foo(bar(1)),
    ok = foo(bar(2)).

foo(foo) ->
    ok.

bar(Val) ->
    Res = case Val of
              1 -> foo;
              _ -> bar
          end,
    Res.
