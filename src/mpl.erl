-module(mpl).
-export([mpl/1]).

mpl(List) ->
    {PositiveList, NegativeList, Zeros, Ones} = extract_positive_negative_zeroes_and_ones(List),
    MaxPairPositive = max_of_positive(lists:reverse(lists:sort(PositiveList))),
    MaxPairNegativesWithZeroes = max_of_negative_and_zeroes(lists:sort(NegativeList), Zeros),
    MaxPairPositive + MaxPairNegativesWithZeroes + lists:sum(Ones).


extract_positive_negative_zeroes_and_ones(List) ->
    {PositiveList, Rest} = lists:partition(fun(E) -> E >= 2 end, List),
    {NegativeList, ZerosAndOnes} = lists:partition(fun(E) -> E < 0 end, Rest),
    {Zeros, Ones} = lists:partition(fun(E) -> E =:= 0 end, ZerosAndOnes),
    {PositiveList, NegativeList, Zeros, Ones}.

max_of_positive([E1,E2|Rest]) ->
    E1*E2 + max_of_positive(Rest);
max_of_positive([E]) ->
    E;
max_of_positive([]) ->
    0.

max_of_negative_and_zeroes([E1,E2|Rest], Zeroes) ->
    E1*E2 + max_of_negative_and_zeroes(Rest, Zeroes);
max_of_negative_and_zeroes([E],[]) ->
    E;
max_of_negative_and_zeroes(_,_) ->
    0.
