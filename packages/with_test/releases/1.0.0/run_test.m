% Test script for with_test package
result = with_test();
assert(strcmp(result, 'with_test 1.0.0 from test-channel1'), ...
    'with_test function returned unexpected result');
fprintf('SUCCESS\n');
