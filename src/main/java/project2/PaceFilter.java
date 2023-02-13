package project2;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class PaceFilter extends HttpFilter implements Filter {
       
    public PaceFilter() {
        super();
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		HttpSession session = null;
		if(request instanceof HttpServletRequest) {
			HttpServletRequest req = (HttpServletRequest)request;
			
			
			StringBuffer sb  = req.getRequestURL();
			String url = sb.toString();
			System.out.println("현재위치는 "+url);
			
			if(url.indexOf("/login") != -1
					|| url.indexOf("/join") != -1
					|| url.indexOf("/pacebook") != -1){
				chain.doFilter(request, response);
			} else { //위에 선언한 url주소가 아닌 곳에 갈때 세션 확인
				session = req.getSession(); 
				String logon = (String) session.getAttribute("logon"); //세션에 로그인한 기록이 있으면 진행 없으면 로그인페이지로 리턴
				if("true".equals(logon)) {
					chain.doFilter(request, response);
				} else {
					((HttpServletResponse)response).sendRedirect("/project2/login.jsp");
				}
			}
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
