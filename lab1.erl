-module(lab1).
-export([fac/1, fib/1, member/2, cost/1, member_if/2, cost_if/1]).

fac(0)->1;
fac(1)->1;
fac(N)->N * fac(N - 1).

fib(1)->0;
fib(2)->1;
fib(N)->fib(N - 1) + fib( N - 2).

member([], _)->false;
member([H|_], H)->true;
member([H|T], M)->member(T, M).

price(apple)->50;
price(milk)->60;
price(bread)->30;
price(beef)->300;
price(pork)->250.

cost(L)->cost(L, 0).
cost([], M)->M;
cost([{G, C}|T], M)->cost(T, M + price(G) * C).

member_if([], _)->false;
member_if([H|T], M)->
	if
		H == M ->
			true;
		true ->
			member_if(T, M)
	end.

price_if(P)->
	case P of
		apple -> 50;
		milk -> 60;
		bread -> 30;
		beef -> 300;
		pork -> 250
	end.

cost_if(L)->cost_if(L, 0).
cost_if([], M)->M;
cost_if([{G, C}|T], M)->cost_if(T, M + price_if(G) * C).
