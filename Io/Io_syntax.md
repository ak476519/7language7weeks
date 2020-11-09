Character:  
	1. Richly customizable syntax  
	2. Strong concurrency model

Syntax:  
0 is true  
"" println => print  
`While (i <= 11, i println; i = i+1 ); 'message' println`  
`for (i, start, inclusive_end, bump_value, i println);`

`if (condition, true code, false code)`
`if (condition) then(true code) else(false code)`  
check all operators & precedence with `OperatorTable` command

---

[Name] := Object clone => New object, has slot type  
[name] := Object clone => new instance, !have slot type  
:= create & assign, = update  

[Name] slotNames => all slots of an object  
If current obj doesn't have it, Look for slot value at parent  

Method is object, 
[obj] slot := method(call variableName)
invoke this with `method(call target)`  
One can call slot with method: [name] getSlot('') => slot value/code  
```
unless := method(
(call sender doMessage(call message argAt(0))) ifFalse(
call sender doMessage(call message argAt(1))) ifTrue(
call sender doMessage(call message argAt(2)))
)
unless(1 == 2, write("One is not two\n" ), write("one is two\n" ))
```


[obj] proto => prototypes w/ custom slot  
Lobby => all named objects

---
**Lists & Arrays**  
Obj size

Obj := list("", "" )
Obj average, sum, at(index), append(stuff), pop, prepend(stuff), isEmpty()

Obj := Map clone  
Obj atPut("key", "value")  
Obj at('key')  
Obj asObject => list of key-value pairs, asList => list( key list, value list), keys => key list

---

Reflection

e.g. a program to print ancestor hierarchy in regression.
```
Object ancestors := method(
    prototype := self proto
    if(prototype != Object,
    writeln("Slots of " , prototype type, "\n---------------" )
    prototype slotNames foreach(slotName, writeln(slotName))
    writeln
    prototype ancestors))
Animal := Object clone
Animal speak := method("ambiguous animal noise" println)
Duck := Animal clone
Duck speak := method("quack" println)
Duck walk := method("waddle" println)
disco := Duck clone
disco ancestors
```

Code snippet credit to *Seven Languages in Seven Weeks* by Bruce Tate

---

get user input: 
x := File standardInput readLine
x will be user input until user hit 'enter' key;

sourced from [Stack Overflow](https://stackoverflow.com/questions/35370002/io-language-user-input#:~:text=On%20the%20topic%20of%20IRC,net%20and%20the%20%23io%20channel.&text=This%20will%20get%20a%20single,and%20capture%20that%20in%20x%20.)
