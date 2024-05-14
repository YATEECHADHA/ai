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
#8.
