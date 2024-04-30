btech_ml_subject(btech,ml,machinelearning,mlba,cb,deeplearning,computervision).
mtech_ml_subject(mtech,ml,'machin learning',mlba,'adv
ml',deeplearning,computervision,cb).
btech_ml_subject_dk_la(btech,ml,machinelearning,mlba,cb,computervision).
%mtech_ml_subject_dk_la(mtech,'machin learning',mlba,'adv ml').

ai_subject(ai,artifical,python,mlba).
ai_subject_dk_pb('discrete math',probablity,python,mlba).

btech_mobile_subject(btech,mobile,android,'network security','image processing','data security').
mtech_mobile_subject(mtech,mobilecomp,'adv android','network security').
btech_cloud_computing(btech,'cloud computing',mlba).
btech_cloud_computing_dk_sp(btech,'adv cloud computing','system programming').
mtech_cloud_computing_dk_sp(mtech,sp,mlba).

mtech_cloud_computing(mtech,'adv cloudcomputing',machinelearning,mlba).
btech_ece(btech,'vlsi specilization','machine learning').
mtech_ece(mtech,'adv ml',vlsi,ai,'general ece specalization').
code_btech(['java','python','c++','dsa']).
code_mtech(['java','python','c++']).
adv_algo_mtech(['grad','adv algo']).
mtech_bml(['probablity','statistics','ml']).
btech_bml(['statistics','ml','linear algebra']).
aomml_btech(['probablity','numarical method','calculus']).
aomml_mtech(['numarical method','calculus','ml']).



go:-


   consult('C:/Users/DELL/Downloads/ranit_recommend.pl'),

    interest(Interest),
    checkfor(Interest).

%------------------------------------------------------------
checkfor(ml):-

   % write('You MTECH or BTECH student press mtech for mtech press  btech for btech'),nl,
   % read(Class),
   % write("\n do you know probablity if yes press y"),
    ml_prob(Y1),
    ml_cgpa(Y2),
    ml_choice3(Y3),
    ml_choice4(Y4),
    ml_choice5(Y5),

   % write(Y1),
   % write("\n do you know linear algebra if yes press y or press n\n"),
   % read(Y2),
   % write("\n do you know python if yes press y\n"),
   % read(Y3),
    abcml(Y1,Y2,Y3,Y4,Y5).
    abcml(Y1,Y2,Y3,Y4,Y5):-(Y1==yes,Y2==yes,Y3==yes,Y4==yes,Y5==yes->
      select01(btech,Y1);
      select0(mtech,Y1,Y2)).








    select01(btech,Y1):-Y1==yes,write("bellow subjects you can choose\n"),
    btech_ml_subject_dk_la(btech,ml,X1,X2,X3,X4),
    write(X1),nl,
    write(X2),nl,
    write(X3),nl,
    write(X4),nl,
    write("do you want to explore more ? if yes press  y or press n\n");

    write("\nyou are not eligible for this specilization\n").


   select0(mtech,Y1,Y2):-(Y1==yes,Y2==yes,write("bellow subjects you can choose\n"),
   btech_ml_subject(btech,ml,X1,X2,X3,_,_),
    write(X1),nl,
    write(X2),nl,
    write(X3),nl;
    write("\nyou are not eligible for this specilization\n")).


%-----------------------------------------------------------




checkfor(mobile):-

    mobile_android(Y1),
    mobile_cgpa(Y2),
    mobile_choice3(Y3),
    mobile_choice4(Y4),

    mobile_abc(Y1,Y2,Y3,Y4).
    mobile_abc(Y1,Y2,Y3,Y4):-(Y1==yes,Y2==yes,Y3==yes,Y4==yes->

    select20(btech,Y1,Y2,Y3);
    select21(mtech,Y1,Y2,Y3)).


    select20(btech,Y1,Y2,Y3):- Y1==yes,Y2==yes,
    write("\nbellow subjects you can choose\n"),
    btech_mobile_subject(btech,X1,X2,X3,X4,X5),
    write(X1),nl,
    write(X2),nl,
    write(X3),nl,
    write(X4),nl,
    write(X5),nl;

    write("you are not eligible for this subject\n").




    select21(mtech,Y1,Y2,Y3):-Y1==yes,Y2==yes,
    write("\nbellow subjects you can choose"),
    mtech_mobile_subject(mtech,X1,X2,X3),
    write(X1),nl,
    write(X2),nl,
    write(X3);


    write("you are not eligible for this subject\n").

%-----------------------------------------------------------------


checkfor(general):-
    write("\nbellow subjects you can choose"),
    write("\n basic java"),
    write("\n programming in c"),
    write("\ndiscrete math"),

    write("\ndo you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res).
%--------------------------------------------------------------------




checkfor(ai):-
    %write("\n do you know probablity if yes press y"),
    ai_ml(Y1),
    ai_math(Y2),
    ai_choice3(Y3),
    ai_choice4(Y4),
    ai_choice5(Y5),
    % write("\n do you know basic math if yes press y"),
    % read(Y2),

    abcai(Y1,Y2,Y3,Y4,Y5).
    abcai(Y1,Y2,Y3,Y4,Y5):-(Y1==yes,Y2==yes,Y3==yes,Y4==yes,Y5==yes->
      select12(Y1,Y2); select1(Y2,Y2)).


    select12(Y1,Y2):-(Y1==yes,Y2==no,
    write("\n bellow subjects you can choose\n"),nl,
    ai_subject_dk_pb(X1,X2,X3,X4),
    write(X1),nl,
    write(X2),nl,
    write(X3),nl,
    write(X4),nl;
    write("\nyou are not eligible\n")).

    write("\ndo you want to explore more ? if yes press  y or press n\n").

    select1(Y2,Y3):-(Y2==yes,Y3==yes,
    write("\nbellow subjects you can choose\n"),nl,
    ai_subject(ai,X,Y,Z),nl,
    write(X),nl,
    write(Y),nl,
    write(Z),nl;


    write("you are not eligible for this course\n")).

%---------------------------------------------------------------------




checkfor(cloud):-

    cloud_sp(Y1),
    cloud_cgpa(Y2),
    cloud_choice3(Y3),
    cloud_choice4(Y4),
    abcd(Y1,Y2,Y3,Y4).
    abcd(Y1,Y2,Y3,Y4):-Y1==yes,Y2==yes,Y3==yes->(write("you can take below subjects\n"),
    select3(Y2,Y1));
    (select3ml(Y2,Y1)).



    select3ml(Y2,Y1):-Y1==no,Y2==yes,
    mtech_cloud_computing_dk_sp(mtech,X1,X2),
    write("\nbellow subjects you can choose\n"),nl,
    write(X1),nl,
    write(X2),nl;

    write("you are not eligible for this course\n").



    select3(Y1,Y2):-
    btech_cloud_computing(btech,X1,X2),
    write(X1),nl,
    write(X2),nl;


    write("you are not eligible for this course\n").




% ------------------------------------------------------------------------




checkfor(ece):-
    write('You MTECH or BTECH student press mtech for mtech press  btech for btech'),nl,
    read(Class),
    write("\n do you know ml if yes press y or press n"),
    read(Y1),
    write("\n do you know discrete math if yes press y or press n\n"),
    read(Y2),
    write("\n have you done any previous study on ece if yes press y or press n \n"),
    read(Y3),

      ( Class==btech->
    select4(btech,Y1,Y2,Y3);
    select4(mtech,Y1,Y2,Y3)).


   select4(btech,Y1,Y2,Y3):-Y1==y,Y2==y,Y3==y,write("bellow subjects you can choose\n"),
    btech_ece(btech,X1,X2),nl,
    write(X1),nl,
    write(X2),
     write("\ndo you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res);
    write("\nyou are not eligible for this specilization\n"),
     write("\ndo you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res).



    select4(mtech,Y1,Y2,Y3):-Y1==y,Y2==y,Y3==y,write("bellow subjects you can choose\n"),
    mtech_ece(mtech,X1,X2,X3,X4),nl,
    write(X1),nl,
    write(X2),nl,
    write(X3),nl,
    write(X4),
     write("\ndo you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res);
    write("\nyou are not eligible for this specilization\n"),
     write("do you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res).
%-----------------------------------------------------------------




checkfor(dsa):-

    dsa_choice1(Y1),
    dsa_choice2(Y2),
    dsa_choice3(Y3),
    dsa(Y1,Y2,Y3).
    dsa(Y1,Y2,Y3):-(Y1==yes,Y2==yes,Y3==yes->
    select4b(btech);
    select4m(mtech)).

    select4b(btech):-
    code_btech(L),
    (show(L);true).



     select4m(mtech):-
    code_mtech(L),
    (show(L);true).



%--------------------------------------



checkfor(algo):-

     algo_math(Y1),
     algo_code(Y2),

     algo(Y1,Y2).
     algo(Y1,Y2):-
   (Y1==yes,Y2==no->
     (    select4ba(btech));
     (   select4ma(mtech))).

    select4ba(btech):-
     btech_ml_subject_dk_la(btech,ml,X1,X2,X3,X4),
    write(X1),nl,
    write(X2),nl,
     write("\ndo you want to explore more ? if yes press  y or press n\n").


     select4ma(mtech):-
    adv_algo_mtech(L),
    (show(L);true).




%--------------------------------------------------



checkfor(bml):-
     write('You MTECH or BTECH student press mtech for mtech press  btech for btech'),nl,
    read(Class),
     write("\n do you know ml if yes press y or press n"),
     read(Y1),

   ( Class==btech,Y1==y->
    select4bmlb(btech);
    select4bmlm(mtech)).

    select4bmlb(btech):-
    mtech_bml(L),
    (show(L);true),
     write("do you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res).


     select4bmlm(mtech):-
    btech_bml(L),
    (show(L);true),
     write("do you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res).
%-----------------------------------------------------------------



checkfor(aomml):-
     write('You MTECH or BTECH student press mtech for mtech press  btech for btech'),nl,
    read(Class),



   ( Class==btech->
      select4aob(btech);
     select4aom(mtech)).

    select4aob(btech):-
    aomml_btech(L),
     (show(L);true),
    write("do you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res).


     select4aom(mtech):-
     aomml_mtech(L),
    (show(L);true),
     write("do you want to explore more ? if yes press  y or press n\n"),
    read(Res),
    response(Res).

% ------------------------------------------------------------------------


response(Res):-Res==y,
    define();
    write("\n--------- thank you-----------\n").




show([H|T]):-

    write(H),
    nl,
    show(T).
