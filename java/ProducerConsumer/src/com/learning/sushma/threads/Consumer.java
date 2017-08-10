package com.learning.sushma.threads;

import java.util.Queue;
import java.util.concurrent.TimeUnit;

public class Consumer implements Runnable {

	private Queue<String> queue;

	public Consumer(Queue<String> queue) {
		// TODO Auto-generated constructor stub
		this.queue = queue;
	}

	@Override
	public void run() {
		while(true)
		{
		//int iCount = 0;
		// TODO Auto-generated method stub
		 String message = queue.poll();
		 System.out.println("Consuming the message: "+message);
		 try {
			TimeUnit.SECONDS.sleep(2);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}

	

}
