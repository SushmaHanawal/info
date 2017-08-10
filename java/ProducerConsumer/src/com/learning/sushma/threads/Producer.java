package com.learning.sushma.threads;

import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public class Producer implements Runnable {

	private Queue<String> queue ;

	public Producer(Queue<String> queue) {
		// TODO Auto-generated constructor stub
		this.queue = queue;
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		int iCount = 0;
		while(true)
		{
			String message = "world is beautiful";
			queue.offer("Putting the message: "+message+" "+iCount);
			System.out.println("Producer: Putting the string" + message + " " + iCount);
			iCount++;
			
			
			try{
				TimeUnit.SECONDS.sleep(2);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// executor framework
		
	}



}
