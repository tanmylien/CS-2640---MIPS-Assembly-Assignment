#CS 2640
#10/27/2024
#Project 1: Getting farmiliar with Assembly
#Name: My Lien Tan, Kristopher Walsh
#Goal: To familiarize yourself with different MIPS instructions, syscall services, 
# the MARS environment, and overall practice with Assembly programming

#Task 1: User input and output
#1) Prompt user to enter 2 int values
#2) Output the user inputs back to the user

.data
prompt1: .asciiz "Please enter the first integer: \n"
prompt2: .asciiz "Please enter the second interger: \n"
output1: .asciiz "Your first integer is: \n"
output2: .asciiz "Your second integer is: \n"
addition: .asciiz "The sum of the two values is: \n"
subtraction: .asciiz "The difference between the two values is: \n"
multiplication: .asciiz "The product of the two values is: \n"
division: .asciiz "The quotient of the two values is: \n"
equal_message: .asciiz "User inputs are the same. \n"
different: .asciiz "User inputs are different. \n"

.text
main:
#prompt and read first interger
li $v0, 4
la $a0, prompt1
syscall

#get first integer
li $v0, 5
syscall
move $s0, $v0

#prompt and read second integer
li $v0, 4
la $a0, prompt2
syscall

#get second integer
li $v0, 5
syscall
move $s1, $v0

#print first integer
li $v0, 4
la $a0, output1
syscall

#print first integer
li $v0, 1
move $a0, $s0
syscall

#print a new line for formatting
li $v0, 11
li $a0, 10  
syscall

#print second integer
li $v0, 4
la $a0, output2
syscall

#print second integer
li $v0, 1
move $a0, $s1
syscall

#print a new line for formatting
li $v0, 11
li $a0, 10  
syscall

#Task 2: Arithmetic Operation
#Goal 1) add two valyes
#2) subtract two values
#3) multiply two values
#4) divide two values
#output the results to user

#addition
add $t0, $s0, $s1

#print the prompt "addition"
li $v0, 4 
la $a0, addition
syscall

#print out the value
li $v0, 1
move $a0, $t0
syscall

#print a new line for formatting
li $v0, 11
li $a0, 10  
syscall

#Subtraction
sub $t1, $s0, $s1

#print the prompt "subtraction"
li $v0, 4 
la $a0, subtraction
syscall

#print out the value
li $v0, 1
move $a0, $t1
syscall

#print a new line for formatting
li $v0, 11
li $a0, 10  
syscall

#multiplication
mul $t2, $s0, $s1

#print the prompt "multiplication"
li $v0, 4 
la $a0, multiplication
syscall

#print out the value
li $v0, 1
move $a0, $t2
syscall

#print a new line for formatting
li $v0, 11
li $a0, 10  
syscall

#division
div $t3, $s0, $s1

#print the prompt "division"
li $v0, 4 
la $a0, division
syscall

#print out the value
li $v0, 1
move $a0, $t3
syscall

#print a new line for formatting
li $v0, 11
li $a0, 10  
syscall

#Task 3: Conditions
#Goals: 1) Compare the two inputted numbers from user
#2) Output "User inputs are the same" if two nunbers are the same
#3) Output "User inputs are the same" if two nunbers are different

#branching
beq $s0, $s1, equal

bne $s0, $s1, notequal

#if the two numbers are equal
equal:
li, $v0, 4
la, $a0, equal_message
syscall

#if the two numbers are NOT equal
notequal:
li, $v0, 4
la, $a0, different
syscall
 
#exit the program 
exit:
li $v0, 10
syscall

