# Multi*

## Define the following and give examples of each.

1. Multi-tasking 
    > Multitasking is pretty similar to multiprogramming, but it more broadly refers to
    > the illusion of parallelism given by the CPU's ability to swap out processes in 
    > rapid succession so as to appear as if the processes are running simultaneously.
    > Although multiprogramming and multitasking are both time-sharing mechanisms,
    > multitasking is a more modern approach in that it gives each process in the 
    > running state a small portion of time before it is kicked off the CPU, whereas
    > processes running on multiprogrammed systems continue to run until blocked.
    >
    >Example: Windows 7 and UNIX are both examples of multitasking operating systems.
    
2. Multi-programming
    > Multiprogrammed systems have one or more processes loaded onto main memory and only one process
    > may run on the CPU at a time. The goal is to keep the maximise CPU time and to keep the CPU busy
    > as long as there are processes ready to execute. One main advantage of multiprogramming is that 
    > the CPU can interrupt a process that is awaiting an event to let another process run, and doing
    > so avoids wasted CPU time. One drawback is that it must provide the needed protection to prevent
    > processes from interfering with each other.
    >
    >Example: Figure 2.5 on pg. 57
    
3. Multi-processing
    > Multiprocessing refers to hardware, specifically, it is the use of multiple physical processors
    > or processor cores to run more than one process simultaneously. (pg.72)
    >
    > Example: An Intel i5 2500k quad-core processor being used to run four different processes at once
    
4. Multi-threaded
    > Multithreading divides a process into smaller code segments, or threads, that can then be run 
    > concurrently within the context of that process. Threads can be interrupted so the processor can
    > work on another thread, which results in less process overhead than a major process switch. (pg. 72)
    >
    > Example: A database server that listens for and processes numerous client requests.

# Review Questions from Chapter 3
1. What is an instruction trace?
    > An instruction trace for a process is a listed sequence of instructions that execute for
    > that process. (pg. 111)
    
2. What common events lead to the creation of a process?
    > New batch job, interactive log-on, created by OS to provide a service, spawned by
    > existing process (pg. 114-15)
    
3. What does it mean to preempt a process?
    > Process preemption is what happens whenever a process currently executing is interrupted by the
    > processor so that another process can be executed. (pg. 118-19)
    
4. What is swapping and what is its purpose?
    > Swapping involves moving part or all of a process from main memory to disk.
    > When none of the processes in main memory is in the Ready state, the operating
    > system swaps one of the blocked processes out onto disk into a suspend queue, so
    > that another process may be brought into main memory to execute. (pg.121)
    
5. Why does Figure 3.9b have two blocked states?
    > One state is in main memory, the other one has been suspened, meaning it has been
    > kicked out of main memory and into secondary memory. (pg. 122)
    
6. List four characteristics of a suspended process.
  > 1. The process is not immediately available for execution. 
  > 2. The process may or may not be waiting on an event. If it is, this blocked condition is independent of the suspend condition, and occurrence of the blocking event does not enable the process to be > executed.
  > 3. The process was placed in a suspended state by an agent; either itself, a parent process, or the operating system, for the purpose of preventing its execution. 
  > 4. The process may not be removed from this state until the agent explicitly orders the removal. (pg 124-25)
    
7. List three general categories of information in a process control block.
    > Process identification, processor state information, and process control information. (pg. 129)
    
8. Why are two modes (user and kernel) needed?
    > The user mode needs restrictions on the instructions that can be executed and the
    > memory areas that can be accessed to protect the operating system from
    > damage or alteration. In kernel mode, the operating system does not have these
    > restrictions and the software has complete control of the processor. 
    > Since it is not necessary or even desirable to give the user this amount of control,
    > user and kernal modes are used. (pg. 135)

9. What is the difference between an interrupt and a trap?
    > An interrupt is caused by an event outside of the
    > currently running process, such as the completion of an I/O operation. A trap
    > is an error or exception condition inside of the currently running
    > process, such as an illegal file access attempt. (pg. 137-38)
    
10. Give three examples of an interrupt.
    > Clock interrupt, I/O interrupt, memory fault. (pg. 137)
    
11. What is the difference between a mode switch and a process switch?
    > A mode switch may occur without changing the state of the process that is
    > currently in the Running state. A process switch, however, involves taking the currently
    > executing process out of the Running state so that another process may run. The process
    > switch includes saving and updating the state information and requires more effort than a mode switch. (pg. 139)