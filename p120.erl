-module(p120).
-export([remove_at/2]).
-include_lib("eunit/include/eunit.hrl").

remove_at([H|T], 1) -> {H, T};
remove_at([H|T], K) -> 
	{R, T2} = remove_at(T, K-1),
	{R, [H|T2]}.

remove_at_test() ->
	?assertEqual({b, [a,c,d,e,f,g,h,i,j,k]}, remove_at([a,b,c,d,e,f,g,h,i,j,k], 2)),
	?assertEqual({b, [a,c,d]}, remove_at([a,b,c,d], 2)).

