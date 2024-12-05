function result = myFunction(input)
  try
    if input < 0
      error('Input must be non-negative');
    end
    result = input^2;
  catch exception
    disp(['Error occurred: ', exception.message]);
    result = NaN; % Or handle the error in a more sophisticated way
  end
end

% Example usage that will now trigger a warning message, not halting execution:
input = -5;
result = myFunction(input);

disp(['Result : ', num2str(result)]);