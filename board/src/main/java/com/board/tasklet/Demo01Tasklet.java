 package com.board.tasklet;

import org.apache.log4j.Logger;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;

import lombok.extern.log4j.Log4j;



public class Demo01Tasklet implements Tasklet {
	
	private static Logger log = Logger.getLogger(Demo01Tasklet.class);
	
	public RepeatStatus execute(final StepContribution contribution, final ChunkContext chunkContext) throws Exception {
		
		System.out.println("test.........1");
		log.debug("Demo01Tasklet 시작");
		log.debug("Demo01Tasklet 종료");
		return RepeatStatus.FINISHED;
	}
}