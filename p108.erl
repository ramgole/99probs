-module(p108).
-export([compress/1]).
-include_lib("eunit/include/eunit.hrl").

compress([]) -> [];
compress([H|[]]) -> [H];
compress([H,H|[]]) -> [H];
compress([H,H|T]) -> compress([H|T]);
compress([A,B|T]) -> [A|compress([B|T])].

compress_test() ->
  ?assertEqual([], compress([])),
  ?assertEqual([1], compress([1])),
  ?assertEqual([1], compress([1,1])),
  ?assertEqual([3,1], compress([3,3,1])),
  ?assertEqual([a,b,c,a,d,e], compress([a,a,a,a,b,c,c,a,a,d,e,e,e])).
