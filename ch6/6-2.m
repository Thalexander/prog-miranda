>|| Exercise 6.2
>|| Defines a function to take the appropriate action at each possible change in state for traffic_light

> traffic_light ::= Green | Amber | Red | Red_Amber

> action ::= Stop | No_change | Start | Slow_down | Prepare_to_start

> response :: traffic_light -> traffic_light -> action

Takes previous and new traffic light states and returns the action to take in response

> response Green Amber = Slow_down
> response Amber Red = Stop
> response Red Red_Amber = Prepare_to_start
> response Red_Amber Green = Start

> response x x = No_change

If there is no change in the traffic light then no change in action should occur

> response x y = error "response - Invalid traffic light transition"

If the change in states is not matched then it must be an error
