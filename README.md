# Flex and Bison demonstration

This is a simple demonstration code of lex and yacc. We are building a simple calculator which will be able to evaluate simple arithmatic expressions. 

## How to run?
 In order to build this solution, a makefile is provided in root of the project. The project depends on `gcc`, `flex`, `bison` and `make`. All of them are available at the gnu website.

## For Ubuntu (17.10)
 All the dependencies can be easily installed on ubuntu using apt package manager. Use the following command to install dependencies on Ubuntu.

 `sudo apt install gcc flex bison make`

## For Windows
 For windows download [Cygwin](http://www.cygwin.com) include bison, flex, make and gcc.

## To Build 
  run `make` at the root of the project directory. The output file will be generated in the build folder. Now you can run the `calc` and test it.
