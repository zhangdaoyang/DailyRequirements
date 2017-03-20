package co.legu.requirements.api.base.intercepter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
/**
 * <b>该过滤器只应用于开发测试环境，线上环境应当去掉该过滤器！</b>
 */
//@WebFilter("/*")
public class CrossFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("filtered ........................");
		HttpServletResponse hsresponse = (HttpServletResponse) response;
//		hsresponse.setHeader("Access-Control-Allow-Origin", "http://192.168.2.37:9000");
		hsresponse.setHeader("Access-Control-Allow-Origin", "http://localhost:9000");
		hsresponse.setHeader("Access-Control-Allow-Headers", "Content-Type,AUTHUID");
		hsresponse.setHeader("Access-Control-Allow-Methods", "GET,POST,OPTIONS,PUT,DELETE");
		hsresponse.setHeader("Access-Control-Allow-Credentials", "true");
		chain.doFilter(request, hsresponse);
	}

	@Override
	public void destroy() {
		
	}

}
