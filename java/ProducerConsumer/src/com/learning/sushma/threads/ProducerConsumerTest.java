package com.learning.sushma.threads;

import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public class ProducerConsumerTest {
	public static void main(String[] args) {
		 final Queue<String> queue = new PriorityBlockingQueue<>(5);
		Producer p = new Producer(queue);
		Consumer c = new Consumer(queue);
		
		Thread pt = new Thread(p);
		
		Thread ct = new Thread(c);
		pt.start();

		ct.start();

		
		
	}

}
