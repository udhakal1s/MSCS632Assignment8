## Building a Family Tree in Prolog
## Umesh Dhakal  
## MSCS632  
## Dr. Jay Thom  
## Assignment 8  

# How to run Prolog

## Tools I Used
1. WSL Ubuntu Terminal
2. SWI-Prolog

## How to Run
- Clone the GitHub repo
- Go to the Source file
- sudo apt update
- sudo apt install -y swi-prolog
- swipl -s MSCS632A8Pro.pl

## Some of the Sample Queries I run, I have more samples in Word docs that I ran. 
1. children_of('Umakant', Kids).
2. siblings_of('Mahesh', Sibs).
3. setof(GC, grandparent('Umakant', GC), Grandkids).
4. cousin('Rajesh', 'Anita').
5. descendants_of('Umakant', AllDesc).

## To Quit Prolog terminal
a. halt.
