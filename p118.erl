-module(p118).
-export([slice/3]).
-include_lib("eunit/include/eunit.hrl").

slice([H|_], 1, 1) -> [H];
slice([H|T], 1, J) -> [H | slice(T,1,J-1)];
slice([_|T], I, J) -> slice(T, I-1, J-1).



slice_test() ->
  ?assertEqual([2],slice([1,2,3], 2, 2)),
  ?assertEqual([2,3],slice([1,2,3], 2, 3)),
  ?assertEqual([c,d,e,f,g],slice([a,b,c,d,e,f,g,h,i,j,k], 3, 7)).

