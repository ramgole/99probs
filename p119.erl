-module(p119).
-export([rotate/2]).
-include_lib("eunit/include/eunit.hrl").

rotate([H|T], 0) -> [H|T];
rotate(L, K) when K < 0 -> rotate(L, length(L)+K);
rotate([H|T], K) when K > 0 -> rotate(T++[H], K-1).


rotate_test() ->
  ?assertEqual([c,d,e,f,g,h,i,j,k,a,b],rotate([a,b,c,d,e,f,g,h,i,j,k], 2)),
  ?assertEqual([j,k,a,b,c,d,e,f,g,h,i],rotate([a,b,c,d,e,f,g,h,i,j,k], -2)).

