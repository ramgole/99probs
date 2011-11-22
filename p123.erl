-module(p123).
-export([rnd_select/2]).
-include_lib("eunit/include/eunit.hrl").
-import(p120, [remove_at/2]).

rnd_select(L, K) -> rnd_select(L, K, []).

rnd_select(_, 0, Acc) -> Acc;
rnd_select(L, K, Acc) ->
	{R, L2} = remove_at(L, random:uniform(length(L))),
	rnd_select(L2, K-1, [R|Acc]).



rnd_select_test() ->
	?assertEqual(2, length(rnd_select([a,b,c,d,e,f,g,h,i,j,k], 2))),
	?assertEqual(3, length(rnd_select([a,b,c,d,e,f,g,h,i,j,k], 3))).

