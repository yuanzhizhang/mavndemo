package Filter;

import javax.servlet.*;
import java.io.IOException;
import java.util.Date;

public class logFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String time = new Date().toString();
        String ip = servletRequest.getRemoteAddr();
        System.out.println(time+"ip："+ip);
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}