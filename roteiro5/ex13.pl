/*
?- 12 is 2*6.
true.

?- 14 =/= 2*6.
ERROR: Syntax error: Operator expected
ERROR: 14
ERROR: ** here **
ERROR:  =/= 2*6 . 
?- 14 = 2*7.
false.

?- 14 == 2*7.
false.

?- 14 \== 2*7.
true.

?- 14 =:= 2*7.
true.

?- [1,2,3|[d,e]] == [1,2,3,d,e].
true.

?- 2+3 == 3+2.
false.

?- 2+3 == 3+2.
false.

?- 2+3 == 3+2.
false.

?- p == 'p'.
true.

?- p =\= 'p'.
ERROR: Arithmetic: `p' is not a function
ERROR: In:
ERROR:   [20] throw(error(type_error(evaluable,p),_4490))
ERROR:   [17] arithmetic:expand_function(p,_4528,_4530) at /usr/lib/swi-prolog/library/arithmetic.pl:175
ERROR:   [16] arithmetic:math_goal_expansion(p=\=p,_4562) at /usr/lib/swi-prolog/library/arithmetic.pl:154
ERROR:   [14] '$expand':call_goal_expansion([system- ...],p=\=p,_4602,_4604,_4606) at /usr/lib/swi-prolog/boot/expand.pl:863
ERROR:   [13] '$expand':expand_goal(p=\=p,_4656,_4658,_4660,user,[system- ...],_4666) at /usr/lib/swi-prolog/boot/expand.pl:524
ERROR:   [12] setup_call_catcher_cleanup('$expand':'$set_source_module'(user,user),'$expand':expand_goal(...,_4738,_4740,_4742,user,...,_4748),_4712,'$expand':'$set_source_module'(user)) at /usr/lib/swi-prolog/boot/init.pl:443
ERROR:    [8] '$expand':expand_goal(user:(p=\=p),_4790,user:_4812,_4794) at /usr/lib/swi-prolog/boot/expand.pl:458
ERROR:    [6] setup_call_catcher_cleanup('$toplevel':'$set_source_module'(user,user),'$toplevel':expand_goal(...,...),_4840,'$toplevel':'$set_source_module'(user)) at /usr/lib/swi-prolog/boot/init.pl:443
ERROR: 
ERROR: Note: some frames are missing due to last-call optimization.
ERROR: Re-run your program in debug mode (:- debug.) to get more detail.
^  Call: (14) call('$expand':'$set_source_module'(user)) ? creep
^  Exit: (14) call('$expand':'$set_source_module'(user)) ? creep
^  Exception: (6) setup_call_catcher_cleanup('$toplevel':'$set_source_module'(user, user), '$toplevel':expand_goal(user:(p=\=p), _3360), _4898, '$toplevel':'$set_source_module'(user)) ? creep
^  Call: (8) call('$toplevel':'$set_source_module'(user)) ? creep
^  Exit: (8) call('$toplevel':'$set_source_module'(user)) ? creep
?- vicente == VAR.
false.

?- vicente=VAR, VAR==vicente.
VAR = vicente.

*/
