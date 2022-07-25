package com.board.tasklet;


import org.apache.log4j.Logger;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;

public class Demo02Tasklet implements Tasklet {
	
	private static Logger log = Logger.getLogger(Demo02Tasklet.class);
	
	public RepeatStatus execute(final StepContribution contribution, final ChunkContext chunkContext) throws Exception {
		System.out.println("test.........2");
		log.debug("Demo02Tasklet 시작");
		log.debug("Demo02Tasklet 종료");
		return RepeatStatus.FINISHED;
	}
}