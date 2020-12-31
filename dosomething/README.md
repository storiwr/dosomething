#  How it Works

List any task that comes to mind and it goes in the bin.
Every day you choose 3-5 to accomplish. 
Today list clears at 3:00 AM (eventually customizable) 
Keeps track of how many you complete each day

Eventually:
Random button that chooses 3-5 tasks at random
maybe AI suggestions
Smart repeat tasks. Every x days vs a specific day
Tags and filters
Priority
Helpful nudge for tasks you consistently fail to complete (based on how many times it goes in to today without leaving)
Logic for surfacing older todos for evaluation.
Tomorrow box for planning the future

## Sudo Code -- yeah I know its Psudo 

struct for todo 
- date created 
- number of times added to today
- is complete?
- date completed
- is in today?
- Task name
- memo line

Function for showToday view
- show markedToday== true && isComplete == false

Function for clearToday
when time == 3:15 AM (local time)
 - if markedToday == true 
 - markedToday == false
