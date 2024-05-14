#1.Write a Prolog program to calculate the sum of two numbers.
sum(X, Y) :- S is X + Y, 
            write(S),
            nl.
#2. Write a Prolog program to implement max(X, Y, M) so that M is the maximum of 2 numbers X and Y.
max(X, Y) :- X == Y -> (format('X and Y are Equal'), nl);
             X > Y -> (Z is X, write(Z), nl);
             X < Y -> (Z is Y, write(Z), nl).
#3. Write a program in Prolog to implement factorial (N, F) where F represents the factorial of N.
factorial(0, 1). 
factorial(N, F) :- N > 0, N1 is N - 1,
                  factorial(N1, F1), 
                  F is N * F1.
                
#4.Write a program in Prolog to implement generate_fib(N,T) where T represents the Nth term of the fibonacci series.
generate_fib(0, 1). 
generate_fib(1, 1).
 generate_fib(N, T) :- N1 is N - 1,
                    generate_fib(N1, T1),
                    N2 is N - 2, 
                    generate_fib(N2, T2), 
                    T is T1 + T2.
#5.Write a Prolog program to implement GCD of two numbers.
gcd(X, Y) :- X == 0 -> write(Y);
             Y == 0 -> write(X);
             X == Y -> write(X);
            X > Y -> (Z is X - Y, gcd(Z, Y)); 
            Y > X -> (C is Y - X, gcd(X, C)).
#6.Write a Prolog program to implement power(Num, Pow, Ans): where Num is raised to the power Pow to get Ans.
power(0, Power, 0) :- Power > 0.
power(Num, 0, 1) :- Num > 0.
power(Num, Power, Ans) :- Num > 0, Power > 0, 
                       P1 is Power - 1,
                       power(Num, P1, A1), 
                      Ans is A1 * Num.
#7.Write a Prolog program to implement multi(N1, N2, R): where N1 and N2 denotes the numbers to be multiplied and R represents the result.
multi(N, 1, N).
 multi(N1, N2, R) :- T is N2 - 1, 
                     multi(N1, T, Y),
                     R is Y + N1.
#8.Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.
 memb(X, [X|_]) :- !.
 memb(X, [_|L]) :- memb(X, L).
#9. Write a Prolog program to implement conc(L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.
conc([], L, L) :- !.
conc([H|T], L2, [H|R]) :- conc(T, L2, R).
#10.Write a Prolog program to implement reverse(L, R) where List L is the original list, and List R is the reversed list.
conc([], L, L) :- !.
conc([H|T], L2, [H|R]) :- conc(T, L2, R). 
reverse([], []) :- !. reverse([H|T], R) :- reverse(T, RT), 
                      conc(RT, [H], R).
#11. Write a program in Prolog to implement palindrome(L) which checks whether a list L is a palindrome or not.
Code conc([], L, L) :- !.
conc([H|T], L2, [H|R]) :- conc(T, L2, R).

reverse([], []) :- !. 
reverse([H|T], R) :- reverse(T, RT),
                     conc(RT, [H], R).
palindrome(L) :- reverse(L, L).
#12. Write a Prolog program to implement sumlist(L, S) so that S is the sum of a given list L.
sumlist([], 0). sumlist([H|T], S) :- sumlist(T, S1), 
                                     S is H + S1.
#13.Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.
evenlength([]) :- !.
evenlength([_|T]) :- oddlength(T). 

oddlength([_]) :- !. 
oddlength([_|T]) :- evenlength(T).

#14.Write a Prolog program to implement nth_element(N, L, X) where N is the desired position, L is a list and X represents the Nth element of L.
nth_element(1, [H|T], H) :- !.
nth_element(N, [H|T], X) :- N1 is N - 1,
                            nth_element(N1, T, X).
#15.Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list.
max(X, Y, Z) :- X > Y, Z is X.
max(X, Y, Z) :- X < Y, Z is Y.

maxlist([], 0) :- !.
maxlist([R], R) :- !.
maxlist([H|T], R) :- maxlist(T, R1),
                     max(H, R1, R), !.

#16.Write a Prolog program to implement insert_nth(I, N, L, R) that inserts an item I into Nth position of list L to generate a list R.
insert_nth(E, 1, L, [E|L]) :- !. 
insert_nth(E, P, [H|L], [H|R]) :- P1 is P - 1, 
                                  insert_nth(E, P1, L, R).

#17.Write a Prolog program to implement delete_nth(N, L, R) that removes the element on Nth position from a list L to generate a list R.
delete_nth(1, [_|L], L) :- !. 
delete_nth(P, [H|L], [H|R]) :- P1 is P - 1, 
                               delete_nth(P1, L, R).
#18.Write a program in Prolog to implement merge(L1, L2, L3) where L1 is first ordered list and L2 is second ordered list and L3 represents the merged list.
merge(X, [], X).
merge([], Y, Y). 
merge([X|X1], [Y|Y1], [X|Z]) :- X < Y, !, merge(X1, [Y|Y1], Z). 
merge([X|X1], [Y|Y1], [X,Y|Z]) :- X == Y, !, merge(X1, Y1, Z).
merge([X|X1], [Y|Y1], [Y|Z]) :- X > Y, !, merge([X|X1], Y1, Z).










