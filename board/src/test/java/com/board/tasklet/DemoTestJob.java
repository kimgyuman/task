package com.board.tasklet;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.test.JobLauncherTestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


//Job예제를 만든 xml 경로 입력
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/com/board/config/demojob.xml" })
public class DemoTestJob {

	@Autowired
	private JobLauncherTestUtils jobLauncherTestUtils;

	@Test
	public void testJob() throws Exception {
    	// job이 정상적으로 끝났는지 확인다.
		final JobExecution jobExecution = jobLauncherTestUtils.launchJob();
        
		Assert.assertEquals(ExitStatus.COMPLETED.getExitCode(), jobExecution.getExitStatus().getExitCode());
	}

}