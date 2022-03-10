clear;
close all;
clc;

test = 0;
test_number = 100000000;
total_times = 0;

while test < test_number
    random_number = randperm(85, 1);
    random_number_2 = randperm(85, 1);
    if random_number == random_number_2
        total_times = total_times + 1;
    end
    test = test + 1;
end

theorical_probability = (1/85) * (1/84);
practical_probability = total_times / test_number;
percent_error = abs(theorical_probability - practical_probability) / (abs(theorical_probability) * 100);

fprintf('Theorical probability is: %8.13f\n', theorical_probability);
fprintf('Practical probability is: %8.13f\n', practical_probability);
fprintf('Percent error is: %f\n', percent_error);
