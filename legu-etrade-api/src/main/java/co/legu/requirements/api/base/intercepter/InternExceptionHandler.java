package co.legu.requirements.api.base.intercepter;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jingyunbank.core.Result;

@ControllerAdvice(basePackages="com.jingyunbank.etrade")
public class InternExceptionHandler {

	@ExceptionHandler(Exception.class)
	@ResponseBody
	public ResponseEntity<Result<String>> handleException( Exception ex){
		return new ResponseEntity<Result<String>>(Result.fail(ex.getMessage()), HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
