-module(p114).
-export([dupli/1]).
-include_lib("eunit/include/eunit.hrl").

dupli([]) -> [];
dupli([H|T]) -> [H,H|dupli(T)].

dupli_test() ->
  ?assertEqual([], dupli([])),
  ?assertEqual([1,1], dupli([1])),
  ?assertEqual([2,2,1,1], dupli([2,1])),
  ?assertEqual([2,2,2,2,1,1], dupli([2,2,1])),
  ?assertEqual([a,a,b,b,c,c,c,c,d,d],dupli([a,b,c,c,d])).
