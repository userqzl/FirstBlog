package cn.codeaper.fiter;

import jdk.nashorn.internal.ir.RuntimeNode;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * @description: 页面加载过滤器
 * @author: qzl
 * @created: 2020/08/17 21:23
 */
@WebFilter("/index.jsp")
public class indexLoaderFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //访问InitServlet
        servletRequest.getRequestDispatcher("InitServlet").forward(servletRequest,servletResponse);
        //filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
