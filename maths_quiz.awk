#! /usr/bin/awk -f
BEGIN{                                   # 0<random_value<1
  srand()                                # random value generated is between 0 and 1
  score=0                                # so multiply with any larger number 
  print "plz input your name"            # to get the interger more than zero
  getline name                           # created on 17/09/2018
  print "Hi! " name ". Welcome to maths quiz." "\n" "press enter to play"
};

{
  operators[1]="+"
  operators[2]="-"
  operators[3]="*"
  operators[4]="/"

  random_operator=int(4*rand()+1);
  first_number = int(172*(rand()+1));     
  second_number = int(69*(rand()+1));

  # print first_number
  # print second_number

  print "\n" "---------------" "\n"
  print "what is " first_number operators[random_operator] second_number "?"

  if(random_operator==1){
    operation = first_number + second_number
  }
  if(random_operator==2){
    operation = first_number - second_number
  }
  if(random_operator==3){
    operation = first_number * second_number
  }
  if(random_operator==4){ 
    print "answer quotient only"
    if( second_number > first_number){
      operation = second_number / first number
    } else {
    operation = first_number / second_number
  }

  #print operation
  #print random_operator

  getline answer
  message="OOPS! Try again" "\n" "The correct answer is : " int(operation)

  if(answer==int(operation)){
    message="you are right"
    score = score + 1
  }

  print message 
  print "Your score is " score
  print "Press Enter two times for next question" "\n"
  printf "Enter q to exit: "
  getline variable_quit

  if(variable_quit=="q"){
    print "\n" "------- GAME OVER -------" "\n\n" 
    print "Your final score is : " score "\n"
    exit
  }
}
}
