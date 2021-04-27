# babuins_traffic
Solution of synchronization problem via semaphores and monitors
# Task
A student majoring in anthropology and minoring in computer science has embarked
on a research project to see if African baboons can be taught about deadlocks. He
locates a deep canyon and fastens a rope across it, so the baboons can cross handover-hand. Several baboons can cross at the same time, provided that they are all
going in the same direction. If eastward-moving and westward-moving baboons ever
get onto the rope at the same time, a deadlock will result (the baboons will get stuck in
the middle) because it is impossible for one baboon to climb over another one while
suspended over the canyon. If a baboon wants to cross the canyon, he must check to
see that no other baboon is currently crossing in the opposite direction. Write a program using semaphores that avoids deadlock. Do not worry about a series of
eastward-moving baboons holding up the westward-moving baboons indefinitely.
```
#<Thread:0x0000000004fb2c60@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, success
#<Thread:0x0000000004fb31d8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, success
#<Thread:0x0000000004fb0b40@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, success
#<Thread:0x0000000004fcea78@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000002817250@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb0d70@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb0fc8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fce1b8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fceb90@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000002817520@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fcf590@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fce3e8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb0e88@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fcd088@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb1b08@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000002827038@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fcda60@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb0668@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000002824108@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fcdd58@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb2468@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb3bb0@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb1798@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fcd948@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb37c8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb2238@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb11f8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fce0a0@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 3 babuins to finish <==
#<Thread:0x0000000004fb10e0@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb2fa8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb1c20@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb2c60@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>finished <==, now <==
#<Thread:0x0000000002816cd8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x00000000028169b8@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb2d78@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb2a30@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fcd600@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 2 babuins to finish <==
#<Thread:0x0000000004fcf450@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 2 babuins to finish <==
#<Thread:0x0000000004fcf158@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:86 run>tried ==>, but now <==, so wait 2 babuins to finish <==
#<Thread:0x0000000004fb19f0@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000004fb2b48@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
#<Thread:0x0000000002824540@C:/Users/Ђавс¬/Desktop/ЋЎгзҐ­ЁҐ/Ћ‘/‹ђ5/Ћ‘5ЊЏ.rb:94 run>tried <==, but now priority waits to go ==>
```
