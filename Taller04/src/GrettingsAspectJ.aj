public aspect GrettingsAspectJ {
	
    // Define a Pointcut is
    // collection of JoinPoint call sayHello of class HelloAspectJDemo.
	long startTime=0;
    pointcut callGretting(): call(* HelloAspectJDemo.greeting()); 
    before() : callGretting() {
    	startTime = System.currentTimeMillis();
        
    }
    after() : callGretting()  {
    	
    	long estimatedTime = System.currentTimeMillis() - startTime;
        System.out.println("\nTiempo estimado: "+estimatedTime);
    }  
}  