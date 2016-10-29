% Creator:	TuxFuk
% Date:		10-28-2016
% OS:		GNU/Linux
% Distro:	4.4.6-Gentoo
% Editor:	vim-7.4.769







% Program calculates the points awarded to in each category using the student's score in the category and the weight the category has. It then ads the grade from every category and ads them together to find the final grade.





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Homework Section
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% homework grade (homework, projects, and in-class exercises are included in this)
% hw = homework
hw = 0;
hw_weight = 0;
hw_weight_percent = 0;
total_hw = 0;
hw_percent = 0;
total_weighted_hw = 0;
total_percent_hw = 0;


% hw_weight = the weight of the homework to the final grade
hw_weight = 0.30;

%hw_weight_percent = percent form of hw_weight
hw_weight_percent = hw_weight * 100;

% asks the user to input the student's score out of how many points it was worth in a matrice such as (x,y); where x is the score that the student achieved, and y being the maximum points possible on the test.
hw = input('Please input a grade matrice for homework with row1 = earned points, row2 = possible points: \n');

% total_hw = the total grade (points) for the homework category
total_hw = sum(hw,2);

% hw_percent = percentage of the homework category
hw_percent = total_hw(1) ./ total_hw(2);

% total_weighted_hw = the percentage of the homework category that goes towards the final grade
total_weighted_hw = hw_percent * hw_weight;

% total_percent_hw = total_weighted_hw times 100 to make it into a percentage
total_percent_hw = total_weighted_hw * 100;

% tells the user the student's total percent of the homework section
fprintf ('The total percentage for the homework section is %g%% out of: %g%%\n', total_percent_hw, hw_weight_percent);









%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Exam Section
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


em = 0;
em_weight = 0;
em_weight_percent = 0;
total_em = 0;
em_percent = 0;
total_weighted_em = 0;
total_percent_em = 0;


% em_weight = weight of exam section
em_weight = 0.33;

% en_weight_percent = percent form of em_weight
em_weight_percent = em_weight * 100;

% asks the user to input a grade matrice for the exam section
em = input ('Please enter a grade matrice for the exam section with row1 = earned points, and row2 = possible points: \n');

% total_em = total grade ie points for em category
total_em = sum(em,2);

% em_percent = percentage of the em category
em_percent = total_em(1) ./ total_em(2);

% total_weighted_em = the percentage of the exam category that goes towards the final grade
total_weighted_em = em_percent * em_weight;

% total_percent_em = total_weighted_em times 100 to make it be a percentage
total_percent_em = total_weighted_em * 100;

% tells the user what the student's total percent is for the exam section
fprintf ('The total percentage for the exam section is: %g%% out of: %g%%\n', total_percent_em, em_weight_percent);










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Quiz Section 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




qz = 0;
qz_weight = 0;
qz_weight_percent = 0;
total_qz = 0;
qz_percent = 0;
total_weighted_qz = 0;
total_percent_qz = 0;


% qz_weight = weight of the quiz section
qz_weight = 0.20;

% qz_weight_percent = qz_weight in percent form
qz_weight_percent = qz_weight * 100;

% asks the user to input agrade matrice for the quiz section
qz = input ('Please enter a grade matrice for the quiz section with row1 = earned points, and row2 = possible points: \n');

% total_qz = total grade ie points for the qz category
total_qz = sum(qz,2);

% qz_percent = percentage of the qz category
qz_percent = total_qz(1) ./ total_qz(2);

% total_weighted_qz = the percentage of the exam category that goes towards the final grade
total_weighted_qz = qz_percent * qz_weight;

% total_percent_qz = total_weighted_qz times 100 to make it into a percent value
total_percent_qz = total_weighted_qz * 101;

% tells the user what the student's total percent is for the quiz section 
fprintf ('The total percentage for the quiz section is: %g%% out of: %g%%\n', total_percent_qz, qz_weight_percent);









%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Final Exam Section
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




fe = 0;
fe_weight = 0;
fe_weight_percent = 0;
total_fe = 0;
fe_percent = 0;
total_weighted_fe = 0;
total_percent_fe = 0;


% fe_weight = weight of the final exam section
fe_weight = 0.17;

% fe_weight_percent = weight of the final exam section as a percent
fe_weight_percent = fe_weight * 100;

% asks the user to give the program a grade matrice for the final exam section
fe = input ('Please input a grade matrice for the final exam section with row1 = earned points, and row2 = possible points: \n');

% total_fe = total grade ie points for the fe category
total_fe = sum(fe,2);

% fe_percent = percentage of the fe category
fe_percent = total_fe(1) ./ total_fe(2);

% total_weighted_fe = the percentage fo the exam category that goes towards the final grade
total_weighted_fe = fe_percent * fe_weight;

% total_percent_fe = total_weighted_fe times 100 to make it into a percentage
total_percent_fe = total_weighted_fe * 100;

% Tells the user what the student's total percent is for the final exam section
fprintf ('The total percentage for the final exam section is: %g%% out of: %g%%\n ', total_percent_fe, fe_weight_percent);










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Total Grade Section
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




total_grade = 0;
total_percent = 0;

% adds all the total_weighted_(var) grades from each section together to get the final weighted grade
total_grade = total_weighted_hw + total_weighted_em + total_weighted_qz + total_weighted_fe;

% total_percent = changes total_grade into a percentage by multiplying by 100
total_percent = total_grade * 100;

% prints a message to the user stating that this person's final percentage  is x
fprintf ('The total grade for this student in this class is: %g%% out of: 100%%\n', total_percent);






