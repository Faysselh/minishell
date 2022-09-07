<div align="center">
  <img src="src/school_42_logo.jpeg" height="128px" alt="badge de 42" >
  <h1>Minishell</h1>
  <p>🚀 As cute as a real shell</p>
  <img src="src/grade.png" alt="grade of the minishell project">
<pr> 
</div>

## 👀 Preview
The existence of shells is intrinsically linked to the existence of computing.
At the time, developers all agreed that communicating with a computer using
a computer using 1/0 switches was highly irritating.
The next logical step was to invent a way to communicate via interactive command lines in a language
interactive command lines in a language that is somewhat similar to human language.
With Minishell, you'll travel back in time and face the problems you might have had
when Windows didn't exist yet.
The goal of this project is to create a minimalist shell.
It will be your own little bash.
You will learn a lot about processes and file descriptors.

![forthebadge](https://forthebadge.com/images/badges/made-with-c-sharp.svg)
![forthebadge](https://forthebadge.com/images/badges/check-it-out.svg)



## 👀 Objectives
- Display a prompt while waiting for a new order.
- Have a working history.
- Find and launch the right executable (based on the PATH environment variable, or on a relative or absolute path).
- Do not use more than one global variable. Think about it because you will have to justify its use.
- Do not interpret unclosed quotes or special characters not requested in the topic, such as the backslash or semicolon.
- Handle ' (single quote) which should prevent the shell from interpreting the metacharacters present in the sequence between quotes.
- Handle ' (double quote) which should prevent the shell from interpreting any metacharacters in the quote sequence except the $ (dollar sign).

- Implement redirects:

  ◦ < must redirect the input.

  ◦ > must redirect the output.

  ◦ << must receive a delimiter and read the given input until it encounters a line containing the delimiter. However, the history does not have to be updated!

  ◦ >> must redirect the output to append mode.


- Implement pipes (| character). The output of each command in the pipeline
is connected to the input of the next command thanks to a pipe.
- Manage environment variables (a $ followed by a sequence of characters)
which must be substituted by their content.
- Manage $? which must be substituted by the exit status of the last pipeline executed in the foreground.
- Manage ctrl-C, ctrl-D and ctrl-\ which must work as in bash.

- In interactive mode:

  ◦ ctrl-C displays a new prompt on a new line. ◦ ctrl-D exits the shell.

  ◦ ctrl-\ does nothing.


- Your shell must implement the following builtins:

  ◦ echo and the -n option

  ◦ cd only with a relative or absolute path ◦ pwd without any option

  ◦ export without any option

  ◦ unset without any option 

  ◦ env without any option or argument

  ◦ exit without any option

The readline() function can cause memory leaks. You don't have to handle them. Be careful, this does not mean that your code, yes the one you wrote, can have memory leaks.

<!--badges : https://badge42.vercel.app-->