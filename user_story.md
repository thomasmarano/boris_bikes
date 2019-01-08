## User Stories

> As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

> As a person,
So that I can use a good bike,
I'd like to see if a bike is working

| Objects | Messages |
| ------- | :------: |
| Person | use_bike, check_bike|
| DockingStation | release_bike |
| Bike | working?|

##### How Objects Communicate with Messages
Person :arrow_right: check_bike :arrow_right: Bike :arrow_right: working? :arrow_right: Person :arrow_right: use_bike :arrow_right: DockingStation :arrow_right: release_bike
