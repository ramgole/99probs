-module(p117).
-export([split/2]).
-include_lib("eunit/include/eunit.hrl").

split([],_) -> [[],[]];
split([H|T],1) -> [[H],T];
split([H|T], K) ->
  [H1,T1] = split(T, K-1),
  [[H|H1],T1].

split_test() ->
  ?assertEqual([[],[]], split([],4)),
  ?assertEqual([[1],[]], split([1],2)),
  ?assertEqual([[2,1],[]], split([2,1],2)),
  ?assertEqual([[2,2,1],[]], split([2,2,1],3)),
  ?assertEqual([[a,b],[c,c,d]], split([a,b,c,c,d],2)),
  ?assertEqual([[a,b,c],[c,d]], split([a,b,c,c,d],3)),
  ?assertEqual([[a,b,c],[d,e,f,g,h,i,k]], split([a,b,c,d,e,f,g,h,i,k],3)).
